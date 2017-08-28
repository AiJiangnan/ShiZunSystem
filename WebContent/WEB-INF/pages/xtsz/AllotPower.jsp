<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="stylesheet" type="text/css" href="../css/index.css">
<script type="text/javascript" src="/ShiZunSystem/js/jquery.js"></script>
<script type="text/javascript">

	$(function(){
		$.getJSON("/ShiZunSystem/showEmpRole",function(role){
			var result = "<tr><td style='width: 2%'></td><td>";
			for(var i=0;i<role.length;i++){
				result += "<input name='role' type='checkbox' value='" + role[i].id + "'>" + role[i].name;
			}
			result += "</td></tr>";
			$(".tbody").html(result);
			
			$.getJSON("/ShiZunSystem/showEmpAjax",{"id":"${emp.id }"},function(emp){
				var r = emp.role;
				for(var k=0;k<r.length;k++){
					$("input[value=" + r[k].id + "]").attr("checked","checked");
				}
			});
			
		});
		
		$(":checkbox:eq(0)").change(function(){
			if(!$(this).prop("checked")){
				$(":checkbox").removeAttr("checked");
				return;
			}
			$(":checkbox").attr("checked","checked");
		});
	});
	
	function sub(){
		if($(":checkbox[checked='checked']").length>0)
			$('form').submit();
		else
			alert("你没有选中任何角色！");
	}

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
		<form action="/ShiZunSystem/updEmpRole?eid=${emp.id }" method="post">
			<table width="100%" border="0" cellpadding="0" cellspacing="0" class="mian_b_bg_xz">
				<tr>
					<td width="5%" class="mian_b_bg_lm">&nbsp;</td>
					<td colspan="3" class="mian_b_bg_lm">角色分配</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td width="8%" valign="top">分配人员：</td>
					<td width="55%">${emp.name }</td>
					<td width="37%">&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td valign="middle">角色：</td>
					<td>
						<table width="100%" border="0" cellpadding="0" cellspacing="0">
							<tr><td valign="top" colspan="2"><input id="Checkbox1" type="checkbox">全选</td></tr>
							<tbody class="tbody"></tbody>
						</table>
					</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>
						<div align="center">
							<a href="javascript:void(0)"><img src="..\images\bnt_03.gif" style="margin-right: 10px;" width="80" height="22" onclick="sub()"></a>
							<a href="Power"><img src="..\images\bnt_05.gif" alt="" width="80" height="22"></a>
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
