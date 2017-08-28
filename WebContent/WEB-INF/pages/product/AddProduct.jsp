<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>无标题页</title>
<link rel="stylesheet" type="text/css" href="../css/index.css">
<script type="text/javascript" src="/ShiZunSystem/js/jquery.js"></script>
<script type="text/javascript">
$(function(){
	$.post("/ShiZunSystem/setall",function(set){
		var result = "<option value='-1'>请选择类别</option>";
		for(var i=0;i<set.length;i++){
			result +="<option value='"+set[i].id+"'>"+set[i].name+"</option>" 
		}
		$("#xid").html(result)
	});
	$.post("/ShiZunSystem/styleall",function(style){
		var result = "<option value='-1'>请选择类别</option>";
		for(var i=0;i<style.length;i++){
			result +="<option value='"+style[i].id+"'>"+style[i].name+"</option>" 
		}
		$("#sid").html(result)
	});
	$.post("/ShiZunSystem/sizeall",function(size){
		var result = "<option value='-1'>请选择类别</option>";
		for(var i=0;i<size.length;i++){
			result +="<option value='"+size[i].id+"'>"+size[i].name+"</option>" 
		}
		$("#zid").html(result)
	});
	
	$.post("/ShiZunSystem/classall",function(classes){
		var result = "<option value='-1'>请选择类别</option>";
		for(var i=0;i<classes.length;i++){
			result +="<option value='"+classes[i].id+"'>"+classes[i].name+"</option>" 
		}
		$("#cid").html(result)
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
		 <form action="/ShiZunSystem/addproduct" method="post">
			<table width="100%" border="0" cellpadding="0" cellspacing="0"
				class="mian_b_bg_xz">
				<tr>
					<td width="5%" class="mian_b_bg_lm">&nbsp;</td>
					<td colspan="4" class="mian_b_bg_lm">添加产品</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td width="10%" valign="top">型号：</td>
					<td width="30%"><input type="text" class="input_01" name="no" id="textfield"></td>
					<td width="40%">&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td valign="top">品名：</td>
					<td><input type="text" class="input_01" name="name" id="text1"> 
					<a href="ProductImage">查看产品图库</a></td>
					<td rowspan="10"><img src="/ShiZunSystem/images/${filename }" ></td>
					<td><input type="hidden" name="picture" value="${filename }" /></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td valign="top">类别：</td>
					<td><select name="cid" id="cid">
							
					</select></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td valign="top">系列：</td>
					<td><select name="xid" id="xid">
							<option value="-1">请选择系列</option>
							
					</select></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td valign="top">风格：</td>
					<td><select name="sid" id="sid">
							<option value="-1">请选择风格</option>
						
					</select></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td valign="top">规格：</td>
					<td><select name="zid" id="zid">
							<option value="-1">请选择风格</option>
					</select></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td valign="top">材质：</td>
					<td><select name=material>
							<option value="-1">请选择材质</option>
							<option >大理石</option>
							<option >五金件</option>
							<option >木饰面</option>
							<option >油漆</option>
							<option >牛皮</option>
							<option >金丝楠木</option>
							<option >外星陨石</option>
							<option >万年玄铁</option>
							<option >其他</option>
					</select></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td valign="top">产地：</td>
					<td><input type="text" class="input_01" name="location" id="text2"></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td valign="top">单价：</td>
					<td><input type="text" class="input_01" name="price" id="text3"></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td valign="top">数量：</td>
					<td><input type="text" class="input_01" name="number" id="text4"></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td valign="top">金额：</td>
					<td><input type="text" class="input_01" name="total" id="text5"></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td valign="top">进口家具在途：</td>
					<td><input type="text" class="input_01" name="send" id="text6"></td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td valign="top">备注：</td>
					<td><input type="text" class="input_01" name="remark" id="textfield" ></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>
						<div align="center">
							<a href="javascript:void(0)" onclick="$('form').submit()"><img src="..\images\bnt_03.gif" style="margin-right: 10px;" width="80" height="22"></a>
							<img src="..\images\bnt_05.gif" alt="" width="80" height="22 onclick="javascript:history.go(-1);">
						</div>
					</td>
					<td></td>
					<td>&nbsp;</td>
				</tr>
			</table>
			</form>
		</div>
	</div>
</body>
</html>
