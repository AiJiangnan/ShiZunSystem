<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@page import="com.mj.ym.mission.pojo.Task" %>
<%@page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<% 
	Task t=(Task)session.getAttribute("task");
  	 Date timefrom=  t.getTimefrom();
  	Date timeto=  t.getTimeto();
  	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	String timefrom1=dateFormat.format(timefrom);
	String timefrom2=dateFormat.format(timeto);

%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>无标题页</title>
<link rel="stylesheet" type="text/css" href="../css/index.css">
<script type="text/javascript" src="/ShiZunSystem/js/jquery.js"></script>
<script type="text/javascript"
	src="/ShiZunSystem/js/My97DatePicker/WdatePicker.js"></script>

<script type="text/javascript">
	$(
			function() {

				$.post("/ShiZunSystem/showDeptByAjax", function(data) {
					for (var i = 0; i < data.length; i++) {
						if (data[i].name == '${task.dname}') {
							$("#dept").append(
									new Option(data[i].name, data[i].id, true,
											true));

							$.post("/ShiZunSystem/showEmpByAjax", {
								"did" : data[i].id
							}, function(emp) {
								for (var i = 0; i < emp.length; i++) {
									if (emp[i].name == '${task.pname}')
										$("#emp").append(
												new Option(emp[i].name,
														emp[i].id, true, true))
									else {
										$("#emp").append(
												new Option(emp[i].name,
														emp[i].id))
									}
								}
							});
						} else {
							$("#dept").append(
									new Option(data[i].name, data[i].id))
						}

					}

				})
				$("#dept").bind(
						"change",
						function() {
							$("#emp").empty()
							$.post("/ShiZunSystem/showEmpByAjax", {
								"did" : $("#dept").val()
							}, function(data) {
								for (var i = 0; i < data.length; i++) {
									$("#emp")
											.append(
													new Option(data[i].name,
															data[i].id))
								}
							})
						})

				$(":radio eq(2)").attr("checked")
			})
</script>
</script>
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
			<table width="100%" border="0" cellpadding="0" cellspacing="0"
				class="mian_b_bg_xz">
				<tr>
					<td width="5%" class="mian_b_bg_lm">&nbsp;</td>
					<td colspan="3" class="mian_b_bg_lm">修改任务</td>
				</tr>
				<form action="/ShiZunSystem/updTaskById?id=${task.id}" method="post"
					enctype="multipart/form-data">
					<tr>
						<td>&nbsp;</td>
						<td width="10%" valign="top">任务标题：</td>
						<td width="60%"><input type="text" class="input_01"
							name="name" id="textfield" value="${task.name}"></td>
						<td width="25%">&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td valign="top">完成时间：</td>
						<td>
							<!--class input_01--> <input type="text" class="Wdate"
							name="timefrom" id="textfield" onclick="WdatePicker()"
							value="<%=timefrom1 %>">——<input
							type="text" class="Wdate" name="timeto" id="text1"
							onclick="WdatePicker()"
							value="<%=timefrom2 %>"> 
						</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td valign="top">执行人员：</td>
						<td><select id="dept">
								<option value="-1">请选择
						</select> &nbsp;&nbsp;<select id="emp" name="pid">

						</select></td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td valign="top">紧急程度：</td>
						<td><input id="Radio1" type="radio" name="level" value="3"
							${task.level eq '3'?"checked":""}> 普通&nbsp;&nbsp; <input
							id="Radio2" type="radio" name="level" value="2"
							${task.level eq '2'?"checked":""}>紧急&nbsp;&nbsp; <input
							id="Radio3" type="radio" name="level" value="1"
							${task.level eq '1'?"checked":""}>非常紧急</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td valign="top">任务内容：</td>
						<td><textarea name="content" cols="30" rows="4">
${task.content }
</textarea></td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td valign="top">附件：</td>
						<!--<td>
继续添加附件.....</td>
<td>&nbsp;</td>
</tr>-->
					<tr>
						<td>&nbsp;</td>
						<td valign="top"></td>
						<td>
							<table width="100%" border="0" cellpadding="0" cellspacing="0"
								class="mian_b_bg_xz">
								<tr>
									<td width="30%"><input id="File1" type="file" name="file"></td>
									<!-- <td><img src="..\images\bnt_07.gif"></td> -->
								</tr>
							</table>
						</td>
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
						</td>
						<td>&nbsp;</td>
					</tr>
				</form>
			</table>
		</div>
	</div>
</body>
</html>
