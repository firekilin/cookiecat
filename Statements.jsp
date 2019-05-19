<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@include file="config1.jsp" %>
<!DOCTYPE html>

<html>
	<head>
	<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-119591064-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-119591064-1');
</script>

		<title>薑就對了_財務報表</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assets/css/main.css" />
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
	</head>
	<body>
		<div id="page-wrapper">

			<!-- Header -->
					<header id="header">
					<h1 id="logo"><a href="index.html">薑就對了</a></h1>
					<nav id="nav">
						<ul>
							<li><a href="index.html">首頁</a></li>
							<li>
								<a href="#">幫助我們</a>
								<ul>
									<li><a href="thanks.html">購買薑黃餅乾</a></li>
									
									<li><a href="Statements.jsp">財務報表</a></li>
									
								</ul>
							</li>
							<li>
							<a href="#">關於我們</a>
								<ul>
									<li><a href="about.html">關於我們</a></li>
									
									<li><a href="meow.html">薑米喵 小檔案</a></li>
									
								</ul>
							</li>
						</ul>
					</nav>
				</header>

			<!-- Main -->
				<div id="main" class="wrapper style1">
					<div class="container">
						<header class="major">
							<h2>財務報表</h2>
							
						</header>

						<!-- Content -->
							<section id="content">
								<a href="#" class="image fit"><img src="images/130831.jpg" alt="" /></a>
								<h3>財務資料</h3>
								<table width="200" border="1">
								<tr><td>姓名</td><td>餅乾數量</td><td>金額</td><td>付款狀況</td><td>出貨狀況</td></tr>
								<%	
			        sql="SELECT * FROM cookie.product;";
           ResultSet rs= con.createStatement().executeQuery(sql);
		String[] statement=new String[7];
		int money=0,cookiesum=0;
           while (rs.next()) 
           {
				for(int i=2;i<7;i++)
				{
					if(rs.getString(i)==null)
					{
						statement[i]="";
					}else{
						statement[i]=rs.getString(i);
					}
					
				}
				cookiesum+=Integer.valueOf(statement[3]) ;
				money+=Integer.valueOf(statement[4]) ;
             out.println("<tr><td>"+statement[2]+"</td><td>"+statement[3]+"</td><td>"+statement[4]+"</td><td>"+statement[5]+"</td><td>"+statement[6]+"</td></tr>");
		   }
						 con.close();
		
	
	
%>
								  
								 
					  </table>
					  <table width="20" border="1">
						<%
						
						
						out.println("<tr><td>已;銷售餅乾數量</td><td>"+cookiesum+"</td><td>額外捐款金額</td><td>"+money+"</td></tr>");
						%>		
</table>
			<!-- Footer -->
			<footer id="footer">
					<ul class="icons">
						<li><a target="_blank"  href="https://line.me/R/ti/p/%40igk7902d" class="icon" ><img height="30" border="0" src="images/line.png"></a></li>
						<li><a href="mailto:wl00161839@gmail.com" class="icon alt fa-envelope"><span class="label">Email</span></a></li>
                        <li><a target="_blank"  href="https://www.facebook.com/%E8%96%91%E5%B0%B1%E5%B0%8D%E4%BA%86-148167899364605/?modal=admin_todo_tour" class="icon alt fa-facebook-official"><span class="label">facebook</span></a></li>
					</ul>
					<ul class="copyright">
						<li>&copy; Kilin. All rights reserved.</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
					</ul>
				</footer>

		</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/j.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>

	</body>
</html>