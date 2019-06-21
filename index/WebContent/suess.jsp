<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<script language="javascript"> 
var times=6; 
clock(); 
function clock() 
{ 
window.setTimeout('clock()',1000); 
times=times-1; 
time.innerHTML =times; 
} </script>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">

<meta http-equiv= "Refresh" content= "5;url=index.jsp ">

<title>登录成功</title>
</head>
<body>

<%
    		String username = request.getParameter("username") ;
    		String password = request.getParameter("userpassword") ;
    		
    		final String DBDRRIVER = "com.mysql.jdbc.Driver" ;
    		final String DBURL = "jdbc:mysql://localhost:3306/UsersInfo?useUnicode=true&characterEncoding=gb2312" ;
    		final String DBUSERNAME = "root" ;
    		final String DBPASSWORD = "root" ;
    		Connection conn = null ;
    		PreparedStatement pstmt = null ;
    		String sql = null ;
    		out.print(username);
    		if(username!=null&&password!=null){
    			try{
    				Class.forName(DBDRRIVER) ;
    				conn = DriverManager.getConnection(DBURL,DBUSERNAME,DBPASSWORD) ;
    				sql = "select * from info where username=? and userpassword=?;" ;
    				pstmt = conn.prepareStatement(sql) ;
    				pstmt.setString(1,username) ;
    				pstmt.setString(2,password) ;
    				ResultSet aa=pstmt.executeQuery();
    				if(!aa.next())response.sendRedirect("login.jsp?please login again!");
    				else out.println("登录成功");
    				pstmt.close() ;
    				conn.close() ;
    	
    			}catch(Exception e){
    	%>
    				<h3>登录失败!!!</h3>
    				<h3><%=e%></h3>
    	<%    	
    			}
    		}
    	%>
    	

<p>还剩<span  id= "time">5</span>s后自动跳转</p>
</body>
</html>