<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="stylesheet" type="text/css" href="../css/index.css">
<script type="text/javascript" src="/ShiZunSystem/js/jquery.js"></script>
<script type="text/javascript">
	
	$(function(){
		$.getJSON("/ShiZunSystem/showMenuByRid",{"rid":'${role.id }'},function(menu){
			var result = "";
			for(var i=0;i<menu.length;i++){
				result += "<tr><td valign='top' colspan='3'><input disabled type='checkbox'>" + menu[i].name + "</td></tr>";
				result += "<tr><td width='3%'>&nbsp;</td><td colspan='2'>";
				for(var j=0;j<menu[i].submenu.length;j++){
					result += "<input disabled type='checkbox'>" + menu[i].submenu[j].name;
				}
				result += "</td></tr>";
			}
			$(".tbody").html(result);
		});
	});
	
</script>
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
		<form action="/ShiZunSystem/editRole?id=${role.id }" method="post">
			<table width="100%" border="0" cellpadding="0" cellspacing="0" class="mian_b_bg_xz">
				<tr>
					<td width="5%" class="mian_b_bg_lm">&nbsp;</td>
					<td colspan="4" class="mian_b_bg_lm">添加角色</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td width="7%" valign="top">角色名称：</td>
					<td width="20%">${role.name }</td>
					<td width="7%">角色排序ID：</td>
					<td width="56%">${role.sid }</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td valign="middle">菜单导航：</td>
					<td colspan="3">
						<table width="100%" border="0" cellpadding="0" cellspacing="0" class="mian_b_bg_xz">
							<tbody class="tbody"></tbody>
						</table>
					</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td valign="middle">备注：</td>
					<td colspan="3">${role.remark }</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td colspan="4">
						<div align="center">
							<a href="Role"><img src="..\images\bnt_05.gif" alt="" width="80" height="22"></a>
						</div>
					</td>
				</tr>
			</table>
		</form>
		</div>
	</div>
</body>
</html>
