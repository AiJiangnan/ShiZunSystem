<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="stylesheet" type="text/css" href="../css/index.css">
<script type="text/javascript" src="/ShiZunSystem/js/jquery.js"></script>
</head>
<body class="mian_bj">
	<div class="mian_top_01">
		<div class="mian_top_r"></div>
		<div class="mian_top_l"></div>
		<div class="mian_top_c">
			<ul>
				<li><a href="Branch"><p>部门管理</p></a></li>
				<li><a href="EaDoc"><p>审批文档流程管理</p></a></li>
				<li><a href="Role"><p>角色管理</p></a></li>
				<li><a href="Power"><p>权限管理</p></a></li>
				<li><a href="XTCS"><p>系统参数设置</p></a></li>
				<li><a href="NormalManage"><p>常规功能管理</p></a></li>
				<li><a href="CustomManage"><p>自定义功能管理</p></a></li>
			</ul>
		</div>
		<div class="mian_b">
			<form action="/ShiZunSystem/editDept?id=${dept.id }" method="post">
				<table width="100%" border="0" cellpadding="0" cellspacing="0" class="mian_b_bg_xz">
					<tr>
						<td width="5%" class="mian_b_bg_lm">&nbsp;</td>
						<td colspan="3" class="mian_b_bg_lm">编辑部门</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td width="7%" valign="top">部门编号：</td>
						<td width="60%"><input type="text" class="input_01" name="no" id="textfield" value="${dept.no }"></td>
						<td width="25%">&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td valign="top">部门名称：</td>
						<td><input type="text" class="input_01" name="name" id="textfield" value="${dept.name }"></td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td valign="top">部门简称：</td>
						<td><input type="text" class="input_01" name="sname" id="textfield" value="${dept.sname }"></td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td valign="top">备注：</td>
						<td><input type="text" class="input_01" name="remark" id="textfield" value="${dept.remark }"></td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>
							<div align="center">
								<a href="javascript:void(0)" onclick="$('form').submit()"><img src="..\images\bnt_03.gif" style="margin-right: 10px;" width="80" height="22"></a>
								<a href="Branch"><img src="..\images\bnt_05.gif" alt="" width="80" height="22"></a>
							</div>
						</td>
						<td>&nbsp;</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
</html>
