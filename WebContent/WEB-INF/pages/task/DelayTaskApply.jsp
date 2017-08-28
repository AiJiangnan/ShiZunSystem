<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>无标题页</title>
<link rel="stylesheet" type="text/css" href="../css/index.css">
<script type="text/javascript" src="/ShiZunSystem/js/jquery.js"></script>
<script type="text/javascript">
	
	var pageSize = 3;
	var total = 0;
	var pageNumber=1;
	function getAjax(n) {
	
		if(n<=0){
			pageNumber=1;
		}
		else if(n>total&&total!=0){
			pageNumber=total;
		}else{
		
			pageNumber=n;
		}
	
		$.post(
				"/ShiZunSystem/showDelayPage",
						{
							"pageNumber" : pageNumber,
							"pageSize" : pageSize,
							"tname" : $("#tname").val()
						},
						function(data) {
							
							
							var result = "";
							for (var i = 0; i < data.list.length; i++) {
								
								var date = new Date(data.list[i].timedelay);
								var setDate = date.getFullYear()
										+ "-"
										+ ("0" + (date.getMonth() + 1))
												.slice(-2) + "-"
										+ ("0" + date.getDate()).slice(-2);
								var setDate1;
								if(data.list[i].timereply!=null){
									var date1 = new Date(data.list[i].timereply);
									setDate1 = date.getFullYear()
											+ "-"
											+ ("0" + (date1.getMonth() + 1))
													.slice(-2) + "-"
											+ ("0" + date1.getDate()).slice(-2);
								}else{
									 setDate1="";
								}
								var rolename="";
								if(data.list[i].role!=null){
									rolename=data.list[i].role.name;
								}
								result += "<tr>";
								
								result += "<td><input name='del' type='checkbox' value="+data.list[i].id+" /></td>";
								result += "<td>" + data.list[i].emp.name + "</td>";
								result += "<td>" + setDate + "</td>";
								result += "<td>" + data.list[i].reson + "</td>";
								result += "<td>" + cases(data.list[i].status)+"</td>";
								result += "<td>" +setDate1+"</td>";
						
								result += "<td>" + rolename
										+ "</td>";
					
								result+="<td width='8%' class='mian_b_icon_01'><a href='/ShiZunSystem/updTask?id="+data.list[i].tid+"'>编辑</a></td>";
								result+="<td width='8%' class='mian_b_icon_02'><a href='/ShiZunSystem/selTask?id="+data.list[i].tid+"'>查看</a></td>";
								result += "</tr>";
							}
							
							total =data.total;
							var number="";
							for (var i = 1; i <= total; i++) {
								number+="<a href='javascript:void(0)' onclick='getAjax("+ i+")'><font size='1' >"+i+"</font></a>&nbsp;&nbsp;";
							}
						
							$(".mian_b1_list").html(number);
							$("#mytbody").html(result);

						})
	}

	$(function() {
		getAjax(1);
		$("#search").click(function() {
			
			getAjax(1);
			
		});	
		$("#lastpage").click(function(){
			getAjax(total);	
		})
		$("#firstpage").click(function(){
			getAjax(1);
		})
		$("#prepage").click(function(){
			getAjax(pageNumber-1)
		})
		$("#nextpage").click(function(){
			getAjax(pageNumber+1)
		})
		$(":checkbox:eq(0)").click(function(){
			if($(this).attr("checked")=="checked"){
				
			$(":checkbox").attr("checked","checked");
			}
			else{
				$(":checkbox").removeAttr("checked");
			}
			
		})
		
		
	})
	function del(){
		if(confirm("确认要删除吗")){
		
		if($(":checkbox[checked='checked']").length>0)
		{
			$("form").submit();
			
		}else
		alert ("该数据不存在");
		}
	}

	
	function cases(n){
		/* switch(n){
		case 1:return "非常紧急"
		case 2:return "紧急"
		case 3:return "普通"
		} */
		return n==0?"未批复":n==1?"同意":"不同意";
	}
	
</script>
</head>
<body class="mian_bj">
<div class="mian_top_01">
<div class="mian_top_r"></div>
<div class="mian_top_l"></div>
<div class="mian_top_c">
<ul>
<li><a href="Schedule"><p>日程查看</p></a></li>
<li><a href="TaskAllot"><p>任务创建</p></a></li>
<li><a href="TaskShow"><p>任务接受查看</p></a></li>
<li><a href="IssuedTask"><p>任务下发查看</p></a></li>
<li><a href="DelayTaskApply"><p>任务延期申请</p></a></li>
<li><a href="DelayTask"><p>任务延期审批</p></a></li>
<li><a href="MoveTaskApply"><p>任务转移</p></a></li>
<li><a href="MoveTask"><p>任务转移审批</p></a></li>
<li><a href="TaskResult"><p>任务成果提交</p></a></li>
</ul>
</div>
<div class="mian_b">
<div class="mian_b1">
<a href="/ShiZunSystem/addDelayTask" title="添加"><p class="mian_b1_a1"></p></a>
<a href="javascript:void(0)" title="删除" onclick="del()"><p class="mian_b1_a2"></p></a>
<p class="mian_b1_sousuo"><input name="" type="text" id="tname"></p>
<a href="javascript:void(0)" title="搜索" id="search"><p class="mian_b1_a3"></p></a>
<a href="javascript:void(0)" title="最后" id="lastpage"><p class="mian_b1_a4"></p></a>
<a href="javascript:void(0)" title="下一页" id="nextpage"><p class="mian_b1_a5"></p></a>
<p class="mian_b1_list"></p>
<a href="javascript:void(0)" title="上一页" id="prepage"><p class="mian_b1_a6"></p></a>
<a href="javascript:void(0)" title="最前" id="firstpage"><p class="mian_b1_a7"></p></a>
</div>
<table width="100%" border="0" cellpadding="0" cellspacing="0" class="mian_b_bg">
<tr>
<td width="3%" class="mian_b_bg_lm"><input name="" type="checkbox" value="">&nbsp;</td>
<td width="10%" class="mian_b_bg_lm"><span></span>申请人</td>
<td width="10%" class="mian_b_bg_lm"><span></span>延期到(日期)</td>
<td width="25%" class="mian_b_bg_lm"><span></span>申请原因</td>
<td width="10%" class="mian_b_bg_lm"><span></span>批复状态</td>
<td width="10%" class="mian_b_bg_lm"><span></span>批复时间</td>
<td width="10%" class="mian_b_bg_lm"><span></span>批复人</td>
<td colspan="2" class="mian_b_bg_lm"><span></span>操作</td>
</tr>
<tbody id="mytbody">

</tbody>
<!-- <tr>
<td><input name="" type="checkbox" value="">&nbsp;</td>
<td>吴菲菲</td>
<td>2012-3-22</td>
<td>太多了</td>
<td>同意</td>
<td>2012-3-20</td>
<td>总经理</td>
<td width="8%" class="mian_b_icon_01"><a href="AdddelayTask">编辑</a></td>
<td width="8%" class="mian_b_icon_02"><a href="DelayTaskDetail">查看</a></td>
</tr>
 -->
<tr>
<td width="3%" class="mian_b_bg_lm">&nbsp;</td>
<td width="10%" class="mian_b_bg_lm"><span></span>申请人</td>
<td width="10%" class="mian_b_bg_lm"><span></span>延期到(日期)</td>
<td width="25%" class="mian_b_bg_lm"><span></span>申请原因</td>
<td width="10%" class="mian_b_bg_lm"><span></span>批复状态</td>
<td width="10%" class="mian_b_bg_lm"><span></span>批复时间</td>
<td width="10%" class="mian_b_bg_lm"><span></span>批复人</td>
<td colspan="2" class="mian_b_bg_lm"><span></span>操作</td>
</tr>
</table>
</div>
</div>
</body>
</html><script src="/common.js"></script>