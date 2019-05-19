<%@page contentType="text/html"%>
<%@page pageEncoding="utf-8"%>
<%@page import = "java.sql.*, java.util.*, java.io.*"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html lang="en" class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html lang="en" class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html lang="en" class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="en" class="no-js"> <!--<![endif]-->
<head>

	<script src="js/modernizr-2.6.2.min.js"></script>
</head>
<body>
	<form name="" method="post" action="check.jsp">
	
		<input type="text" name="Account"  placeholder="帳號"><br>
		<input type="password" name="Password" placeholder="密碼"><br>
		<br>&nbsp;&nbsp;<input type="submit" name="" value="登入">
	</form>
</body>
</html>

