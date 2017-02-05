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
<title>文化學習 細部說明</title>
<link href="/resources/css/reception.css" rel="stylesheet" type="text/css">
</head>
<body>
<!-- Main Container -->
<div class="top_div">
	<a align="left" href="/">【首頁】</a>
	<sec:authorize access="!hasRole('ROLE_USER') and !hasRole('ROLE_ADMIN')">
	<a align="right" href="/culture/login">【登入/註冊】</a>
	</sec:authorize>
	<!--<c:forEach items="${ditailinfo}" var="p">
	<a align="right" href="/culture/Receptionedit?id=${p.l_id}">【修改】</a>
	 </c:forEach>-->
</div>
<div class="container"> 
  <!-- Header -->
  <header class="primary_header">
    <h1 class="title">細部說明</h1>
  </header>
  <!-- Hero Section -->
  <section class="intro">
    <div class="column" >
      <!--h3>JOHN DOE</h3>-->
      <c:forEach items="${ditailinfo}" var="p">
      	<c:choose>
      		<c:when test = "${not empty p.f_filename}">
      			<img src="/resources/pic/${p.f_filename}${p.f_filetype}" alt="" class="profile"> </div>
      		</c:when>
      		<c:when test = "${empty p.f_filename}">
      			<img src="/resources/pic/profile.png" alt="" class="profile"> </div>
      		</c:when>
      	</c:choose>
      </c:forEach>
    <div class="right_article">
      <table class="table">
        <tbody>
        <tr>
        <td colspan="2">
        <div style="height:180; width:242%" id="map"></div>
        </td>
        </tr>
     	 	<tr>
	        	<td width="50">類型：</td>
	        	<c:forEach items="${ditailinfo}" var="p">
		        <td><c:out value="${p.l_type}"/></td>
		   		 </c:forEach>
	        </tr>
	        <tr>
	        	<td width="50">名稱：</td>
	           <c:forEach items="${ditailinfo}" var="p">
		        <td><c:out value="${p.l_name}"/></td>
		   		 </c:forEach>
	        </tr>
	        <tr>
	         <td width="50">位置：</td>
	            <c:forEach items="${ditailinfo}" var="p">
		        <td><c:out value="${p.l_xaxis},${p.l_yaxis}"/></td>
		   		 </c:forEach>
	        </tr>
	        <tr>
	        <td width="50">內容：</td>
	        <c:forEach items="${ditailinfo}" var="p">
		        <td><c:out value="${p.v_vaule}"/></td>
		   		 </c:forEach>
	        </tr>
		    
        </tbody>
      </table>
    </div>
  </section>
  <!-- Stats Gallery Section -->
  
  <div class="gallery">
    <div class="thumbnail"> <a href="#"><img src="/resources/pic/bkg_06.jpg" alt="" width="2000" class="cards"/></a>
      <h4>TITLE</h4>
      <p class="tag">HTML, CSS, JS, WordPress</p>
</div>
    <div class="thumbnail"> <a href="#"><img src="/resources/pic/bkg_06.jpg" alt="" width="2000" class="cards"/></a>
      <h4>TITLE</h4>
      <p class="tag">HTML, CSS, JS, WordPress</p>
</div>
    <div class="thumbnail"> <a href="#"><img src="/resources/pic/bkg_06.jpg" alt="" width="2000" class="cards"/></a>
      <h4>TITLE</h4>
      <p class="tag">HTML, CSS, JS, WordPress</p>
</div>
    <div class="thumbnail"> <a href="#"><img src="/resources/pic/bkg_06.jpg" alt="" width="2000" class="cards"/></a>
      <h4>TITLE</h4>
      <p class="tag">HTML, CSS, JS, WordPress</p>
</div>
  </div>
  <div class="copyright">Production team &copy; All Force</div> 
</div>
<!-- Main Container Ends -->
		
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
		</script>
	<script src="https://code.jquery.com/jquery-1.9.1.min.js"></script>
	<script type="text/javascript">
			$(function(){
				var w = $("#mwt_slider_content").width();
				$('#mwt_slider_content').css('height', ($(window).height() - 20) + 'px' ); //將區塊自動撐滿畫面高度

				$("#mwt_fb_tab").mouseover(function(){ //滑鼠滑入時
					if ($("#mwt_mwt_slider_scroll").css('left') == '-'+w+'px')
					{
						$("#mwt_mwt_slider_scroll").animate({ left:'0px' }, 400 ,'swing');
					}
				});


				$("#mwt_slider_content").mouseleave(function(){　//滑鼠離開後
					$("#mwt_mwt_slider_scroll").animate( { left:'-'+w+'px' }, 400 ,'swing');	
				});	
			});
		</script>
</body>
</html>
