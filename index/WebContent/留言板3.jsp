<%@ page import="bean.Message" %>
<%@ page import="java.util.List" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<table>
    <form action="message" method="post">
    <tr>
        <td>用户名</td>
        <td><input type="text" name="name"></td>
    </tr>
    <tr>
        <td>标题</td>
        <td><input type="text" name="title"></td>
    </tr>
    <tr>
        <td>内容</td>
        <td><textarea name="content" id="" cols="30" rows="10"></textarea></td>
    </tr>
    <tr>
        <td colspan="2">  <input type="submit" value="提交"></td>
    </tr>
    </form>
</table>
<%
    SimpleDateFormat format = new SimpleDateFormat("yyyy年MM月dd日hh时mm分ss秒");
    List list = (List) session.getAttribute("messageList");
    if(list != null) {
        for(int i=0;i<list.size();i++) {
            Message message = (Message) list.get(i);
    %>
            楼层：<%=i+1%> 楼 <br>
            留言人：<%=message.getName()%> <br>
            时间：<%=format.format(message.getCreateTime())%> <br>
            标题：<%=message.getTitile()%><br>
            内容：<%=message.getContent()%><br>
            <hr>
    <%
        }
    }
%>
</body>
</html>