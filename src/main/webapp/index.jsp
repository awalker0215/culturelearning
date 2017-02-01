<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"  
    pageEncoding="UTF-8"%>  

<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="/resources/css/reception.css" rel="stylesheet" type="text/css">
<title>GoogleMap</title>
<style type="text/css"> </style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body class="mybody">
<div class="top_div">
<sec:authorize access="!hasRole('ROLE_USER') and !hasRole('ROLE_ADMIN')">
	<a align="right" href="/culture/login">【登入/註冊】</a>
</sec:authorize>
<sec:authorize access="hasRole('ROLE_ADMIN')">
	<a align="right" href="javascript:formSubmit()">【登出】</a>
</sec:authorize>
	<a align="right" href="/culture/userdata">【我的資料】</a>
</div>
<div class="container">
		<div class="primary_header">
			<h1 class="title">首頁</h1>
		</div>	
		<div height=30px>
			<form>
			  <table width="100%" border="0" cellpadding="1">
				  <tbody>
					<tr>
					  <td align="center" valign="center">
					 
					  	  <div class="[ form-group ]">
			           <input type="checkbox" value="1" name="class_1" id="fancy-checkbox-activity" autocomplete="off" />
			            <div class="[ btn-group ]">
			                <label for="fancy-checkbox-activity" class="[ btn btn-primary ]">
			                    <span class="[ glyphicon glyphicon-ok ]"></span>
			                    <span> </span>
			                </label>
			                <label for="fancy-checkbox-activity" class="[ btn btn-default active ]">
			                 	   活動
			                </label>
			            </div>
			           
			        </div>
					  </td>
					  <td align="center" valign="center">
					  	                <div class="[ form-group ]">
				           <input type="checkbox" value="2" name="class_2" id="fancy-checkbox-build" autocomplete="off" />
				            <div class="[ btn-group ]">
				                <label for="fancy-checkbox-build" class="[ btn btn-primary ]">
				                    <span class="[ glyphicon glyphicon-ok ]"></span>
				                    <span> </span>
				                </label>
				                <label for="fancy-checkbox-build" class="[ btn btn-default active ]">
				                 	   建築
				                </label>
				            </div>
				        </div>
					  </td>
					  <td align="center" valign="center">
					  	 <div class="[ form-group ]">
			           <input type="checkbox" value="3" name="class_3" id="fancy-checkbox-animal" autocomplete="off" />
			            <div class="[ btn-group ]">
			                <label for="fancy-checkbox-animal" class="[ btn btn-primary ]">
			                    <span class="[ glyphicon glyphicon-ok ]"></span>
			                    <span> </span>
			                </label>
			                <label for="fancy-checkbox-animal" class="[ btn btn-default active ]">
			                 	   生物
			                </label>
			            </div>
			        </div>
					  </td>
					</tr>
				  </tbody>
				</table>
			</form>
		</div>
		<div id="map"></div>
			<div class="copyright">Production team &copy; All Force</div>
		</div>
<script type="text/javascript">
				//地圖
			var map;
			var sign = [];
			var index = 0;
			function initMap() {
			  map = new google.maps.Map(document.getElementById('map'), {
				center: {lat: 23.577760, lng: 119.577125},
				zoom: 16
			  });
			  var infoWindow_marker = new google.maps.InfoWindow();
			  
			  var markers = [];
			<c:forEach items="${allmapinfo}" var="p">

			  latLng = new google.maps.LatLng("${p.l_xaxis}", "${p.l_yaxis}");
			  marker = new google.maps.Marker({
			            position: latLng,
			            map:map
			    });
			  markers.push(marker);	
			  
			  var html = "<a href="+"culture/Reception?id="+"${p.l_id}"+">"+"<p>"+"名稱：" + "${p.l_name}"+"</p>"+"</a>";
	          var dital = "${p.l_id}";
			  //html = html +"<p>地點：" + dataPhoto.position +"</p>";
	          //html = html +"<p>種類：" + dataPhoto.type +"</p>";
	          bindInfoWindow(marker, map, infoWindow_marker, html); 
			</c:forEach>
			}
			function bindInfoWindow(marker, map, infoWindow, html) {
		        // 除了 click 事件，也可以用 mouseover 等事件觸發氣泡框顯示
		        google.maps.event.addListener(marker, 'click', function() { 
		            infoWindow.setContent(html);
		            infoWindow.open(map, marker);
		      });
		        
		        //test gps
		        if (navigator.geolocation) {
		            navigator.geolocation.getCurrentPosition(function(position) {
		            var infoWindow = new google.maps.InfoWindow();
		            var cont = "<p>"+"You are here"+"</p>";
		              var pos = {
		                lat: position.coords.latitude,
		                lng: position.coords.longitude
		              };
		              
		              markergps = new google.maps.Marker({
				            position: pos,
				            map:map
				   		 });
		              map.setCenter(pos);
		              bindInfoWindow(markergps, map, infoWindow, cont);
		            }, function() {
		              handleLocationError(true, infoWindow, map.getCenter());
		            });
		          } else {
		            // Browser doesn't support Geolocation
		            handleLocationError(false, infoWindow, map.getCenter());
		          }
		        }

		        function handleLocationError(browserHasGeolocation, infoWindow, pos) {
		          infoWindow.setPosition(pos);
		          infoWindow.setContent(browserHasGeolocation ?
		                                'Error: The Geolocation service failed.' :
		                                'Error: Your browser doesn\'t support geolocation.');
		    }
		</script>
	<script async defer
			src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC0YHjxhTqUPSIQtCRRLPsKmYZ8NUmiX00&callback=initMap">
		</script>
  </body>
</html>
