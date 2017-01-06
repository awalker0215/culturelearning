<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true" language="java" contentType="text/html; charset=UTF-8"  
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>ä½¿ç¨èç»å¥</title>
<link  href="/resources/css/userLogin.css"  rel="stylesheet" type="text/css">
</head>
<body onload="document.loginForm.username.focus();">
	<div class="container">
		<saction>

	<div id="login-box">

		<center>
    		<h3>登入頁面</h3>
	   </center>  

		<c:if test="${not empty error}">
			<div class="error">${error}</div>
		</c:if>
		<c:if test="${not empty msg}">
			<div class="msg">${msg}</div>
		</c:if>

		<form name="loginForm"
			action="<c:url value='/j_spring_security_check' />" method="POST">
			<article class="left_article">

			<table width="300px">
				<tr>
					<td colspan="1">帳號:</td>
					<td colspan="2"><input type="text" name="username"></td>
				</tr>
				<tr>
					<td colspan="1">密碼:</td>
					<td colspan="2"><input type="password" name="password" /></td>
				</tr>
				<tr>
					<td colspan="2"><input name="submit" type="submit"
						value="登入" /></td>
					<td colspan="2" ><a href="refirsted.html">註冊</a></td>
				</tr>
			</table>
			
			</article>

			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />

		</form>
			</div>
		</saction>
		<footer class="secondary_header footer">
		
			<div class="copyright">&copy;2016 - <strong>culture</strong></div>
		</footer>
	
	</div>
</body>
</html>