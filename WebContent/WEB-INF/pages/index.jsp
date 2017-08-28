<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>世尊家具综合管理系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
	<script type="text/javascript">
		function pr(_id) {
			var select_id = parseInt(_id.replace("xx", ""));
			for (i = 1; i <= 8; i++) {
				if (i == select_id) {
					document.getElementById("xx" + i).className = "x_css";
				} else {
					document.getElementById("xx" + i).className = "y_css";
				}
			}
		}
	</script>
	<script language="javascript" type="text/javascript">
		function show(num) {
			document.getElementById(num).style.display = "block";
		}
		function hidden1(num) {
			document.getElementById(num).style.display = "none";
		}
	</script>
	<script language="javascript" type="text/javascript">
		function r(num) {
			document.getElementById(num).style.display = "block";
		}
		function r_1(num) {
			document.getElementById(num).style.display = "none";
		}
	</script>
	<script language="javascript" type="text/javascript">
		function srcchange(id) {
			if (id == "hr1") {
				document.getElementById("mainFrame").src = "rsxz/Employlee";
				document.getElementById("dTitle").innerHTML = "<img src='images/rensiManage.jpg' alt='' style='margin-top:5px'/>";
				document.getElementById("dTitle").style.display = "block";

			} else if (id == "hr2") {
				document.getElementById("mainFrame").src = "rsxz/RecruiterApply";
				document.getElementById("dTitle").innerHTML = "<img src='images/xingzhengManage.jpg' alt='' style='margin-top:5px'/>";
				document.getElementById("dTitle").style.display = "block";
			} else if (id == "hr3") {
				document.getElementById("mainFrame").src = "rsxz/ExaAppDocument";
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "hr15") {
				document.getElementById("mainFrame").src = "notice/NoticeClass";
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "hr16") {
				document.getElementById("mainFrame").src = "notice/NoticeShow";
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "hr17") {
				document.getElementById("mainFrame").src = "notice/Notice";
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "hr18") {
				document.getElementById("mainFrame").src = "notice/NoticeCount";
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "hr19") {
				document.getElementById("mainFrame").src = "xtsz/XTCS";
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "hr20") {
				document.getElementById("mainFrame").src = "xtsz/Branch";
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "hr21") {
				document.getElementById("mainFrame").src = "xtsz/Role";
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "hr22") {
				document.getElementById("mainFrame").src = "xtsz/Power";
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "hr23") {
				document.getElementById("mainFrame").src = "xtsz/EaDoc";
				document.getElementById("dTitle").style.display = "none";
			}

			else if (id == "hr4") {
				document.getElementById("mainFrame").src = "knowledge/KnowLedgeClass";
				document.getElementById("dTitle").innerHTML = "<img src='images/itemdangan' alt='' style='margin-top:5px'/>";
				document.getElementById("dTitle").style.display = "block";
			} else if (id == "hr5") {

				document.getElementById("mainFrame").src = "knowledge/KnowLedge";
				document.getElementById("dTitle").innerHTML = "<img src='images/itemxinde.jpg' alt='' style='margin-top:5px'/>";
				document.getElementById("dTitle").style.display = "block";
			} else if (id == "hr6") {
				document.getElementById("mainFrame").src = "knowledge/openKnowLedge";
				document.getElementById("dTitle").innerHTML = "<img src='images/picmanager.jpg' alt='' style='margin-top:5px'/>";
				document.getElementById("dTitle").style.display = "block";
			} else if (id == "hr7") {

				document.getElementById("mainFrame").src = "knowledge/ChangjianWenti.htm";
				document.getElementById("dTitle").innerHTML = "<img src='images/question.jpg' alt='' style='margin-top:5px'/>";
				document.getElementById("dTitle").style.display = "block";
			} else if (id == "hr8") {
				document.getElementById("mainFrame").src = "task/Schedule";
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "hr9") {
				document.getElementById("mainFrame").src = "task/TaskAllot";
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "hr10") {
				document.getElementById("mainFrame").src = "task/TaskShow";
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "hr51") {
				document.getElementById("mainFrame").src = "task/IssuedTask";
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "hr11") {
				document.getElementById("mainFrame").src = "task/DelayTaskApply";
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "hr12") {
				document.getElementById("mainFrame").src = "task/DelayTask";
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "hr13") {
				document.getElementById("mainFrame").src = "task/MoveTaskApply";
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "hr14") {
				document.getElementById("mainFrame").src = "task/MoveTask";
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "hr24") {
				document.getElementById("mainFrame").src = "client/OrderManager";
				document.getElementById("dTitle").innerHTML = "<img src='images/orderManage.jpg' alt='' style='margin-top:5px'/>";
				document.getElementById("dTitle").style.display = "block";
			} else if (id == "hr25") {
				document.getElementById("mainFrame").src = "client/ClientManager";
				document.getElementById("dTitle").innerHTML = "<img src='images/clientManage.jpg' alt='' style='margin-top:5px'/>";
				document.getElementById("dTitle").style.display = "block";
			} else if (id == "hr26") {
				document.getElementById("mainFrame").src = "xtsz/NormalManage.htm";
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "hr27") {
				document.getElementById("mainFrame").src = "xtsz/CustomManage.htm";
				document.getElementById("dTitle").style.display = "none";
			}
			else if (id == "hr34") {
				document.getElementById("mainFrame").src = "task/TaskResult";
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "hr35") {
				document.getElementById("mainFrame").src = "item/ItemClass";
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "hr36") {
				document.getElementById("mainFrame").src = "item/Item";
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "hr37") {
				document.getElementById("mainFrame").src = "item/ItemPact";
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "hr38") {
				document.getElementById("mainFrame").src = "item/TaskAllo";
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "hr39") {
				document.getElementById("mainFrame").src = "item/TaskProShow";
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "hr40") {
				document.getElementById("mainFrame").src = "item/TaskProRec";
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "hr41") {
				document.getElementById("mainFrame").src = "item/ItemToFile";
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "hr42") {
				document.getElementById("mainFrame").src = "item/ItemToFileAudit";
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "hr43") {
				document.getElementById("mainFrame").src = "product/LineManage.htm";
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "hr44") {
				document.getElementById("mainFrame").src = "product/StyleView.htm";
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "hr45") {
				document.getElementById("mainFrame").src = "product/SpecificationView.htm";
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "hr46") {
				document.getElementById("mainFrame").src = "product/productManage";
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "hr47") {
				document.getElementById("mainFrame").src = "product/ProductDetail.htm";
				document.getElementById("dTitle").style.display = "none";
			}
			else if (id == "hr49") {
				document.getElementById("mainFrame").src = "product/FavoritesView.htm";
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "hr50") {
				document.getElementById("mainFrame").src = "product/ProductShowMange.htm";
				document.getElementById("dTitle").style.display = "none";
			}
			else if (id == "hr497")//48
			{
				document.getElementById("mainFrame").src = "knowledge/Peixuzhiliao.htm";
				document.getElementById("dTitle").innerHTML = "<img src='images/peixunzhiliao.jpg' alt='' style='margin-top:5px'/>";
				document.getElementById("dTitle").style.display = "block";
			} else if (id == "hr498")//49
			{
				document.getElementById("mainFrame").src = "knowledge/OtherKnowLedge.htm";
				document.getElementById("dTitle").innerHTML = "<img src='images/otherziliao.jpg' alt='' style='margin-top:5px'/>";
				document.getElementById("dTitle").style.display = "block";
			} else if (id == "hr499") {
				document.getElementById("mainFrame").src = "knowledge/gerenzhiliaolist.htm";
				document.getElementById("dTitle").innerHTML = "<img src='images/gereziliao.jpg' alt='' style='margin-top:5px'/>";
				document.getElementById("dTitle").style.display = "block";
			} else if (id == "hr500") {
				document.getElementById("mainFrame").src = "knowledge/AuditKnowLedge";
				document.getElementById("dTitle").innerHTML = "<img src='images/knowledgeshenhe.jpg' alt='' style='margin-top:5px'/>";
				document.getElementById("dTitle").style.display = "block";
			}

		}
		function changeIcon(id) {
			if (id == "HR") {
				document.getElementById("dTitle").innerHTML = "<img src='images/rensiManage.jpg' alt='' style='margin-top:5px'/>";
				document.getElementById("dTitle").style.display = "block";
			} else if (id == "Notice") {
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "KnowLedge") {
				document.getElementById("dTitle").innerHTML = "<img src='images/itemdangan.jpg' alt='' style='margin-top:5px'/>";
				document.getElementById("dTitle").style.display = "block";
			} else if (id == "Task") {
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "Order") {
				document.getElementById("dTitle").innerHTML = "<img src='images/orderManage.jpg' alt='' style='margin-top:5px'/>";
				document.getElementById("dTitle").style.display = "block";
			} else if (id == "Item") {
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "System") {
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "Product") {
				document.getElementById("dTitle").style.display = "none";
			}
		}
	</script>
	<link rel="stylesheet" type="text/css" href="css/index.css">
</head>
<body>
	<div style="width: 1430px; height: 100%;">
		<div class="mian_r" onmousemove="r(22)" onmouseout="r_1(22)">
			<div class="mian_r_bj png" style="display: none;" id="22" onmousemove="r(22)" onmouseout="r_1(22)">
				<div>
					<a href="#"><img src="images\r_icon_03.png"></a>
					<a href="#"><img src="images\r_icon_06.png"></a>
					<a href="#"><img src="images\r_icon_08.png"></a>
					<a href="#"> <img src="images\r_icon_10.png"></a>
				</div>
			</div>
		</div>
		<table height="100%" width="1425" border="0" cellpadding="0" cellspacing="0" style="overflow: hidden;">
			<tr>
				<td colspan="2" height="52">
					<div>
						<div id="header">
							<div class="header01">
								<p class="logo">
									<a href="index-x"> <img src="images/logo_03.gif" alt=""></a>
								</p>
								<p class="right_01" style="position: absolute; z-index: 9; width: e-xpression(this.nextSibling.offsetWidth); height: e-xpression(this.nextSibling.offsetHeight); top: e-xpression(this.nextSibling.offsetTop); left: e-xpression(this.nextSibling.offsetLeft);"
									frameborder="0">
									<img src="images/pic_06.gif" alt="">
								</p>
								<p class="right_02">
									您好，<span>happy</span>，欢迎登录！
								</p>
							</div>
						</div>
					</div>
				</td>
			</tr>
			<tr>
				<td width="190" valign="top"
					style="background: url(images/lift_bj_02.gif) repeat-y;"
					background="images/lift_bj_02.gif ">
					<div class="left_r1" onmousemove="show(1)" onmouseout="hidden1(1)"
						id="1">
						<div class="left_r" onmousemove="show(1)" onmouseout="hidden1(1)">
							<ul>
								<li><a onclick="srcchange('hr1');" style="cursor: hand">人事管理</a></li>
								<li><a onclick="srcchange('hr2');" style="cursor: hand">行政管理</a></li>
							</ul>
						</div>
					</div>
					<div class="left_r1" onmousemove="show(2)" onmouseout="hidden1(2)"
						id="2">
						<div class="left_r" onmousemove="show(2)" onmouseout="hidden1(2)">
							<ul>
								<li><a onclick="srcchange('hr15')" style="cursor: hand">公告类别</a></li>
								<li><a onclick="srcchange('hr17')" style="cursor: hand">公告管理</a></li>
								<li><a onclick="srcchange('hr18')" style="cursor: hand">公告统计</a></li>
								<li><a onclick="srcchange('hr16')" style="cursor: hand">公告查看</a></li>
							</ul>
						</div>
					</div>
					<div class="left_r1" onmousemove="show(3)" onmouseout="hidden1(3)"
						id="3">
						<div class="left_r" onmousemove="show(3)" onmouseout="hidden1(3)">
							<ul>
								<li><a onclick="srcchange('hr4');" style="cursor: hand">项目档案管理</a></li>
								<li><a onclick="srcchange('hr5');" style="cursor: hand">项目心得</a></li>
								<li><a onclick="srcchange('hr6');" style="cursor: hand">图片管理</a></li>
								<li><a onclick="srcchange('hr7');" style="cursor: hand">常见问题</a></li>
								<li><a onclick="srcchange('hr497');" style="cursor: hand">培训资料</a></li>
								<li><a onclick="srcchange('hr498');" style="cursor: hand">其它资料</a></li>
								<li><a onclick="srcchange('hr499');" style="cursor: hand">个人资料</a></li>
								<li><a onclick="srcchange('hr500');" style="cursor: hand">知识审核</a></li>
							</ul>
						</div>
					</div>
					<div class="left_r1" onmousemove="show(4)" onmouseout="hidden1(4)" id="4">
						<div class="left_r" onmousemove="show(4)" onmouseout="hidden1(4)">
							<ul>
								<li><a onclick="srcchange('hr8');" style="cursor: hand">日程查看</a></li>
								<li><a onclick="srcchange('hr9');" style="cursor: hand">任务创建</a></li>
								<li><a onclick="srcchange('hr10');" style="cursor: hand">任务接受查看</a></li>
								<li><a onclick="srcchange('hr51');" style="cursor: hand">任务下发查看</a></li>
								<li><a onclick="srcchange('hr11');" style="cursor: hand">任务延期申请</a></li>
								<li><a onclick="srcchange('hr12');" style="cursor: hand">任务延期审批</a></li>
								<li><a onclick="srcchange('hr13');" style="cursor: hand">任务转移</a></li>
								<li><a onclick="srcchange('hr14');" style="cursor: hand">任务转移审批</a></li>
								<li><a onclick="srcchange('hr34');" style="cursor: hand">任务成果提交</a></li>
							</ul>
						</div>
					</div>
					<div class="left_r1" onmousemove="show(5)" onmouseout="hidden1(5)" id="5">
						<div class="left_r" onmousemove="show(5)" onmouseout="hidden1(5)">
							<ul>
								<li><a onclick="srcchange('hr24');" style="cursor: hand">订单管理</a></li>
								<li><a onclick="srcchange('hr25');" style="cursor: hand">客户管理</a></li>
							</ul>
						</div>
					</div>
					<div class="left_r1" onmousemove="show(6)" onmouseout="hidden1(6)" id="6">
						<div class="left_r" onmousemove="show(6)" onmouseout="hidden1(6)">
							<ul>
								<li><a onclick="srcchange('hr36');" style="cursor: hand">项目信息查看</a></li>
								<li><a onclick="srcchange('hr38');" style="cursor: hand">项目任务分配</a></li>
								<li><a onclick="srcchange('hr39');" style="cursor: hand">项目进度查询</a></li>
								<li><a onclick="srcchange('hr40');" style="cursor: hand">项目进度验收</a></li>
								<li><a onclick="srcchange('hr42');" style="cursor: hand">项目归档审核</a></li>
							</ul>
						</div>
					</div>
					<div class="left_r1" onmousemove="show(7)" onmouseout="hidden1(7)" id="7">
						<div class="left_r" onmousemove="show(7)" onmouseout="hidden1(7)">
							<ul>
								<li>客户订单统计</li>
								<li>客户收款统计</li>
								<li>任务完成度</li>
								<li>项目完成度</li>
							</ul>
						</div>
					</div>
					<div class="left_r1" onmousemove="show(8)" onmouseout="hidden1(8)" id="8">
						<div class="left_r" onmousemove="show(8)" onmouseout="hidden1(8)">
							<ul>
								<li><a onclick="srcchange('hr20')" style="cursor: hand">部门管理</a></li>
								<li><a onclick="srcchange('hr23')" style="cursor: hand">审批文档流程管理</a></li>
								<li><a onclick="srcchange('hr21')" style="cursor: hand">角色管理</a></li>
								<li><a onclick="srcchange('hr22')" style="cursor: hand">权限管理</a></li>
								<li><a onclick="srcchange('hr19')" style="cursor: hand">系统参数设置</a></li>
								<li><a onclick="srcchange('hr26')" style="cursor: hand">常规功能管理</a></li>
								<li><a onclick="srcchange('hr27')" style="cursor: hand">自定义功能管理</a></li>
							</ul>
						</div>
					</div>
					<div class="left_r1" onmousemove="show(9)" onmouseout="hidden1(9)" id="9">
						<div class="left_r" onmousemove="show(9)" onmouseout="hidden1(9)">
							<ul>
								<li><a onclick="srcchange('hr43');" style="cursor: hand">产品系列管理</a></li>
								<li><a onclick="srcchange('hr44')" style="cursor: hand">产品风格管理</a></li>
								<li><a onclick="srcchange('hr45')" style="cursor: hand">产品规格管理</a></li>
								<li><a onclick="srcchange('hr46')" style="cursor: hand">产品管理</a></li>
								<li><a onclick="srcchange('hr47')" style="cursor: hand">产品查看</a></li>
								<li><a onclick="srcchange('hr49')" style="cursor: hand">个人收藏夹查看</a></li>
								<li><a onclick="srcchange('hr50')" style="cursor: hand">产品展示管理</a></li>
							</ul>

						</div>
					</div>
					<div class="side" style="position: absolute;">
						<ul id="nav">
							<li class="y_css" id="xx1" onmouseover="show(1)"
								onmouseout="hidden1(1)"><a href="rsxz/Employlee"
								onclick="changeIcon('HR')" target="mainFrame"
								onmousedown="javascript:pr('xx1')"><span></span>
									<p class="icon_01">人事行政管理</p> </a></li>
							<li class="y_css" id="xx2"><a href="notice/NoticeClass"
								onclick="changeIcon('Notice')" target="mainFrame"
								onmousedown="javascript:pr('xx2')" onmouseover="show(2)"
								onmouseout="hidden1(2)"><span></span>
									<p class="icon_10">系统公告</p> </a></li>
							<li class="y_css" id="xx3"><a
								href="knowledge/KnowLedgeClass" target="mainFrame"
								onclick="changeIcon('KnowLedge')"
								onmousedown="javascript:pr('xx3')" onmouseover="show(3)"
								onmouseout="hidden1(3)"> <span></span>
									<p class="icon_02">知识管理</p></a></li>
							<li class="y_css" id="xx4"><a href="task/Schedule"
								onclick="changeIcon('Task')" target="mainFrame"
								onmousedown="javascript:pr('xx4')" onmouseover="show(4)"
								onmouseout="hidden1(4)"><span></span>
									<p class="icon_04">任务管理</p> </a></li>
							<li class="y_css" id="xx5"><a href="client/OrderManager"
								onclick="changeIcon('Order')" target="mainFrame"
								onmousedown="javascript:pr('xx5')" onmouseover="show(5)"
								onmouseout="hidden1(5)"><span></span>
									<p class="icon_05">销售管理</p> </a></li>
							<li class="y_css" id="xx6"><a href="item/Item"
								onclick="changeIcon('Item')" target="mainFrame"
								onmousedown="javascript:pr('xx6')" onmouseover="show(6)"
								onmouseout="hidden1(6)"><span></span>
									<p class="icon_07">项目管理</p> </a></li>
							<li class="y_css" id="xx7"><a href="#"
								onclick="changeIcon('Count')" target="mainFrame"
								onmousedown="javascript:pr('xx7')" onmouseover="show(7)"
								onmouseout="hidden1(7)"><span></span>
									<p class="icon_11">统计分析</p> </a></li>
							<li class="y_css" id="xx8"><a href="xtsz/Branch"
								onclick="changeIcon('System')" target="mainFrame"
								onmousedown="javascript:pr('xx8')" onmouseover="show(8)"
								onmouseout="hidden1(8)"><span></span>
									<p class="icon_12">系统设置</p> </a></li>
							<li class="y_css" id="xx9"><a href="product/productManage"
								target="mainFrame" onclick="changeIcon('Product')"
								onmousedown="javascript:pr('xx9')" onmouseover="show(9)"
								onmouseout="hidden1(9)"> <span></span>
									<p class="icon_03">产品资料管理</p>
							</a></li>
						</ul>
					</div>
					<div class="side_02">
						<ul>
							<li class="y_css" id="xx10">
								<a href="../zhanshi_web/index.htm" target="_blank">
									<p class="icon_08">产品展示</p>
								</a>
							</li>
						</ul>
					</div>
				</td>
				<td width="1215" valign="top">
					<div id="dTitle" style="float: left; margin-left: 30px;">
						<img src='images/shouye.jpg' alt='' style='margin-top: 5px'>
					</div>
					<div style="text-align: right; margin-right: 15px; float: right">

						<img src="images/middil_05.gif" alt=""><a href="login"><img
								alt="" src="images/middil_06.gif"></a>
					</div> <iframe frameborder="0" style="margin-top: 15px; height: 631px;"
						width="1215" id="mainFrame" name="mainFrame" src="index1"></iframe>
				</td>
				<td width="5" valign="top" style="position: relative;" height="93%">
				</td>
			</tr>
		</table>
	</div>
	<div style="text-align: center;">
		<p>
			来源:<a href="http://www.mycodes.net/" target="_blank">源码之家</a>
		</p>
	</div>
</body>
</html>
