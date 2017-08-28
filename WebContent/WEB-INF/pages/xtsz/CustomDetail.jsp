<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http//www.w3.org/1999/xhtml">
<head>
<link rel="stylesheet" type="text/css" href="../css/index.css">
<script type="text/javascript" src="/ShiZunSystem/js/jquery.js"></script>
<script type="text/javascript">
	
	$(function(){
		$(".icon").attr("src","../images/" + "${custom.icon }");
	});
	
</script>
</head>
<body class="mian_bj">
	<div class="mian_top_01">
		<div class="mian_top_r"></div>
		<div class="mian_top_l"></div>
		<div class="mian_top_c">
			<ul>
				<li><a href="Branch.html"><p>部门管理</p></a></li>
				<li><a href="EaDoc.html"><p>审批文档流程管理</p></a></li>
				<li><a href="Role.html"><p>角色管理</p></a></li>
				<li><a href="Power.html"><p>权限管理</p></a></li>
				<li><a href="XTCS.html"><p>系统参数设置</p></a></li>
				<li><a href="NormalManage.htm"><p>常规功能管理</p></a></li>
				<li><a href="CustomManage.htm"><p>自定义功能管理</p></a></li>
			</ul>
		</div>
		<div class="mian_b">
			<table width="100%" border="0" cellpadding="0" cellspacing="0" class="mian_b_bg_xz">
				<tr>
					<td width="5%" class="mian_b_bg_lm">&nbsp;</td>
					<td colspan="3" class="mian_b_bg_lm">自定义功能详细</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td width="10%" valign="top">标题：</td>
					<td width="60%">${custom.name }</td>
					<td width="30%">&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td valign="top">url：</td>
					<td><a href="http://${custom.url }" target="_blank">${custom.url }</a></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td valign="top">图标：</td>
					<td><img class="icon"></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td valign="top">备注</td>
					<td>${custom.remark }</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>
						<div align="center">
							<img src="..\images\bnt_05.gif" alt="" width="80" height="22" onclick="javascript:window.history.go(-1);">
						</div>
					</td>
					<td>&nbsp;</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>
