<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<html>
<head>
<meta charset="utf-8">
<title>使用者頁面</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="/resources/css/user_index.css" rel="stylesheet"
	type="text/css">
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
				登出<br>
			</div>
		</header>
		<section id="offer">
			<h2>Hi, name!</h2> <!-- 逗點後面要加上使用者的名稱 --><!-- 逗點後面要加上使用者的名稱 --><!-- 逗點後面要加上使用者的名稱 --><!-- 逗點後面要加上使用者的名稱 --><!-- 逗點後面要加上使用者的名稱 --><!-- 逗點後面要加上使用者的名稱 --><!-- 逗點後面要加上使用者的名稱 --><!-- 逗點後面要加上使用者的名稱 -->
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
									<!--地圖說明 -->
									<!-- 使用者可以透過篩選器來查看可以編輯的點(類似index的寫法，只是氣球裡面要多一個"編輯"的link連接到編輯頁面)，但若使用者點到的點是未有資料的點，會跳出氣球顯示"新增"的link連接到空白的編輯頁面，但新增那張地圖的定位中心要在剛剛使用者點下的那個座標點(這個我不確定是否可以做到，但是這是目前我想到最好的方法) -->
							</tr>
							
						</table>
						<td>
						 <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /></td>
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