<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>世尊家具综合管理系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
	<script type="text/javascript">
		function pr(_id) {
			var select_id = parseInt(_id.replace("xx", ""));
			for (i = 1; i <= 9; i++) {
				if(document.getElementById("xx" + i) != null){
					if (i == select_id) {
							document.getElementById("xx" + i).className = "x_css";
					} else {
						document.getElementById("xx" + i).className = "y_css";
					}
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
			if (id == "hr10" || id == "hr1") {
				document.getElementById("mainFrame").src = "rsxz/Employlee";
				document.getElementById("dTitle").innerHTML = "<img src='images/rensiManage.jpg' alt='' style='margin-top:5px'/>";
				document.getElementById("dTitle").style.display = "block";

			} else if (id == "hr11") {
				document.getElementById("mainFrame").src = "rsxz/RecruiterApply";
				document.getElementById("dTitle").innerHTML = "<img src='images/xingzhengManage.jpg' alt='' style='margin-top:5px'/>";
				document.getElementById("dTitle").style.display = "block";
			} else if (id == "hr3") {
				document.getElementById("mainFrame").src = "rsxz/ExaAppDocument";
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "hr12" || id == "hr2") {
				document.getElementById("mainFrame").src = "notice/NoticeClass";
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "hr15") {
				document.getElementById("mainFrame").src = "notice/NoticeShow";
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "hr13") {
				document.getElementById("mainFrame").src = "notice/Notice";
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "hr14") {//
				document.getElementById("mainFrame").src = "notice/NoticeCount";
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "hr48") {
				document.getElementById("mainFrame").src = "xtsz/XTCS";
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "hr44" || id == "hr8") {
				document.getElementById("mainFrame").src = "xtsz/Branch";
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "hr46") {
				document.getElementById("mainFrame").src = "xtsz/Role";
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "hr47") {
				document.getElementById("mainFrame").src = "xtsz/Power";
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "hr45") {
				document.getElementById("mainFrame").src = "xtsz/EaDoc";
				document.getElementById("dTitle").style.display = "none";
			}

			else if (id == "hr16") {
				document.getElementById("mainFrame").src = "knowledge/KnowLedgeClass";
				document.getElementById("dTitle").innerHTML = "<img src='images/itemdangan' alt='' style='margin-top:5px'/>";
				document.getElementById("dTitle").style.display = "block";
			} else if (id == "hr17") {

				document.getElementById("mainFrame").src = "knowledge/KnowLedge";
				document.getElementById("dTitle").innerHTML = "<img src='images/itemxinde.jpg' alt='' style='margin-top:5px'/>";
				document.getElementById("dTitle").style.display = "block";
			} else if (id == "hr18") {
				document.getElementById("mainFrame").src = "knowledge/openKnowLedge";
				document.getElementById("dTitle").innerHTML = "<img src='images/picmanager.jpg' alt='' style='margin-top:5px'/>";
				document.getElementById("dTitle").style.display = "block";
			} else if (id == "hr19") {

				document.getElementById("mainFrame").src = "knowledge/ChangjianWenti";
				document.getElementById("dTitle").innerHTML = "<img src='images/question.jpg' alt='' style='margin-top:5px'/>";
				document.getElementById("dTitle").style.display = "block";
			} else if (id == "hr24" || id == "hr4") {
				document.getElementById("mainFrame").src = "task/Schedule";
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "hr25") {
				document.getElementById("mainFrame").src = "task/TaskAllot";
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "hr26") {
				document.getElementById("mainFrame").src = "task/TaskShow";
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "hr27") {
				document.getElementById("mainFrame").src = "task/IssuedTask";
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "hr28") {
				document.getElementById("mainFrame").src = "task/DelayTaskApply";
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "hr29") {
				document.getElementById("mainFrame").src = "task/DelayTask";
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "hr30") {
				document.getElementById("mainFrame").src = "task/MoveTaskApply";
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "hr31") {
				document.getElementById("mainFrame").src = "task/MoveTask";
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "hr33" || id == "hr5") {
				document.getElementById("mainFrame").src = "client/OrderManager";
				document.getElementById("dTitle").innerHTML = "<img src='images/orderManage.jpg' alt='' style='margin-top:5px'/>";
				document.getElementById("dTitle").style.display = "block";
			} else if (id == "hr34") {
				document.getElementById("mainFrame").src = "client/ClientManager";
				document.getElementById("dTitle").innerHTML = "<img src='images/clientManage.jpg' alt='' style='margin-top:5px'/>";
				document.getElementById("dTitle").style.display = "block";
			} else if (id == "hr49") {
				document.getElementById("mainFrame").src = "xtsz/NormalManage";
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "hr50") {
				document.getElementById("mainFrame").src = "xtsz/CustomManage";
				document.getElementById("dTitle").style.display = "none";
			}
			else if (id == "hr32") {
				document.getElementById("mainFrame").src = "task/TaskResult";
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "hr35" || id == "hr6") {
				document.getElementById("mainFrame").src = "item/ItemClass";
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "hr35") {
				document.getElementById("mainFrame").src = "item/Item";
				document.getElementById("dTitle").style.display = "none";
			/* } else if (id == "hr37") {//重复
				document.getElementById("mainFrame").src = "item/ItemPact";
				document.getElementById("dTitle").style.display = "none"; */
			} else if (id == "hr36") {
				document.getElementById("mainFrame").src = "item/TaskAllo";
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "hr37") {
				document.getElementById("mainFrame").src = "item/TaskProShow";
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "hr38") {
				document.getElementById("mainFrame").src = "item/TaskProRec";
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "hr41") {
				document.getElementById("mainFrame").src = "item/ItemToFile";
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "hr39") {
				document.getElementById("mainFrame").src = "item/ItemToFileAudit";
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "hr51" || id == "hr9") {
				document.getElementById("mainFrame").src = "product/LineManage";
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "hr52") {
				document.getElementById("mainFrame").src = "product/StyleView";
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "hr53") {
				document.getElementById("mainFrame").src = "product/SpecificationView";
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "hr54") {
				document.getElementById("mainFrame").src = "product/productManage";
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "hr55") {
				document.getElementById("mainFrame").src = "product/ProductDetail";
				document.getElementById("dTitle").style.display = "none";
			}
			else if (id == "hr56") {
				document.getElementById("mainFrame").src = "product/FavoritesView";
				document.getElementById("dTitle").style.display = "none";
			} else if (id == "hr57") {
				document.getElementById("mainFrame").src = "product/ProductShowMange";
				document.getElementById("dTitle").style.display = "none";
			}
			else if (id == "hr20")
			{
				document.getElementById("mainFrame").src = "knowledge/Peixuzhiliao";
				document.getElementById("dTitle").innerHTML = "<img src='images/peixunzhiliao.jpg' alt='' style='margin-top:5px'/>";
				document.getElementById("dTitle").style.display = "block";
			} else if (id == "hr21")
			{
				document.getElementById("mainFrame").src = "knowledge/OtherKnowLedge";
				document.getElementById("dTitle").innerHTML = "<img src='images/otherziliao.jpg' alt='' style='margin-top:5px'/>";
				document.getElementById("dTitle").style.display = "block";
			} else if (id == "hr22") {
				document.getElementById("mainFrame").src = "knowledge/gerenzhiliaolist";
				document.getElementById("dTitle").innerHTML = "<img src='images/gereziliao.jpg' alt='' style='margin-top:5px'/>";
				document.getElementById("dTitle").style.display = "block";
			} else if (id == "hr23") {
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
									您好，<span>${emp.name }</span>，欢迎登录！
								</p>
							</div>
						</div>
					</div>
				</td>
			</tr>
			<tr>
				<td width="190" valign="top" style="background: url(images/lift_bj_02.gif) repeat-y;" background="images/lift_bj_02.gif ">
					<c:forEach items="${emp.menu }" var="menu">
						<div class="left_r1" onmousemove="show(${menu.id})" onmouseout="hidden1(${menu.id})" id="${menu.id}">
							<div class="left_r" onmousemove="show(${menu.id})" onmouseout="hidden1(${menu.id})">
								<ul>
									<c:forEach items="${menu.submenu }" var="submenu">
									<li><a onclick="srcchange('hr${submenu.id}');" style="cursor: hand">${submenu.name}</a></li>
									</c:forEach>
								</ul>
							</div>
						</div>
					</c:forEach>
					<div class="side" style="position: absolute;">
						<ul id="nav">
							<c:forEach items="${emp.menu }" var="menu" varStatus="c">
								<li class="y_css" id="xx${menu.id }" onmouseover="show(${menu.id })" onmouseout="hidden1(${menu.id })">
									<a href="javascript:void(0);" onclick="srcchange('hr${menu.id}');" target="mainFrame" onmousedown="pr('xx${menu.id }')"><span></span>
										<p class="icon_0${menu.id }">${menu.name }</p>
									</a>
								</li>
							</c:forEach>
						</ul>
					</div>
					<div class="side_02">
						<ul>
							<li class="y_css" id="xx10">
								<a href="../zhanshi_web/index" target="_blank">
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
						<img src="images/middil_05.gif" alt="">
						<a href="login"><imgalt="" src="images/middil_06.gif"></a>
					</div>
					<iframe frameborder="0" style="margin-top: 15px; height: 631px;" width="1215" id="mainFrame" name="mainFrame" src="index1"></iframe>
				</td>
				<td width="5" valign="top" style="position: relative;" height="93%">
				</td>
			</tr>
		</table>
	</div>
	<div style="text-align: center;">
		<p>来源:<a href="http://www.mycodes.net/" target="_blank">源码之家</a></p>
	</div>
</body>
</html>
