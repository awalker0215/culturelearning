<!--<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="/resources/css/reception.css" rel="stylesheet" type="text/css">
<title>首頁</title>
<style type="text/css">
@media (max-width: 800px){
}
</style>
</head>
<body>
<p align="right"><a href="culture/login">login</a></p>
<p align="right"><a href="culture/refirsted">register</a></p>
<div class="container">
  <header>
    <div class="primary_header">
      <h1 class="title">首頁</h1>
    </div>
</header>
  <section class="body_section">
    <article class="right_article">
     <iframe class="right_iframe" src="http://maps.google.com.tw/maps?f=q&amp;hl=zh-TW&amp;geocode=&amp;q=24.941698, 121.220479(文網股份有限公司)&amp;z=16&amp;output=embed&amp;t=" ></iframe>

      
	  </article>
  </section>
  <div class="copyright">&copy;2016 - cultion</div>
</div>
  
</body>
</html>-->
<%@ page language="java" contentType="text/html; charset=GB18030"  
    pageEncoding="GB18030"%>  

<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="resources/css/reception.css" rel="stylesheet" type="text/css">
<title>擐?</title>
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
      <h1 class="title">擐?</h1>
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
