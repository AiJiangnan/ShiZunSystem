﻿<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http//www.w3.org/1999/xhtml">
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
		<form action="/ShiZunSystem/editCustom?id=${custom.id }" method="post" enctype="multipart/form-data">
			<table width="100%" border="0" cellpadding="0" cellspacing="0" class="mian_b_bg_xz">
				<tr>
					<td width="5%" class="mian_b_bg_lm">&nbsp;</td>
					<td colspan="4" class="mian_b_bg_lm">编辑自定义功能</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td width="7%" valign="top">标题：</td>
					<td width="30%"><input type="text" class="input_01" name="name" id="textfield" value="${custom.name }"></td>
					<td width="25%" rowspan="3"><img src="" id="picimg"></td>
					<td></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td valign="top">Url：</td>
					<td><input type="text" class="input_01" name="url" id="textfield" value="${custom.url }"></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td valign="top">图标：</td>
					<td><input type="file" name="img" class="icon" value="${custom.icon }"> &nbsp;</td>
					<td></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td valign="top">备注：</td>
					<td colspan="2"><input type="text" class="input_01" name="remark" id="textfield" value="${custom.remark }"></td>
					<td></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td></td>
					<td>
						<div align="center">
							<a href="javascript:void(0);"><img src="..\images\bnt_03.gif" style="margin-right: 10px;" width="80" height="22" onclick="$('form').submit();"></a>
							<a href="CustomManage"><img src="..\images\bnt_05.gif" alt="" width="80" height="22"></a>
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
<script type="text/javascript">
	$(document).ready(function() {
		var parm = getParameter("id");
		if (parm == "2") {
			$("#picimg").hide();
		}
	})

	//接受url参数
	function getParameter(param) {
		var query = window.location.search;
		var iLen = param.length;
		var iStart = query.indexOf(param);
		if (iStart == -1)
			return "";
		iStart += iLen + 1;
		var iEnd = query.indexOf("&", iStart);
		if (iEnd == -1)
			return query.substring(iStart);

		return query.substring(iStart, iEnd);
	}
</script>
