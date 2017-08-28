<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>无标题页</title>
<link rel="stylesheet" type="text/css" href="../css/index.css">
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
			<table width="100%" border="0" cellpadding="0" cellspacing="0"
				class="mian_b_bg_xz">
				<tr>
					<td width="5%" class="mian_b_bg_lm">&nbsp;</td>
					<td colspan="3" class="mian_b_bg_lm">查看产品</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td width="10%" valign="top">型号：</td>
					<td width="35%">${product.no }</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td valign="top">品名：</td>
					<td>${product.name } <a href="ProductImage">查看产品图库</a></td>
					<td rowspan="11" align="left"><img src="..\images\jj_03.jpg"></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td valign="top">类别：</td>
					<td>${product.productClass.name }</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td valign="top">系列：</td>
					<td>${product.productSet.name }</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td valign="top">风格：</td>
					<td>${product.productStyle.name }</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td valign="top">规格：</td>
					<td>${product.productSize.name }</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td valign="top">材质：</td>
					<td>${product.material }</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td valign="top">产地：</td>
					<td>${product.location }</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td valign="top">单价：</td>
					<td>${product.price }</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td valign="top">数量：</td>
					<td>${product.number }</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td valign="top">金额：</td>
					<td>${product.total }</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td valign="top">进口家具在途：</td>
					<td>${product.send==1?"是":"否"}</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td valign="top">备注：</td>
					<td>${product.remark }</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td colspan="2">
						<div align="left">
							<img src="..\images\bnt_08.jpg" alt="" width="80" height="22">
							<img src="..\images\bnt_05.gif" alt="" width="80" height="22" onclick="javascript:history.go(-1);">
						</div>
					</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>
<script src="/common.js"></script>