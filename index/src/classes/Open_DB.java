package classes;

import java.sql.*;

public class Open_DB
{ 
	//���ݿ��û���
	String userName="root";
	//���ݿ�����
	String userPassword="root";
//���ݿ��URL�������������ݿ���ʹ�õı����ʽ
	String url="jdbc:mysql://localhost:3306/UsersInfo?useUnicode=true&characterEncoding=gb2312";
//����һ�����Ӷ���
	Connection dbConn;   
//������Ϣ��
	String errDesc;
    	
   	public Open_DB()
   	{
   		//��ʼ������
   		errDesc="";
   		dbConn=null;
   	}
   	
	//�������ݿ�
   	public Connection getConn()
   	{   	
	   	try
	   	{ 
			//�������õ����
			Class.forName("org.gjt.mm.mysql.Driver");
			//������ݿ�����Ӷ���
			dbConn= DriverManager.getConnection(url,userName,userPassword);
	   	}
	   	catch(Exception ex)
	   	{	   		
	   		dbConn = null;
	   		errDesc=ex.toString();	   		
	   	}
	   	return dbConn;
   }
   
   //��ȡ������Ϣ
   public String getErrDesc()
   {
   		return errDesc;	
   }
}
