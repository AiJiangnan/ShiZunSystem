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

				<p class="mian_b1_sousuo">
					<input name="" type="text">
				</p>
				<a href="#" title="搜索">
					<p class="mian_b1_a3"></p>
				</a><a href="#" title="最后">
					<p class="mian_b1_a4"></p>
				</a><a href="#" title="下一页">
					<p class="mian_b1_a5"></p>
				</a>
				<p class="mian_b1_list">1 2 3 4……</p>
				<a href="#" title="上一页">
					<p class="mian_b1_a6"></p>
				</a><a href="#" title="最前">
					<p class="mian_b1_a7"></p>
				</a>
			</div>
			<table width="100%" border="0" celelpadding="0" cellspacing="0"
				class="mian_b_bg">
				<tr>

					<td width="25%" class="mian_b_bg_lm"><span></span>公告标题</td>
					<td width="11%" class="mian_b_bg_lm"><span></span>浏览人</td>
					<td width="10%" class="mian_b_bg_lm"><span></span>浏览时间</td>
					<td width="10%" class="mian_b_bg_lm"><span></span>浏览次数</td>
					<td class="mian_b_bg_lm"><span></span>操作</td>
				</tr>
			<c:forEach items="${list}" var="noticeCount">
				<tr>

					<td>${noticeCount.name}</td>
					<td>${noticeCount.lookname}</td>
					<td>${noticeCount.date}</td>
					<td><a href="NoticCheckPeople">0</a></td>
					<td width="8%" class="mian_b_icon_01"><a
						href="NoticeShowDetail">查看</a></td>

				</tr>
				</c:forEach>
				<tr>

					<td width="25%" class="mian_b_bg_lm"><span></span>公告标题</td>
					<td width="11%" class="mian_b_bg_lm"><span></span>浏览人</td>
					<td width="10%" class="mian_b_bg_lm"><span></span>浏览时间</td>
					<td width="10%" class="mian_b_bg_lm"><span></span>浏览次数</td>
					<td class="mian_b_bg_lm"><span></span>操作</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>
