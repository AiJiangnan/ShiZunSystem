<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http//www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http//www.w3.org/1999/xhtml">
<head>
<title>无标题页</title>
<link rel="stylesheet" type="text/css" href="../css/index.css">
	<style type="text/css">
.product_image {
	border: 1px solid
}
</style>
<script type="text/javascript" src="/ShiZunSystem/js/jquery.js"></script>
<script type="text/javascript">
var pageSize = 6;
var pageNumber = 1;
var total = 0;
function getMyPageInfo(){
	var  name= $("#search").val();
	$.post("/ShiZunSystem/picture",{"pageSize":pageSize,"pageNumber":pageNumber,"name":name},function(pageInfo){
		var picture=pageInfo.list;
		var result = "";
		var pageNum = "";
		total=pageInfo.total;
			result +="<tr>";
		for(var i=0;i<picture.length;i++){
			result +="<td align='left'>";
			result +="<table class='product_image' width='180px' align='center' cellpadding='0' cellspacing='0'>";
			result +="<tr><td align='center'><img src='/ShiZunSystem/images/"+picture[i]+"'></td></tr>";
			result +="<tr><td>排序：<input type='text' class='input_04'name='textfield0' id='text5'></td></tr>";
			result +="<tr><td>显示： <input type='radio' name='radio' checked='checked' id='radio13'>是 <input type='radio' name='radio' id='radio14'>否 </td></tr>";
			result +="<tr><td>选择：<input name='picture' type='checkbox' value="+picture[i]+"></td></tr>";
			result +="<tr><td><a href='#'>保存修改</a>&nbsp;&nbsp;&nbsp;&nbsp; <a href='#'>删除</a></td></tr>";
			result +="</table>";
			result +="</td>";
		}
			result +="</tr>"
		$(".tbody").html(result);
		
		for(var i=0;i<total;i++){
			pageNum += "<a href='javascript:void(0)' class='pageNum'>" + (i+1) + " </a>";
		}
		$(".mian_b1_list").html(pageNum);
	});
}
//删除函数	
function delPicture(){
	if($(":checkbox[checked='checked']").length>0){
		if(confirm("你确定要删除选中的码？")){
			$("form:eq(1)").submit();
		}
	}else{
		alert("没有选中任何选项");
	}
}

$(function(){
	getMyPageInfo()
	
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
				<li><a href="LineManage">
						<p>产品系列管理</p>
				</a></li>
				<li><a href="StyleView">
						<p>产品风格管理</p>
				</a></li>
				<li><a href="SpecificationView">
						<p>产品规格管理</p>
				</a></li>
				<li><a href="productManage">
						<p>产品管理</p>
				</a></li>
				<li><a href="ProductDetail">
						<p>产品查看</p>
				</a></li>
				<li><a href="FavoritesView">
						<p>个人收藏夹查看</p>
				</a></li>
				<li><a href="ProductShowMange">
						<p>产品展示管理</p>
				</a></li>
			</ul>
		</div>
		<div class="mian_b">
			<div class="mian_b1">
				<a href="javascript:void(0)" title="删除" onclick="delPicture()"><p class="mian_b1_a2"></p></a>
				<p class="mian_b1_sousuo"><input  id="search" type="text"></p>
				<a href="javascript:void(0)" id="sbtn" title="搜索"><p class="mian_b1_a3"></p></a>
				<a href="javascript:void(0)" title="最后" id="last"><p class="mian_b1_a4"></p></a>
				<a href="javascript:void(0)" title="下一页" id="pageNext"><p class="mian_b1_a5"></p></a>
				<p class="mian_b1_list"></p>
				<a href="javascript:void(0)" title="上一页" id="pagePre"><p class="mian_b1_a6"></p></a>
				<a href="javascript:void(0)" title="最前" id="first"><p class="mian_b1_a7"></p></a>
			</div>
		</div>
		<div class="mian_b">
			<form action="/ShiZunSystem/upload" method="post" enctype="multipart/form-data">
			<table width="100%" border="0" cellpadding="0" cellspacing="0"
				class="mian_b_bg_xz">
				<tr>
					<td width="5%" class="mian_b_bg_lm">&nbsp;</td>
					<td colspan="3" class="mian_b_bg_lm">添加产品图片</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td width="10%" valign="top">排序ID：</td>
					<td width="55%"><input type="text" class="input_04"  id="textfield"></td>
					<td width="35%">&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td valign="top">图片地址：</td>
					<td><input type="file" class="input_01" name="file"></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td valign="top">是否显示：</td>
					<td><input type="radio" name="radio" id="radio21">是 
						<input type="radio" name="radio" id="radio22">否 </td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>
						<div align="center">
							<a href="javascript:void(0)" onclick="$('form:eq(0)').submit();"><img src="..\images\bnt_03.gif" style="margin-right: 10px;" width="80" height="22"></a>
							<img src="..\images\bnt_05.gif" alt="" width="80" height="22" onclick="javascript:history.go(-1);">
						</div>
					</td>
					<td>&nbsp;</td>
				</tr>
			</table>
		</form>
		<form action="/ShiZunSystem/delpicture" method="post" >
			<table width="100%" border="0" cellpadding="0" cellspacing="0"
				class="mian_b_bg_xz">
				<tr>
					<td width="5%" class="mian_b_bg_lm">&nbsp;</td>
					<td class="mian_b_bg_lm">图片库</td>
				</tr>
				<tr>
					<td colspan="2" height="2">&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td valign="top">
						<table width="100%" border="0" cellpadding="4" cellspacing="0">
							<tbody class="tbody"></tbody>
								<td align="left">&nbsp;&nbsp;</td>
								<td align="left">&nbsp;</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td><input type="checkbox">全选&nbsp;&nbsp;
					 		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
						<a href="#"><img src="..\images\bnt_show.jpg"></a>
					</td>
				</tr>
				<tr>
					<td colspan="2"></td>
				</tr>
			</table>
		</form>
		</div>
	</div>
</body>
</html>
