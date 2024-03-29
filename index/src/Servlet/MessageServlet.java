package Servlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Message;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
public class MessageServlet extends HttpServlet {
    List<Message> list = new ArrayList();
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //��ֹ��������
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String name = request.getParameter("name");
        String title = request.getParameter("title");
        String content = request.getParameter("content");
        Date createTime = new Date();
        Message message = new Message();
        message.setName(name);
        message.setTitile(title);
        message.setContent(content);
        message.setCreateTime(createTime);
        list.add(message);
        HttpSession session = request.getSession();
        session.setAttribute("messageList",list);
        response.sendRedirect("���԰�3.jsp");
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }
}