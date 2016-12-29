</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"  
    pageEncoding="UTF-8"%>  

<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="resources/css/reception.css" rel="stylesheet" type="text/css">
<title>GoogleMap</title>
<style type="text/css">
@media (max-width: 800px){
}
	      html, body { height: 80%; margin: 0; padding: 0; }
      #map { height: 100%; }
</style>
</head>
<body>
<p align="right"><a href="culture/login">login</a></p>
<p align="right"><a href="culture/refirsted">register</a></p>
<div class="container">
    <div class="primary_header">
      <h1 class="title">地圖</h1>
    </div>
	  </div>
	<div id="map"></div>
    <script type="text/javascript">

var map;
function initMap() {
  map = new google.maps.Map(document.getElementById('map'), {
    center: {lat: 23.570829, lng: 119.5811566},
    zoom: 16
  });
}

    </script>
    <script async defer
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC0YHjxhTqUPSIQtCRRLPsKmYZ8NUmiX00&callback=initMap">
    </script>
       	

  </body>
</html>
