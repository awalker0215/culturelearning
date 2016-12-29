<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page session="true" language="java" contentType="text/html; charset=UTF-8"  
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="utf-8">
<title>登入頁面</title>
<link href="/resources/css/multiColumnTemplate.css" rel="stylesheet" type="text/css">
<!--style>
.error {
	padding: 15px;
	margin-bottom: 20px;
	border: 1px solid transparent;
	border-radius: 4px;
	color: #a94442;
	background-color: #f2dede;
	border-color: #ebccd1;
}

.msg {
	padding: 15px;
	margin-bottom: 20px;
	border: 1px solid transparent;
	border-radius: 4px;
	color: #31708f;
	background-color: #d9edf7;
	border-color: #bce8f1;
}

#login-box {
	width: 300px;
	padding: 20px;
	margin: 100px auto;
	background: #fff;
	-webkit-border-radius: 2px;
	-moz-border-radius: 2px;
	border: 1px solid #000;
}
</style-->
</head>
<body onload='document.loginForm.username.focus();'>
	<div class="container">
		<saction>

	<div id="login-box">

		<center>
    		<h3></h3>
	   </center>  

		<c:if test="${not empty error}">
			<div class="error">${error}</div>
		</c:if>
		<c:if test="${not empty msg}">
			<div class="msg">${msg}</div>
		</c:if>

		<form name='loginForm'
			action="<c:url value='/j_spring_security_check' />" method='POST'>
			<article class="left_article">

			<table>
				<tr>
					<td>帳號:</td>
					<td><input type='text' name='username'></td>
				</tr>
				<tr>
					<td>密碼:</td>
					<td><input type='password' name='password' /></td>
				</tr>
				<tr>
					<td colspan='2'><input name="submit" type="submit"
						value="登入" /></td>
				</tr>
			</table>
			</article>

			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />

		</form>
		<aside class="right_article"><img src="/resources/pic/placeholder.jpg" alt="" width="400" height="200" class="placeholder"/> </aside>
		<footer class="secondary_header footer">
		</saction>
			<div class="copyright">&copy;2016 - <strong>文化學習</strong></div>
		</footer>
	</div>

</body>
</html>