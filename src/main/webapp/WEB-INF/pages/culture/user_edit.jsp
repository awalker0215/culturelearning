<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>

<html>
<head>
<meta charset="utf-8">
<title>編輯頁面</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="/resources/css/user_index.css" rel="stylesheet"
	type="text/css">
<!--The following script tag downloads a font from the Adobe Edge Web Fonts server for use within the web page. We recommend that you do not modify it.-->
<script>
	var __adobewebfontsappname__ = "dreamweaver"
</script>
<script
	src="http://use.edgefonts.net/montserrat:n4:default;source-sans-pro:n2:default.js"
	type="text/javascript"></script>

<script async defer
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC0YHjxhTqUPSIQtCRRLPsKmYZ8NUmiX00&callback=initMap">
	
</script>
<script type="text/javascript">
	//地圖
	var map;
	var sign = [];
	var index = 0;
	var markers = [];
	function initMap() {
		map = new google.maps.Map(document.getElementById('my_map'), {
			center : {
				lat : 22.9961288,
				lng : 120.2171941
			},
			zoom : 16
		});
		map.addListener('click', function(e) {
			getLatLng(e.latLng, map);
		});
	}
	function setMapOnAll(map) {
		for (var i = 0; i < markers.length; i++) {
			markers[i].setMap(map);
		}
	}
	function getLatLng(latLng, map) {
		setMapOnAll(null);
		marker = [];
		var marker = new google.maps.Marker({
			position : latLng,
			map : map
		});
		markers.push(marker);
		document.getElementById("Lat").value = latLng.lat();
		document.getElementById("Lng").value = latLng.lng();
	}
</script>
</head>

<body>
	<div id="mainWrapper">
		<header>
			<div id="headerLinks">
				登出<br><!-- 登出方法要加上去 --><!-- 登出方法要加上去 --><!-- 登出方法要加上去 --><!-- 登出方法要加上去 --><!-- 登出方法要加上去 --><!-- 登出方法要加上去 --><!-- 登出方法要加上去 --><!-- 登出方法要加上去 --><!-- 登出方法要加上去 --><!-- 登出方法要加上去 --><!-- 登出方法要加上去 -->
			</div>
		</header>
		<section id="offer">
			<h4>name正在編輯這項文件</h4> <!-- 逗點後面要加上使用者的名稱 --><!-- 逗點後面要加上使用者的名稱 --><!-- 逗點後面要加上使用者的名稱 --><!-- 逗點後面要加上使用者的名稱 --><!-- 逗點後面要加上使用者的名稱 --><!-- 逗點後面要加上使用者的名稱 --><!-- 逗點後面要加上使用者的名稱 --><!-- 逗點後面要加上使用者的名稱 -->
		</section>
		<div id="content">

			<section class="mainContent">
				<div class="productRow">
					<form name="addlocationForm" action="addpoint" method="POST">
						<table width="100%" border="0">
							<tr>
									<td>
										  <h3 id="class_ activity">
												<input type="radio" name="class" value="activty"> 活動
											</h3>
											<hr>	
									</td>
									<td>
										<h3>
												<input type="radio" name="class" value="build"> 建築
											</h3>
											<hr>
									</td>
									<td>
										<h3>
												<input type="radio" name="class" value="animal"> 生物
											</h3>
											<hr>
									</td>
								</tr>
							<tr>
								<td colspan="3">
								<div id="my_map"
									style="width: 100%; height: 300px; position: relative; overflow: hidden;"></div></td>
									<!-- 把中心點設在使用者點進來的那個點--><!-- 把中心點設在使用者點進來的那個點--><!-- 把中心點設在使用者點進來的那個點--><!-- 把中心點設在使用者點進來的那個點--><!-- 把中心點設在使用者點進來的那個點--><!-- 把中心點設在使用者點進來的那個點--><!-- 把中心點設在使用者點進來的那個點--><!-- 把中心點設在使用者點進來的那個點--><!-- 把中心點設在使用者點進來的那個點-->
							</tr>
							<tr>
								我再想一下這下面的表格要怎麼切割
							</tr>
							<tr>
										<input id="Lat" name="inLatLngx" type="hidden" size="40"><br>
 										 <input id="Lng" name="inLatLngy" type="hidden" size="40"><br>
										<!--<input type="button" name="button" value="確定" class="setLatLng" align="right">-->
							</tr>
							<tr>
								<td colspan="3" >名稱<input type="text" class="form-control"
									name="classname" placeholder="名稱" size="40"></td>
							</tr>
							<tr>
								<td colspan="3">影片連結<input type="text" class="form-control"
									name="classVideo" placeholder="網址" size="40"></td>
							</tr>
							<tr>
								<td colspan="3"><input type="file" class="upl">
									<div>
										<p contenteditable="true" name="content">
											<input type="text" name="content" value="the point content">
										</p>
										<!--所以這裡不能直接抓取使用者打在<p></p>裡面的資料嗎? 
										是必須要用一個text來抓取使用者輸入的資料?-->
									</div></td>
							</tr>
						</table>
						<td colspan="2"><input id="btn_refirsted" type="submit" name="button"
							value="新增" class="addData"> <input type="hidden"
															   name="${_csrf.parameterName}" value="${_csrf.token}" /></td>
					</form>
				</div>
			</section>

			<footer>
				<div>
					<p>Production team &copy; All Force</p>
				</div>
				<div></div>
			</footer>
		</div>
	</div>
</body>
</html>