<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript"
	src="/ShiZunSystem/js/My97DatePicker/WdatePicker.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>无标题页</title>
<link rel="stylesheet" type="text/css" href="../css/index.css">
</head>
<body class="mian_bj">
<div class="mian_top_01">
<div class="mian_top_r"></div>
<div class="mian_top_l"></div>
<div class="mian_top_c">
<ul>
<li><a href="Schedule"><p>日程查看</p></a></li>
<li><a href="TaskAllot"><p>任务创建</p></a></li>
<li><a href="TaskShow"><p>任务接受查看</p></a></li>
<li><a href="IssuedTask"><p>任务下发查看</p></a></li>
<li><a href="DelayTaskApply"><p>任务延期申请</p></a></li>
<li><a href="DelayTask"><p>任务延期审批</p></a></li>
<li><a href="MoveTaskApply"><p>任务转移</p></a></li>
<li><a href="MoveTask"><p>任务转移审核</p></a></li>
<li><a href="TaskResult"><p>任务成果提交</p></a></li>
</ul>
</div>
<div class="mian_b">
<form action="/ShiZunSystem/insDelayTask" method="post">
<table width="100%" border="0" cellpadding="0" cellspacing="0" class="mian_b_bg_xz">
<tr>
<td width="5%" class="mian_b_bg_lm">&nbsp;</td>
<td colspan="3" class="mian_b_bg_lm">申请延期</td>
</tr>
<tr>
<td>&nbsp;</td>
<td width="10%" valign="top">转移任务：</td>
<td width="60%">

<select name="tid">
<c:forEach  items="${delaytask}" var="s">
<option value="${s.id }">${s.name}
</c:forEach>
</select>
</td>
<td width="25%">&nbsp;</td>
</tr> 
<tr>
<td>&nbsp;</td>
<td width="10%" valign="top">延期到：</td>
<td width="60%">
<input type="text" class="Wdate" name="timedelay" id="textfield" onclick="WdatePicker()"> </td>
<td width="25%">&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
<td valign="top">申请人：</td>
<td>
${delaytask[0].pname}
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
<td valign="top">申请原因：</td>
<td>
<input type="text" name="reson"></td>
<td>&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>
	<div align="center">
								<input type="submit" value="确定">
								<!--  img src="..\images\bnt_05.gif"-->
								<input type="submit" value="取消返回" talt="" width="80" height="22"
									onclick="javascript:window.history.go(-1);">
							</div>
<td>&nbsp;</td>
</tr>
</table>
</form>
</div>
</div>
</body>
</html>
<script src="/common.js"></script>