<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http//www.w3.org/1999/xhtml">
<head>
<link rel="stylesheet" type="text/css" href="../css/index.css">
<script type="text/javascript" src="/ShiZunSystem/js/jquery.js"></script>
<script type="text/javascript">
	
	$(function(){
		$.getJSON("/ShiZunSystem/showNormal",function(normal){
			for(var i=0;i<normal.length;i++){
				$($(":text")[i]).val(normal[i].sort);
				if(normal[i].display==1){
					$($(":checkbox")[i]).attr("checked","checked");
				}
				$($(":checkbox")[i]).val(normal[i].id);
			}
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
		<form action="/ShiZunSystem/updNormal" method="post">
			<table width="100%" border="0" cellpadding="0" cellspacing="0" class="mian_b_bg_xz">
				<tr>
					<td width="5%" class="mian_b_bg_lm">&nbsp;</td>
					<td colspan="6" class="mian_b_bg_lm">常规功能管理</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>
						<table>
							<tr><td><img src="..\images\icon_10.png"></td></tr>
							<tr><td>排序：<input name="sort" type="text" class="input_04"></td></tr>
							<tr><td>显示：<input name="display" type="checkbox"></td></tr>
						</table>
					</td>
					<td>
						<table>
							<tr><td><img src="..\images\icon_03.png"></td></tr>
							<tr><td>排序：<input name="sort" type="text" class="input_04"></td></tr>
							<tr><td>显示：<input name="display" type="checkbox"></td></tr>
						</table>
					</td>
					<td>
						<table>
							<tr><td><img src="..\images\icon_16.png"></td></tr>
							<tr><td>排序：<input name="sort" type="text" class="input_04"></td></tr>
							<tr><td>显示：<input name="display" type="checkbox"></td></tr>
						</table>
					</td>
					<td>
						<table>
							<tr><td><img src="..\images\icon_17.png"></td></tr>
							<tr><td>排序：<input name="sort" type="text" class="input_04"></td>
							<tr><td>显示：<input name="display" type="checkbox"></td></tr>
						</table>
					</td>
					<td>
						<table>
							<tr><td><img src="..\images\icon_32.png"></td></tr>
							<tr><td>排序：<input name="sort" type="text" class="input_04"></td></tr>
							<tr><td>显示：<input name="display" type="checkbox"></td></tr>
						</table>
					</td>
					<td>
					<!-- 统计分析 -->
						<table>
							<tr><td><img src="..\images\icon_24.png"></td></tr>
							<tr><td>排序：<input name="sort" type="text" class="input_04"></td></tr>
							<tr><td>显示：<input name="display" type="checkbox"></td></tr>
						</table>
					</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>
					<!-- 系统设置 -->
						<table>
							<tr><td><img src="..\images\icon_25.png" alt=""></td></tr>
							<tr><td>排序：<input name="sort" type="text" class="input_04"></td></tr>
							<tr><td>显示：<input name="display" type="checkbox"></td></tr>
						</table>
					</td>
					<td>
					<!-- 产品资料管理 -->
						<table>
							<tr><td><img src="..\images\icon_33.png"></td></tr>
							<tr><td>排序：<input name="sort" type="text" class="input_04"></td></tr>
							<tr><td>显示：<input name="display" type="checkbox"></td></tr>
						</table>
					</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td colspan="6">*注：前8项显示</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td colspan="6">
						<div align="center">
							<a href="javascript:void(0);" onclick="$('form').submit();"><img src="..\images\bnt_03.gif" style="margin-right: 10px;" width="80" height="22"></a>
							<a onclick="window.history.go(-1)"><img src="..\images\bnt_05.gif" alt="" width="80" height="22"></a>
						</div>
					</td>
				</tr>
			</table>
		</form>
		</div>
	</div>
</body>
</html>
