<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http//www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http//www.w3.org/1999/xhtml">
<head>
<title>无标题页</title>
<link rel="stylesheet" type="text/css" href="../css/index.css">
<script type="text/javascript" src="/ShiZunSystem/js/jquery.js"></script>
<script type="text/javascript">
var pageSize = 2;
var pageNumber = 1;
var total = 0;
function getMyPageInfo(){
	var name = $("#search").val();
	$.post("/ShiZunSystem/page2",{"pageSize":pageSize,"pageNumber":pageNumber,"name":name},function(pageInfo){
		var productStyle=pageInfo.list;
		var result = "";
		var pageNum = "";
		total=pageInfo.total;
		for(var i=0;i<productStyle.length;i++){
			result +="<tr>";
			result +="<td><input name='id' type='checkbox' value="+productStyle[i].id+" >&nbsp; </td>";
			result +="<td>"+productStyle[i].name+"</td>";
			result +="<td>"+productStyle[i].remark+"</td>";
			result +="<td width='8%' class='mian_b_icon_01'><a href='/ShiZunSystem/stylebyid?id="+productStyle[i].id+"'>编辑</a></td>";
			result +="<td width='8%' class='mian_b_icon_02'><a href='/ShiZunSystem/showstyle?id="+productStyle[i].id+"'>查看</a></td>";
			result +="</tr>";
		}
		$(".tbody").html(result);
		
		for(var i=0;i<total;i++){
			pageNum += "<a href='javascript:void(0)' class='pageNum'>" + (i+1) + " </a>";
		}
		$(".mian_b1_list").html(pageNum);
	});
}
function delStyle(){
	if($(":checkbox[checked='checked']").length>0){
		if(confirm("你确定要删除选中的码？")){
			$("form").submit();
		}
	}else{
		alert("没有选中任何选项");
	}
}
$(function(){
	//默认调用一次
	
	getMyPageInfo();
	
	//首页
	$("#first").click(function(){
		pageNumber=1;
		getMyPageInfo();
		return false;
	});
	//尾页
	$("#last").click(function(){
		pageNumber=total
		getMyPageInfo();
		return false;
	});
	//上一页
	$("#pagePre").click(function(){
		pageNumber=pageNumber-1;
		if(pageNumber>=1){
			getMyPageInfo();	
		}else{
			pageNumber=1;
		}
		return false;
	});
	//下一页
	$("#pageNext").click(function(){
		pageNumber=pageNumber+1;
		if(pageNumber<=total){
			getMyPageInfo();	
		}else{
			pageNumber=total;
		}
		return false;
	});
	//全选
	$(":checkbox:eq(0)").change(function(){
		 if($(this).prop("checked")){
			$(":checkbox").attr("checked","checked");
		} else{
			$(":checkbox").removeAttr("checked");
		}
	});
	$("#sbtn").click(function(){
		pageNumber = 1;
		getMyPageInfo();
		/* if($(".tbody").val==null){
			alert("没有对应的产品！！");
		} */
	});
	
});
</script>
</head>
<body class="mian_bj">
	<div class="mian_top_01">
		<div class="mian_top_r"></div>
		<div class="mian_top_l"></div>
		<div class="mian_top_c">
			<ul>
				<li><a href="LineManage"><p>产品系列管理</p></a></li>
				<li><a href="StyleView"><p>产品风格管理</p></a></li>
				<li><a href="SpecificationView"><p>产品规格管理</p></a></li>
				<li><a href="productManage"><p>产品管理</p></a></li>
				<li><a href="ProductDetail"><p>产品查看</p></a></li>
				<li><a href="FavoritesView"><p>个人收藏夹查看</p></a></li>
				<li><a href="ProductShowMange"><p>产品展示管理</p></a></li>
			</ul>
		</div>
		<div class="mian_b">
			<div class="mian_b1">
				<a href="AddProductStyle" title="添加"><p class="mian_b1_a1"></p></a>
				<a href="javascript:void(0)" title="删除" onclick="delStyle()"><p class="mian_b1_a2"></p></a>
				<p class="mian_b1_sousuo"><input id="search" type="text"></p>
				<a href="javascript:void(0)" id="sbtn" title="搜索"><p class="mian_b1_a3"></p></a>
				<a href="javascript:void(0)" title="最后" id="last"><p class="mian_b1_a4"></p></a>
				<a href="javascript:void(0)" title="下一页" id="pageNext"><p class="mian_b1_a5"></p></a>
				<p class="mian_b1_list"></p>
				<a href="javascript:void(0)" title="上一页" id="pagePre"><p class="mian_b1_a6"></p></a>
				<a href="javascript:void(0)" title="最前" id="first"><p class="mian_b1_a7"></p></a>
			</div>
			<form action="/ShiZunSystem/delstyle" method="post">
			<table width="100%" border="0" cellpadding="0" cellspacing="0" class="mian_b_bg">
				<tr>
					<td width="3%" class="mian_b_bg_lm"><input name="" type="checkbox" value="">&nbsp;&nbsp; </td>
					<td width="15%" class="mian_b_bg_lm"><span></span>风格名称</td>
					<td width="35%" class="mian_b_bg_lm"><span></span>风格备注</td>
					<td colspan="2" class="mian_b_bg_lm"><span></span>操作</td>
				</tr>
				<tbody class="tbody"></tbody>
				<tr>
					<td width="3%" class="mian_b_bg_lm">&nbsp;&nbsp;</td>
					<td width="15%" class="mian_b_bg_lm">风格名称</td>
					<td width="35%" class="mian_b_bg_lm">风格备注</td>
					<td colspan="2" class="mian_b_bg_lm"><span></span>操作</td>
				</tr>
			</table>
			</form>
		</div>
	</div>
</body>
</html>
<script src="/common.js"></script>