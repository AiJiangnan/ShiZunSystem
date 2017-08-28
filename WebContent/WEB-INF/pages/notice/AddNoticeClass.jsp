<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>
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
		<form action="/ShiZunSystem/add" method="post">
			<table width="100%" border="0" cellpadding="0" cellspacing="0"
				class="mian_b_bg_xz">
				<tr>
					<td width="5%" class="mian_b_bg_lm">&nbsp;</td>
					<td colspan="3" class="mian_b_bg_lm">添加公告类别</td>
				</tr>
				
					<tr>
						<td>&nbsp;</td>
						<td width="7%" valign="top">类别名称：</td>
						<td width="60%"><input type="text" name="name" id="textfield">
						</td>
						<td width="25%">&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>

						<td valign="top">类别备注：</td>
						<td width="20%"><input type="text" name="remark"
							id="textfield"></td>
						<td width="25%">&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>
							<div align="center">
								<a href="javascript:void(0)" onclick="$('form').submit()"><img src="..\images\bnt_03.gif" style="margin-right: 10px;" width="80" height="22"></a>
								<a href="NoticeClass"><img src="..\images\bnt_05.gif" alt="" width="80" height="22"></a>
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
