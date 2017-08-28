<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<script type="text/javascript" src="/ShiZunSystem/js/jquery.js"></script>
<script type="text/javascript">
$(function(){
	$.getJSON("/ShiZunSystem/showNoticeAll",function(data){
			
			var result = "";
			result+="<option>请选择公告类别</option>";
			for(var i=0;i<data.length;i++){
				result += "<option>" + data[i].name + "</option>";
			}
			$("#p").html(result);
			
		});
});
$(function(){
	$.getJSON("/ShiZunSystem/showAllDept",function(data){
		var result="";
		result+="<option>请选择部门</option>";
		for(var i=0;i<data.length;i++){
			result += "<option value=" + data[i].id + ">" + data[i].name + "</option>";
		}
		$("#b").html(result);
	});
	
});

function selEmp(){
	var id = $("#b").val();
	$.getJSON("/ShiZunSystem/selEmpByDid",{"did":id},function(emp){
		var result = "<option>请选择员工</option>";
		for(var i=0;i<emp.length;i++){
			result += "<option value=" + emp[i].id + ">" + emp[i].name + "</option>";
		}
		$("#l").html(result);
	});
}




</script>
<head>
<title>无标题页</title>
<link rel="stylesheet" type="text/css" href="../css/index.css">



</head>
<body class="mian_bj">
	<form action="/ShiZunSystem/UpdateNotice" enctype="multipart/form-data" method="post">
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
			<table width="100%" border="0" cellpadding="0" cellspacing="0"
				class="mian_b_bg_xz">
				<tr>
					<td width="5%" class="mian_b_bg_lm">&nbsp;</td>
					<td colspan="3" class="mian_b_bg_lm">添加公告</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td width="10%" valign="top">公告类別：</td>
					<td>
					<select id="p"></select>
    				</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td width="10%" valign="top">公告标题：</td>
					<td width="55%"><input type="text" name="name" id="textfield" value="${notice.name }"></td>
					<td width="35%">&nbsp;</td>
					<td>
						上传图片<input type="file" name="file" />
					</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td valign="top">有效期：</td>
					<td>
					<input type="text" class="input_01" name="datefrom1"
						id="text1" value="${notice.datefrom}">-<input type="text" class="input_01"
						name="dateto1" id="text2" value="${notice.dateto}">
					</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
						<td>&nbsp;</td>
						<td valign="top">查看人员：</td>
						<td>
							<select id="b" onchange="selEmp()"></select> &nbsp;&nbsp;
							<select id="l"></select>
						</td>
						<td>&nbsp;</td>
					
							
				<tr >
					<td>公告內容</td>
					<td>
						<textarea name="content" rows="9" cols="30">${notice.content}</textarea>
					</td>
				</tr>
				
				
			</table>
		</div>
			<div >
				<a href="javascript:void(0)" onclick="$('form').submit()"><img src="..\images\bnt_03.gif"
					style="margin-right: 10px;" width="60" height="20"></a><img
					src="..\images\bnt_05.gif" alt="" width="80" height="22"
					onclick="javascript:window.history.go(-1);">
			</div>
				
	</form>		
	
</body>
</html>
