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
			<!-- This is the header content. It contains Logo and links -->

			<div id="headerLinks">
				新增資料<br>
			</div>
		</header>
		<section id="offer">
			<!-- The offer section displays a banner text for promotions -->
			<h2>Hi, !</h2>
		</section>
		<div id="content">

			<section class="mainContent">
				<div class="productRow">
					<!-- Each product row contains info of 3 elements -->
					<form name='addlocationForm' action="addpoint" method="POST">
						<table width="100%" border="0">
							<tr>
								<section class="sidebar">
									<!-- This adds a sidebar with 1 searchbox,2 menusets, each with 4 links -->

									<div id="menubar">
										<nav class="menu">

											<h2 id="class_ activity">
												<!-- Title for menuset 1 -->
												<input type="radio" name="class" value="activty"> 活動
											</h2>
											<hr>
										</nav>
										<nav class="menu">
											<h2>
												<!-- Title for menuset 1 -->
												<input type="radio" name="class" value="build"> 建築
											</h2>
											<hr>
										</nav>
										<nav class="menu">
											<h2>
												<!-- Title for menuset 1 -->
												<input type="radio" name="class" value="animal"> 生物
											</h2>
											<hr>
										</nav>
									</div>
								</section>
							</tr>
							<tr>
								<td colspan="1">名稱 <input type="text" class="form-control"
									name="classname" placeholder="名稱" size="40"></td>
							</tr>
							<tr>
							</tr>
							<tr>
								<td colspan="1">座標
									<div>
										Lat︰<input id="Lat" name="inLatLngx" type="text" size="40"><br>
										Lng: <input id="Lng" name="inLatLngy" type="text" size="40"><br>

										<!--<input type="button" name="button" value="確定" class="setLatLng" align="right">-->
									</div>

								</td>
								<td>
									<div id="my_map"
										style="width: 300px; height: 300px; position: relative; overflow: hidden;"></div>
								</td>
							</tr>
							<tr>
								<td colspan="2"><input type="file" class="upl">
									<div>
										<p contenteditable="true">
											<input type="text" name=content value="the point content">
										</p>
									</div></td>
							</tr>
						</table>
						<td colspan='2'><input id="btn_refirsted"
							class="btn_200_40 login-btn" type="submit" name="button"
							value="新增" class="addData"> <input type="hidden"
							name="${_csrf.parameterName}" value="${_csrf.token}" />
					</form>
				</div>
			</section>

			<footer>
				<!-- This is the footer with default 3 divs -->
				<div>
					<p>Production team &copy; All Force</p>
				</div>
				<div></div>
			</footer>
		</div>
	</div>
</body>
</html>
