package classes;

import java.sql.*;

//�����̳���Open_DB��
public class Execute_DB extends Open_DB
{
	//���ݿ����Ӷ���
	private Connection dbConn;
	private Statement stmt;
	private ResultSet rs;	
	//���� ����� 0=�޴���-1�д���
    private int errNum;
    //error ���� ������Ϣ
    private String errDesc;
	
	//��ʼ������
	public Execute_DB()
	{
		dbConn = super.getConn();
		stmt = null;
		rs = null;
		errNum = 0;
		errDesc = "";		
	}
	
	 //ִ��sql ִ����䣬��Ҫ��ִ�в����ɾ����SQL���
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
	
	//ִ��sql ��ѯ���    
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
		
	//ȡ�ô������ 
    public int getErrNum()
    {
        return errNum;
    }
	
    //ȡ�ô�����Ϣ
    public String getErrDesc()
    {
        return errDesc;
    }		
}