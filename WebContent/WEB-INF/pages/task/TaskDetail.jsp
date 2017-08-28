<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
<table width="100%" border="0" cellpadding="0" cellspacing="0" class="mian_b_bg_xz">
<tr>
<td width="5%" class="mian_b_bg_lm">&nbsp;</td>
<td colspan="3" class="mian_b_bg_lm">任务详情</td>
</tr>
 
<tr>
<td>&nbsp;</td>
<td width="10%" valign="top">任务标题：</td>
<td width="60%">
${task.name} </td>
<td width="30%">&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
<td valign="top">紧急程度：</td>
<td>
${task.level eq 1? "非常紧急":task.level eq 2?"紧急":"普通"}
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
<td valign="top">执行人员：</td>
<td>
${task.pname }
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
<td valign="top">任务处理时间：</td>
<td>
${task.timefrom }-${task.timeto}
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
<td valign="top">创建时间：</td>
<td>
${task.timefrom }
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
<td valign="top">任务内容：</td>
<td>
${task.content }
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
<td valign="top">任务状态：</td>
<td>
<form action="/ShiZunSystem/updStatus?id=${task.id}" method="post">
<select name="status">
<option  value="0"       ${task.status eq 0?"selected":""} >未完成
<option  value="1"      ${task.status eq 1?"selected":""}>已完成

</select>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
<!--  <td valign="top">完成情况：</td>
<td>
<img src="../images/123.png">
<td>&nbsp;</td>

</td>--></tr>
<tr>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>
<div align="center"><input type="submit" value="确定"><!--  img src="..\images\bnt_05.gif"--> <input  type="submit" value="取消返回" talt="" width="80" height="22" onclick="javascript:window.history.go(-1);"></div></td>
<td>&nbsp;</td>
</tr>

</table>
</form>
</div>
</div>
</body>
</html><script src="/common.js"></script>