<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>使用者註冊</title>
<link href="/resources/css/userLogin.css" rel="stylesheet"
	type="text/css">
</head>
<body>
	<div class="container">
		<div id="login-box">
			<center>
				<h3>使用者註冊</h3>
			</center>
			<section class="left_article">
				<form name='registeredForm' action="addpoint" method="POST">

					<table width="300px">
						<tr>
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
						</tr>
						<tr>
							<td colspan="1">名稱:</td>
							<td colspan="2"><input type="text" name="classname"></td>
						</tr>
						<tr>
							<td colspan="1">座標X:</td>
							<td colspan="2"><input type="text" name="inLatLngx" /></td>
						</tr>
						<tr>
							<td colspan="1">座鏢Y:</td>
							<td colspan="2"><input type="text" name="inLatLngy" /></td>
						</tr>
						<tr>
							<td colspan="1">內容:</td>
							<td colspan="2"><input type="text" name="content" /></td>
						</tr>
						<tr>
							<td colspan='2'><input id="btn_refirsted"
								class="btn_200_40 login-btn" type="submit" value="新增" /></td>
						</tr>
					</table>
					<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" />
				</form>
			</section>
			<footer class="secondary_header footer">
				<div class="copyright">
					&copy;2016 - <strong>culture</strong>
				</div>
			</footer>
		</div>
	</div>
</body>
</html>
