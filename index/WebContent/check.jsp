<%@ page contentType="text/html;charset=GB2312" %>
<% 
    boolean flag = false ;  // 表示登陆成功或失败的标记  
    String userid = request.getParameter("userid") ;    // 接收表单参数  
    String password = request.getParameter("password") ;    // 接收表单参数  
    String savetime=request.getParameter("savetime");  
   
    System.out.println(savetime);  
 
        if(userid.equals("mjh"))&&password.equals("123")){  
            // 如果有内容，则此处执行，表示查询出来，合法用户  
            flag = true ;  
            session.setAttribute("userid",userid);  
            //将验证信息保存到Cookie  
            Cookie cid=new Cookie("userid",userid);  
            Cookie cpass=new Cookie("password",password);  
            cid.setMaxAge(Integer.parseInt(savetime));  
            cpass.setMaxAge(Integer.parseInt(savetime));  
            response.addCookie(cid);  
            response.addCookie(cpass);  
        }  

%>  
<%  
    if(flag){   // 登陆成功，应该跳转到success.jsp  
%>  
        <jsp:forward page="index.jsp"/>  
<%  
    }else{      
%>  
        <jsp:forward page="login.jsp"/>  
<%  
    }  
%>  