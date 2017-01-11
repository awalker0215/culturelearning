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
	<a align="right" href="/culture/login">【登入/註冊】</a>
</div>
<div class="container"> 
  <!-- Header -->
  <header class="primary_header">
    <h1 class="title">細部說明</h1>
  </header>
  <!-- Hero Section -->
  <section class="intro">
    <div class="column">
      <!--h3>JOHN DOE</h3>-->
      <img src="/resources/pic/profile.png" alt="" class="profile"> </div>
    <div class="right_article">
      <table class="table">
        <tbody>
          <tr >
            <td>&nbsp;</td>
            <td>&nbsp;</td>
</tr>
          <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
</tr>
          <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
</tr>
                 <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
</tr>
          <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
</tr>
          <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
</tr>
        </tbody>
      </table>
<p>文字說明</p>
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
</div>
<!-- Main Container Ends -->
		<div id="mwt_mwt_slider_scroll">
		<div id="mwt_fb_tab">
			<span>分</span>
			<span>類</span>	
		</div>
			<div id="mwt_slider_content">
			  <ul>
				  <span class="sp_span">活動</span>
				  <span class="sp_span">建築</span>
			 	  <span class="sp_span">生物</span><br>
			  </ul>

			    <div class="copyright">&copy;2016 - cultion</div>
			</div>
		</div>

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
