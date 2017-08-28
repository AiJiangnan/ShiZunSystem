<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="stylesheet" type="text/css" href="../css/index.css">
<script type="text/javascript" src="/ShiZunSystem/js/jquery.js"></script>
<script type="text/javascript">
	var pageSize = 2;
	var pageNumber = 0;
	var total = 1;

	function getAjax(n){
		if(pageNumber<total && n==1)
			pageNumber++;
		else if(pageNumber>1 && n==0)
			pageNumber--;
		else
			return false;
		var name = $("#search").val();
		$.getJSON("/ShiZunSystem/showRole",{"pageSize":pageSize,"pageNumber":pageNumber,"name":name},function(pageInfo){
			var role = pageInfo.list;
			var result = "";
			var pageNum = "";
			total = pageInfo.total==0?1:pageInfo.total;
			for(var i=0;i<role.length;i++){
				result += "<tr>";
				result += "<td><input name='del' type='checkbox' value=" + role[i].id + " /></td>";
				result += "<td>" + role[i].name + "</td>";
				result += "<td>" + role[i].sid + "</td>";
				result += "<td>" + role[i].remark + "</td>";
				result += "<td width='8%' class='mian_b_icon_01'><a href='/ShiZunSystem/editRoleById?id=" + role[i].id + "'>分配权限</a></td>";
				result += "<td width='8%' class='mian_b_icon_02'><a href='/ShiZunSystem/showRoleById?id=" + role[i].id + "'>查看</a></td>";
				result += "</tr>";
			}
			$(".tbody").html(result);

			for(var i=0;i<total;i++){
				pageNum += "<a href='javascript:void(0)' class='pageNum'>" + (i+1) + " </a>";
			}
			$(".mian_b1_list").html(pageNum);
			
			$(".pageNum").click(function(){
				pageNumber = $(this).html()-1;
				getAjax(1);
			});
		});
	}

	$(function(){
		getAjax(1);
		
		$("#pagePre").click(function(){getAjax(0)});
		$("#pageNext").click(function(){getAjax(1)});
		$("#first").click(function(){
			if(pageNumber == 1)
				return false;
			pageNumber = 0;
			getAjax(1);
		});
		$("#last").click(function(){
			if(pageNumber == total	)
				return false;
			pageNumber = total-1;
			getAjax(1);
		});
		$("#sbtn").click(function(){
			pageNumber = 0;
			getAjax(1);
		});
		
		$(":checkbox:eq(0)").change(function(){
			if(!$(this).prop("checked")){
				$(":checkbox").removeAttr("checked");
				return;
			}
			$(":checkbox").attr("checked","checked");
		});
	});
	
	function delRole(){
		if($(":checkbox[checked='checked']").length>0){
			if(confirm("你确定要删除选中角色？"))
				$('form').submit();
		}else
			alert("没有选中任何角色！");
		return false;
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
			<div class="mian_b1">
				<a href="AddRole" title="添加"><p class="mian_b1_a1"></p></a>
				<a href="javascript:void(0)" title="删除" onclick="delRole()"><p class="mian_b1_a2"></p></a>
				<p class="mian_b1_sousuo">
					<input id="search" type="text">
				</p>
				<a href="javascript:void(0)" title="搜索" id="sbtn"><p class="mian_b1_a3"></p></a>
				<a href="javascript:void(0)" title="最后" id="last"><p class="mian_b1_a4"></p></a>
				<a href="javascript:void(0)" title="下一页" id="pageNext"><p class="mian_b1_a5"></p></a>
				<p class="mian_b1_list"></p>
				<a href="javascript:void(0)" title="上一页" id="pagePre"><p class="mian_b1_a6"></p></a>
				<a href="javascript:void(0)" title="最前" id="first"><p class="mian_b1_a7"></p></a>
			</div>
			<form action="/ShiZunSystem/delRole" method="post">
				<table width="100%" border="0" cellpadding="0" cellspacing="0"
					class="mian_b_bg">
					<tr>
						<td width="3%" class="mian_b_bg_lm"><input name="" type="checkbox" value="">&nbsp;</td>
						<td width="15%" class="mian_b_bg_lm"><span></span>角色名称</td>
						<td width="11%" class="mian_b_bg_lm"><span></span>排序ID</td>
						<td width="40%" class="mian_b_bg_lm"><span></span>备注</td>
						<td colspan="2" class="mian_b_bg_lm"><span></span>操作</td>
					</tr>
					<tbody class="tbody"></tbody>
					<tr>
						<td width="3%" class="mian_b_bg_lm">&nbsp;</td>
						<td width="15%" class="mian_b_bg_lm"><span></span>角色名称</td>
						<td width="11%" class="mian_b_bg_lm"><span></span>排序ID</td>
						<td width="40%" class="mian_b_bg_lm"><span></span>备注</td>
						<td colspan="2" class="mian_b_bg_lm"><span></span>操作</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
</html>
