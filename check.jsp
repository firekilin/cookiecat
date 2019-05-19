
<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>
<body>
<%	


		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			try
			{
				String url="jdbc:mysql://localhost/";
				Connection con =DriverManager.getConnection(url,"root","1234");
				
				if(con.isClosed())
				{
					out.println("連線建立失敗");
	            }
	
			        String sql="SELECT * FROM cookie.user where Account='"+request.getParameter("Account")+"' AND Password='"+request.getParameter("Password")+"'";
					ResultSet tmp=con.createStatement().executeQuery(sql);
					if (tmp.next())
					{
						
							session.setAttribute("username",request.getParameter("username"));
							 response.setHeader("refresh","0;URL=manager.jsp") ;	
					
					}
					else
					{
					
						out.write("<script language=javascript>alert('帳號或密碼輸入錯誤');</script>");
						  response.setHeader("refresh","0;URL=login.jsp") ;	
					 
					}
						 con.close();
			}			
			catch (SQLException sExec)
			{
		    out.println("SQL錯誤"+sExec.toString());
		    }
		}
		catch (ClassNotFoundException err)
		{
			out.println("class錯誤"+err.toString());
		}
	
	
%>

</body>
</html>