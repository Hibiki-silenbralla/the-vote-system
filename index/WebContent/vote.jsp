<%@ page contentType="text/html; charset=gb2312" %>
<%@ page import="java.util.*"%>
<%@ page import="java.lang.*"%>
<%@ page import="java.io.*"%>
<jsp:useBean id="vote" scope="request" class="vote.vote"/>
<%
String vote1=request.getParameter("lang");
vote.n=4;
vote.filePath="vote.txt";
vote.createFile();
vote.readFile();
if(vote1.compareTo("0")==0)
vote.voteNum[0]++;
if(vote1.compareTo("1")==0)
vote.voteNum[1]++;
if(vote1.compareTo("2")==0)
vote.voteNum[2]++;
if(vote1.compareTo("3")==0)
vote.voteNum[3]++;
vote.writeFile();
%>
<script language="javascript">
 alert("感谢你投了宝贵的一票");
 self.location="index.jsp";
</script>