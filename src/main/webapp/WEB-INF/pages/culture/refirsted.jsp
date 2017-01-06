<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>使用者註冊</title>
<link href="/resources/css/userLogin.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="container">
	<div id="login-box">
		<center>
    		<h3>使用者註冊</h3>
	   </center> 
  <section class="left_article">   
		<form name='registeredForm' 
					action="insert" method="POST">
	
			<table width="300px">
				<tr>
					<td colspan="1">帳號:</td>
					<td colspan="2"><input type="text" name="username"></td>
				</tr>
				<tr>
					<td colspan="1">密碼:</td>
					<td colspan="2"><input type="password" name="password" /></td>
				</tr>
				<tr>
					<td colspan="1">信箱:</td>
					<td colspan="2"><input type="email" name="email" /></td>
				</tr>
				<tr>
					<td>年齡:</td>
					<td><input type='text' name='age'></td>
				</tr>
        <tr>
					<td colspan="1">性別:</td>
					<td colspan="2">
            <input type="radio" name="p_sex" value="M" /> 男 
            <input type="radio" name="p_sex" value="F" /> 女
          </td>
				</tr>
				<tr>
					<td colspan='2'><input id="btn_refirsted" class="btn_200_40 login-btn" type="submit" value="註冊" /></td>
				</tr>
			</table>
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> 
		</form>   
</section>
<footer class="secondary_header footer">
    <div class="copyright">&copy;2016 - <strong>culture</strong></div>
  </footer>
  </div>
</div>
</body>
</html>
