<%@ page contentType="text/html;charset=GB2312" %>
<% 
    boolean flag = false ;  // ��ʾ��½�ɹ���ʧ�ܵı��  
    String userid = request.getParameter("userid") ;    // ���ձ�����  
    String password = request.getParameter("password") ;    // ���ձ�����  
    String savetime=request.getParameter("savetime");  
   
    System.out.println(savetime);  
 
        if(userid.equals("mjh"))&&password.equals("123")){  
            // ��������ݣ���˴�ִ�У���ʾ��ѯ�������Ϸ��û�  
            flag = true ;  
            session.setAttribute("userid",userid);  
            //����֤��Ϣ���浽Cookie  
            Cookie cid=new Cookie("userid",userid);  
            Cookie cpass=new Cookie("password",password);  
            cid.setMaxAge(Integer.parseInt(savetime));  
            cpass.setMaxAge(Integer.parseInt(savetime));  
            response.addCookie(cid);  
            response.addCookie(cpass);  
        }  

%>  
<%  
    if(flag){   // ��½�ɹ���Ӧ����ת��success.jsp  
%>  
        <jsp:forward page="index.jsp"/>  
<%  
    }else{      
%>  
        <jsp:forward page="login.jsp"/>  
<%  
    }  
%>  