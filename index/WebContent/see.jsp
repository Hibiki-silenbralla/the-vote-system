<%@ page contentType="text/html; charset=gb2312" %>
<%@ page import="java.util.*"%>
<%@ page import="java.lang.*"%>
<%@ page import="java.io.*"%>

<%
	String str1 = request.getParameter("word");
	String str2 = request.getParameter("excel");
	if (str1 == null) {
		str1 = "";
	}
	if (str2 == null) {
		str2 = "";
	}
	if (str1.equals("word")) {
		response.setContentType("application/msword;charset=GB2312");
	}
	if (str2.equals("excel")) {
		response.setContentType("application/x-msexcel;charset=GB2312");
	}
%>
 

<jsp:useBean id="vote" scope="request" class="vote.vote"/>
<%
String vote1=request.getParameter("lang");
vote.n=4;
vote.filePath="vote.txt";
vote.createFile();
vote.readFile();
int total=0;
float voteFlo[]=new float[5];
for(int i=0;i<4;i++) total+=vote.voteNum[i];
for(int i=0;i<4;i++) voteFlo[i]=150*((float)vote.voteNum[i]/(float)total);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
 
<title>�鿴����</title>
<link href="t1.css" rel="stylesheet" type="text/css">
</head>
<body>
<p>
<table width="30%" border="0" class="t1">
 <tr> 
 <td colspan="2"><div align="center">������</div></td>
 </tr>
 <tr> 
 <td width="18%">�ȸ�</td>
 <td width="82%"><img src="����.jpg" width=<%=voteFlo[0]%> height=8> <%=vote.voteNum[0]%></td>
 </tr>
 <tr> 
 <td>��Ӧ</td>
 <td><img src="����.jpg" width=<%=voteFlo[1]%> height=8> <%=vote.voteNum[1]%></td>
 </tr>
 <tr> 
 <td>�Ż�</td>
 <td><img src="����.jpg" width=<%=voteFlo[2]%> height=8> <%=vote.voteNum[2]%></td>
 </tr>
 <tr> 
 <td>�ٶ�</td>
 <td><img src="����.jpg" width=<%=voteFlo[3]%> height=8> <%=vote.voteNum[3]%></td>
 </tr>
 <tr> 
 <td colspan="2"><div align="center"><a href="javascript:window.close();">�رմ���</a></div></td>
 </tr>
</table>
<p>
<p>��ͶƱ�������Ϊ��
<FORM method="get" name="form">
		<INPUT TYPE="submit" value="word" name="word"> 
		<INPUT TYPE="submit" value="excel" name="excel">
	</FORM>

</body>
</html>