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
</head>
<body>
<div class="top_div">
	<a align="right" href="culture/login">【登入/註冊】</a>
</div>

<div class="container">
			<div class="primary_header">
			  <h1 class="title">首頁</h1>
			</div>
		</div>
		<div id="map"></div>
		
		<div id="mwt_mwt_slider_scroll">
		<div id="mwt_fb_tab">
			<span>分</span>
			<span>類</span>	
		</div>
			<div id="mwt_slider_content">
			  <ul>
				  <span class="sp_span">生物</span>
				  <span class="sp_span">生物</span>
			 	  <span class="sp_span">生物</span><br>
			  </ul>
			    <div class="copyright">&copy;2016 - cultion</div>
			</div>
		</div>
<script type="text/javascript">
				//地圖
			var map;
			var xxix = [];
			var yxix = [];
			var markers = [];
			var infowin = [];
			var infos = [];
			var index = 0;
		
			function initMap() {
			<c:forEach items="${allmapinfo}" var="a">
				xxix.push("${a.l_xaxis}")
				yxix.push("${a.l_yaxis}")
				infos.push("${a.l_name}")
			</c:forEach>
			  map = new google.maps.Map(document.getElementById('map'), {
				center: {lat: 23.574979, lng: 119.576194},
				zoom: 16
			  });
			  for(var i = 0;i<xxix.length;i++){
				  latLng = new google.maps.LatLng(xxix[i], yxix[i]);
				  markers[i] = new google.maps.Marker({
				            position: latLng,
				            map:map,
				            title:infos[i]
				    });
				  
				  infowin[i] = new google.maps.InfoWindow({
					    content: infos[i]
				  });
				  
				  markers[i].addListener('click', function() {
					    infowin[i].open(map, markers[i]);
					  });
			  }
			  
			}
		</script>
	<script async defer
			src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC0YHjxhTqUPSIQtCRRLPsKmYZ8NUmiX00&callback=initMap">
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


				$("#mwt_slider_content").mouseleave(function(){
					$("#mwt_mwt_slider_scroll").animate( { left:'-'+w+'px' }, 400 ,'swing');	
				});	
			});
		</script>
  </body>
</html>
