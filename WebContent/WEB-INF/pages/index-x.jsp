<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>世尊家具综合管理系统</title>
<script type="text/javascript" src="/ShiZunSystem/js/jquery.js"></script>
<script>
	function fixpng24() {
		var arVersion = navigator.appVersion.split("MSIE");
		var version = parseFloat(arVersion[1]);
		if ((version >= 5.5) && (document.body.filters)) {
			for (var i = 0; i < document.images.length; i++) {
				var img = document.images[i];
				if (img.src.toLowerCase().slice(-3) == "png") {
					var imgID = (img.id) ? "id='" + img.id + "' " : "";
					var imgClass = (img.className) ? "class='" + img.className
							+ "' " : "";
					var imgTitle = (img.title) ? "title='" + img.title + "' "
							: "title='" + img.alt + "' ";
					var imgStyle = "display:inline-block;" + img.style.cssText;
					if (img.align == "left")
						imgStyle = "float:left;" + imgStyle;
					if (img.align == "right")
						imgStyle = "float:right;" + imgStyle;
					if (img.parentElement.href)
						imgStyle = "cursor:pointer;" + imgStyle;
					var strNewHTML = "<span "
							+ imgID
							+ imgClass
							+ imgTitle
							+ " style=\"width:"
							+ img.width
							+ "px; height:"
							+ img.height
							+ "px;"
							+ imgStyle
							+ "filter:progid:DXImageTransform.Microsoft.AlphaImageLoader"
							+ "(src='" + img.src
							+ "', sizingMethod='scale');\"></span>";
					img.outerHTML = strNewHTML;
					i--;
				}
			}
		}
	}
	
	$(function(){
		var result = "";
		$.getJSON("/ShiZunSystem/showCustomAjax",function(custom){
			for(var i=0;i<custom.length;i++)
				result += "<a target='_blank' href='http://" + custom[i].url + "'><img width='120' src='images/" + custom[i].icon + "'></a>";
			$("#custom").html(result);
		});
		
		$.getJSON("/ShiZunSystem/selAllNotice",{"pageSize":100,"pageNumber":1,"name":""},function(pageInfo){
			var notice = pageInfo.list;
			var result = "<dt class='png'><img src='images/index_lm2_36.png'></dt>";
			for(var i=0;i<notice.length;i++){
				result += "<dd><img width='40' src='images/" + notice[i].img + "'><div><span>" + notice[i].name + "</span>：" + notice[i].content + "...</div></dd>";
			}
			$("#notice").html(result);
		});
		
	});
</script>
<link rel="stylesheet" type="text/css" href="css/index.css">
</head>
<body class="index-xbj">
	<div class="logo_index png"><img src="images/logo_03.png"></div>
	<div style="clear: both;"></div>
	<div class="content_001">
		<div class="content_001_r">
			<div class="title_01 png"><img src="images/tt_11.png" alt=""></div>
			<div class="index_icon png" id="custom"></div>
		</div>
		<div class="content_001_l">
			<div class="title_01 png"><img src="images/tt_07.png" alt=""></div>
			<div class="index_Time">
				<dl>
					<dt id="time"></dt>
					<dd id="date"></dd>
				<script>
				function showDate(){
					var date = new Date();
					var year =date.getYear()+1900;
					var month=date.getMonth()+1;
					var day=date.getDate();
					var hours = date.getHours();
					var minutes = date.getMinutes();
					var seconds = date.getSeconds();
					var myWeekDay = date.getDay();
					var weekDay = "";
					if(myWeekDay==0) weekDay = "星期日";
					if(myWeekDay==1) weekDay = "星期一";
					if(myWeekDay==2) weekDay = "星期二";
					if(myWeekDay==3) weekDay = "星期三";
					if(myWeekDay==4) weekDay = "星期四";
					if(myWeekDay==5) weekDay = "星期五";
					if(myWeekDay==6) weekDay = "星期六";
					document.getElementById('date').innerHTML= year + "-" + month + "-" + day + " " + weekDay;
					document.getElementById('time').innerHTML= hours + ":" + minutes + ":" + seconds;
				}
					showDate();
					setInterval("showDate()",1000);
				</script>
				</dl>
			</div>
			<div class="index_l1_t">任务提醒</div>
			<div class="index_l1_b">
				<dl>
					<dt>您当前有0条未完成任务，请注意！</dt>
					<dd>0<dd></dd></dd>
				</dl>
			</div>
			<div class="index_l2">
				<dl id="notice"></dl>
			</div>
		</div>
		<div class="content_001_l1">
			<div class="title_01 png"><img src="images/tt_09.png" alt=""></div>
			<div class="index_icon png">
				<c:forEach items="${emp.menu }" var="menu">
					<c:if test="${menu.display == 1 }">
						<a id="${menu.sort }" href="index_ajn"><img></a>
					</c:if>
				</c:forEach>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$(function(){
			$("#1").children().attr("src","images/icon_10.png");
			$("#2").children().attr("src","images/icon_03.png");
			$("#3").children().attr("src","images/icon_16.png");
			$("#4").children().attr("src","images/icon_17.png");
			$("#5").children().attr("src","images/icon_32.png");
			$("#6").children().attr("src","images/icon_24.png");
			$("#7").children().attr("src","images/icon_25.png");
			$("#8").children().attr("src","images/icon_33.png");
		});
	</script>
</body>
</html>
