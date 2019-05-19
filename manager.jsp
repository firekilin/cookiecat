<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@include file="config1.jsp" %>
<!DOCTYPE html>

<html>
	<head>
	
		<title>薑就對了_財務報表</title>
		
	</head>
	<body>
	<%

	
	
	%>
								<h3>財務資料</h3>
								<table  border="1">
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
								<p>&nbsp;</p>
								<form name="form1" method="post" action="">
								  <input type="submit" name="button" id="button" value="新增">
    
								  <input type="submit" name="button2" id="button2" value="修改">
                                  <input type="submit" name="button3" id="button3" value="刪除">
	</form>
								<p>&nbsp;</p>
					  
					
	</body>
</html>