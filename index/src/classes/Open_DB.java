package classes;

import java.sql.*;

public class Open_DB
{ 
	//数据库用户名
	String userName="root";
	//数据库密码
	String userPassword="root";
//数据库的URL，包括连接数据库所使用的编码格式
	String url="jdbc:mysql://localhost:3306/UsersInfo?useUnicode=true&characterEncoding=gb2312";
//定义一个连接对象
	Connection dbConn;   
//错误信息串
	String errDesc;
    	
   	public Open_DB()
   	{
   		//初始化操作
   		errDesc="";
   		dbConn=null;
   	}
   	
	//连接数据库
   	public Connection getConn()
   	{   	
	   	try
	   	{ 
			//声明所用的类包
			Class.forName("org.gjt.mm.mysql.Driver");
			//获得数据库的连接对象
			dbConn= DriverManager.getConnection(url,userName,userPassword);
	   	}
	   	catch(Exception ex)
	   	{	   		
	   		dbConn = null;
	   		errDesc=ex.toString();	   		
	   	}
	   	return dbConn;
   }
   
   //获取错误信息
   public String getErrDesc()
   {
   		return errDesc;	
   }
}
