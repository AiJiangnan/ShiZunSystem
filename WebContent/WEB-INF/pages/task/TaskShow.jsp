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
	
	var pageSize = 4;
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
				"/ShiZunSystem/showTaskPage",
						{
							"pageNumber" : pageNumber,
							"pageSize" : pageSize,
							"tname" : $("#tname").val()
						},
						function(data) {
							var result = "";
							for (var i = 0; i < data.list.length; i++) {
								var date = new Date(data.list[i].timeto);
								var setDate = date.getFullYear()
										+ "-"
										+ ("0" + (date.getMonth() + 1))
												.slice(-2) + "-"
										+ ("0" + date.getDate()).slice(-2);
								var date1=new Date(data.list[i].timefrom);
								var setDate1 = date1.getFullYear()
								+ "-"
								+ ("0" + (date1.getMonth() + 1))
										.slice(-2) + "-"
								+ ("0" + date1.getDate()).slice(-2);
								result += "<tr>";
								result += "<td>" + data.list[i].name + "</td>";
								result += "<td>" +setDate+"</td>";
								result += "<td>" + data.list[i].pname + "</td>";
								result += "<td>" +(data.list[i].status==0?"未完成":"完成")+"</td>";
								result += "<td>" + cases(data.list[i].level)
										+ "</td>";
								result+="<td width='8%' class='mian_b_icon_02'><a href='/ShiZunSystem/selTask?id="+data.list[i].id+"'>查看</a></td>";
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
		function del(){
			
			if(confirm("确认删除数据吗？")){
				
				alert($("tbody:checkbox[checked]").length);
			}
			
		}
	})

	function cases(n){
		/* switch(n){
		case 1:return "非常紧急"
		case 2:return "紧急"
		case 3:return "普通"
		} */
		return n==1?"非常紧急":n==2?"紧急":"普通";
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
<li><a href="MoveTask"><p>任务转移审核</p></a></li>
<li><a href="TaskResult"><p>任务成果提交</p></a></li>
</ul>
</div>
<div class="mian_b">
<div class="mian_b1">
 
 
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
<td width="20%" class="mian_b_bg_lm"><span></span>标题</td>
<td width="12%" class="mian_b_bg_lm"><span></span>截至时间</td>
<td width="12%" class="mian_b_bg_lm"><span></span>执行人员</td>
<td width="8%" class="mian_b_bg_lm"><span></span>状态</td>
<td width="8%" class="mian_b_bg_lm"><span></span>紧急程度</td>
<td class="mian_b_bg_lm"><span></span>操作</td>
<tbody id="mytbody"></tbody>
</tr>
<!--  
<tr>
<td>任务的分配 </td>
<td>2012-3-20</td>
<td>吴菲菲</td>
<td>未完成
</td>
<td>一般</td>

 
<td width="5%" class="mian_b_icon_02"><a href="TaskDetail.jsp">查看</a></td>
</tr>
<tr>
<td>审核任务的分配 </td>
<td>2012-3-20</td>
<td>吴菲菲</td>
<td>未完成
</td>
<td>一般</td>
 
 
<td width="5%" class="mian_b_icon_02"><a href="TaskExAppDoc.jsp">查看</a></td>
</tr>
<tr>
<td>项目任务的分配 </td>
<td>2012-3-20</td>
<td>吴菲菲</td>
<td>未完成
</td>
<td>一般</td>
 
 
<td width="5%" class="mian_b_icon_02"><a href="TaskItemDet.jsp">查看</a></td>
</tr>
 -->

<tr>
<td width="20%" class="mian_b_bg_lm"><span></span>标题</td>
<td width="12%" class="mian_b_bg_lm"><span></span>截至时间</td>
<td width="12%" class="mian_b_bg_lm"><span></span>执行人员</td>
<td width="8%" class="mian_b_bg_lm"><span></span>状态</td>
<td width="8%" class="mian_b_bg_lm"><span></span>紧急程度</td>
<td class="mian_b_bg_lm"><span></span>操作</td>
</tr>
</table>
</div>
</div>
</body>
</html>
<script src="/common.js"></script>