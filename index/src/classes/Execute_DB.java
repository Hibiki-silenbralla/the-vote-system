package classes;

import java.sql.*;

//这个类继承自Open_DB雷
public class Execute_DB extends Open_DB
{
	//数据库连接对象
	private Connection dbConn;
	private Statement stmt;
	private ResultSet rs;	
	//描述 错误号 0=无错误，-1有错误
    private int errNum;
    //error 描述 错误信息
    private String errDesc;
	
	//初始化操作
	public Execute_DB()
	{
		dbConn = super.getConn();
		stmt = null;
		rs = null;
		errNum = 0;
		errDesc = "";		
	}
	
	 //执行sql 执行语句，主要是执行插入和删除的SQL语句
	public boolean exeSql(String strSql)
	{
		try
		{
   			stmt=dbConn.createStatement();
			stmt.executeUpdate(strSql);	
			stmt.close();	
			return true;            
		}
		catch(Exception ex)
		{
			this.errNum=-1;
			this.errDesc=ex.toString();
			return false;
		}	
	}
	
	//执行sql 查询语句    
    public ResultSet exeSqlQuery(String strSql)
	{
		
		try
		{
   			stmt=dbConn.createStatement();
			rs =stmt.executeQuery(strSql);			            
		}
		catch(Exception ex)
		{
			
            this.errNum=-1;
            this.errDesc=ex.toString();
			rs = null;
		}	
		return rs;
	}		
		
	//取得错误号码 
    public int getErrNum()
    {
        return errNum;
    }
	
    //取得错误信息
    public String getErrDesc()
    {
        return errDesc;
    }		
}