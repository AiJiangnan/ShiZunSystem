<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<script type="text/javascript" src="/ShiZunSystem/js/jquery.js"></script>
<script type="text/javascript">
var pageSize = 2;
var pageNumber = 0;
var total = 1;

function getAjax(n){
	if(pageNumber<total && n==1)
		pageNumber++;
	else if(pageNumber>1 && n==0)
		pageNumber--;
	else
		return false;
	var name = $("#search").val();
	$.getJSON("/ShiZunSystem/notice/showAll",{"pageSize":pageSize,"pageNumber":pageNumber,"name":name},function(pageInfo){
		var notice = pageInfo.list;
		var result = "";
		var pageNum = "";
		total = pageInfo.total;
		for(var i=0;i<notice.length;i++){
			result += "<tr>";
			result += "<td><input name='del' type='checkbox' value=" + notice[i].name + " /></td>";
			result += "<td>" + notice[i].name + "</td>";
			result += "<td>" + notice[i].remark+ "</td>";
			
			result += "<td width='8%' class='mian_b_icon_01'><a href='/ShiZunSystem/UpdateByname?name=" + notice[i].name + "'>编辑</a></td>";
			result += "<td width='8%' class='mian_b_icon_02'><a href='/ShiZunSystem/showNoticeByName?name=" + notice[i].name+ "'>查看</a></td>";
			result += "</tr>";
		}
		$(".tbody").html(result);
		
		for(var i=0;i<total;i++){
			pageNum += "<a href='javascript:void(0)' class='pageNum'>" + (i+1) + " </a>";
		}
		$(".mian_b1_list").html(pageNum);
		
		$(".pageNum").click(function(){
			pageNumber = $(this).html()-1;
			getAjax(1);
		});
	});
}

$(function(){
	getAjax(1);
	
	$("#pagePre").click(function(){getAjax(0)});
	$("#pageNext").click(function(){getAjax(1)});
	$("#first").click(function(){
		if(pageNumber == 1)
			return false;
		pageNumber = 0;
		getAjax(1);
	});
	$("#last").click(function(){
		if(pageNumber == total	)
			return false;
		pageNumber = total-1;
		getAjax(1);
	});
	$("#sbtn").click(function(){
		pageNumber = 0;
		getAjax(1);
	});
	
	$(":checkbox:eq(0)").change(function(){
		if(!$(this).prop("checked")){
			$(":checkbox").removeAttr("checked");
			return;
		}
		$(":checkbox").attr("checked","checked");
	});
});

function delNoticeClass(){
	if(confirm("你确定要删除选中的公告类型吗？"))
		$('form').submit();
	return false;
}

</script>
<head>
<title>无标题页</title>
<link rel="stylesheet" type="text/css" href="../css/index.css">
<script type="text/javascript" src="/ShiZunSystem/js/jquery.js"></script>
<script type="text/javascript">
	
</script>
</head>
<body class="mian_bj">
	<div class="mian_top_01">
		<div class="mian_top_r"></div>
		<div class="mian_top_l"></div>
		<div class="mian_top_c">
			<ul>
				<li><a href="NoticeClass">
						<p>公告类别</p>
				</a></li>
				<li><a href="Notice">
						<p>公告管理</p>
				</a></li>
				<li><a href="NoticeCount">
						<p>公告统计</p>
				</a></li>
				<li><a href="NoticeShow">
						<p>公告查看</p>
				</a></li>
			</ul>
		</div>
		<div class="mian_b">
			<div class="mian_b1">
				<a href="AddNoticeClass" title="添加"><p class="mian_b1_a1"></p>
				</a>	
				
				<a href="javascript:void(0)" title="删除" onclick="delNoticeClass()"><p class="mian_b1_a2"></p></a>
				<p class="mian_b1_sousuo"><input id="search" type="text"></p>
				<a href="javascript:void(0)" title="搜索" id="sbtn"><p class="mian_b1_a3"></p></a>
				<a href="javascript:void(0)" title="最后" id="last"><p class="mian_b1_a4"></p></a>
				<a href="javascript:void(0)" title="下一页" id="pageNext"><p class="mian_b1_a5"></p></a>
				<p class="mian_b1_list"></p>
				<a href="javascript:void(0)" title="上一页" id="pagePre"><p class="mian_b1_a6"></p></a>
				<a href="javascript:void(0)" title="最前" id="first"><p class="mian_b1_a7"></p></a>
			</div>
			<form action="/ShiZunSystem/delNoticeClass" method="post">
			<table width="100%" border="0" cellpadding="0" cellspacing="0"
				class="mian_b_bg">
				<tr>
					<td width="3%" class="mian_b_bg_lm"><input name=""
						type="checkbox" value="">&nbsp;&nbsp;</td>
					<td width="15%" class="mian_b_bg_lm"><span></span>类别名称</td>
					<td width="35%" class="mian_b_bg_lm"><span></span>类别备注</td>
					<td colspan="2" class="mian_b_bg_lm"><span></span>操作</td>
				</tr>
				
				<tbody class="tbody"></tbody>
				<tr>
					<td width="3%" class="mian_b_bg_lm">&nbsp;&nbsp;</td>
					<td width="15%" class="mian_b_bg_lm"><span></span>类别名称</td>
					<td width="35%" class="mian_b_bg_lm"><span></span>类别备注</td>
					<td colspan="2" class="mian_b_bg_lm"><span></span>操作</td>
				</tr>
			</table>
			</form>
		</div>
	</div>
</body>
</html>
