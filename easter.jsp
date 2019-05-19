
<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>
<body>
<%
try {
//Step 1: 載入資料庫驅動程式 
    Class.forName("com.mysql.jdbc.Driver");
    try {
//Step 2: 建立連線 	
        String url="jdbc:mysql://localhost/";
				Connection con =DriverManager.getConnection(url,"root","1234");
        String sql="";
       
        if(con.isClosed())
           out.println("連線建立失敗");
        else {
//Step 3: 選擇資料庫   
           sql="use cookie";
           con.createStatement().execute(sql);
           //從表格傳遞中文到資料庫, 必須使用getBytes("ISO-8859-1"),"UTF-8"編碼
           String new_text=new String(request.getParameter("text").getBytes("ISO-8859-1"),"UTF-8");
//           String new_name=request.getParameter("name");
           
           
//Step 4: 執行 SQL 指令	
        
           sql="insert INTO greatgreat (great) value ('" +new_text + "');";

           con.createStatement().execute(sql);
//Step 6: 關閉連線
           con.close();
//Step 5: 顯示結果 
          //直接顯示最新的資料
		
		out.write("<script language=javascript>alert('恭喜找到彩蛋');</script>");
						  response.setHeader("refresh","0;URL=index.html") ;	
		  
       }
    }
    catch (SQLException sExec) {
           out.println("SQL錯誤"+sExec.toString());
    }
}
catch (ClassNotFoundException err) {
   out.println("class錯誤"+err.toString());
}
%>

</body>
</html>
