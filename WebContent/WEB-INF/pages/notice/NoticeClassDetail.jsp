<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
				<li><a href="NoticeClass.html">
						<p>公告类别</p>
				</a></li>
				<li><a href="Notice.html">
						<p>公告管理</p>
				</a></li>
				<li><a href="NoticeCount.html">
						<p>公告统计</p>
				</a></li>
				<li><a href="NoticeShow.html">
						<p>公告查看</p>
				</a></li> >
			</ul>
		</div>
		<div class="mian_b">
			<table width="100%" border="0" cellpadding="0" cellspacing="0"
				class="mian_b_bg_xz">
				<tr>
					<td width="5%" class="mian_b_bg_lm">&nbsp;</td>
					<td colspan="3" class="mian_b_bg_lm">公告类别详细</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td width="10%" valign="top">类别名称：</td>
					<td width="60%">${noticeClass.name }</td>
					<td width="30%">&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td valign="top">类别备注：</td>
					<td>${noticeClass.remark}</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>
						<div align="center">
							<img src="..\images\bnt_05.gif" alt="" width="80" height="22"
								onclick="javascript:window.history.go(-1);">
						</div>
					</td>
					<td>&nbsp;</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>
