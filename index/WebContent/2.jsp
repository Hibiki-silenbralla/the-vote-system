<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<html>
<head>


<title>���԰�</title>

<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
<script language="JavaScript">
	
</script>
</head>




<body bgcolor="#FFFFFF" text="#000000">
	<p> </p>
	<p align="center">
		<b><font size="5" color="#FF6633">�� �� �� </font></b>
	</p>
	<hr size="1">
	<%
		int n;
		String temp  = new String();
		String temp1 = new String();
		String temp2 = new String();
		String temp3 = new String();
		temp1 = request.getParameter("txttit");
		temp2 = request.getParameter("txtaut");
		temp3 = request.getParameter("txtart");
		n = temp1.length() * temp2.length() * temp3.length();
		if (n != 0) {
			temp = (String)application.getAttribute("num");
			n = Integer.parseInt(temp);
			n = n + 1;
			temp = temp.valueOf(n);
			application.setAttribute("num", temp);
			application.setAttribute("tit" + temp, temp1);
			application.setAttribute("aut" + temp, temp2);
			application.setAttribute("art" + temp, temp3);
	%>
	<p> </p>
	<p align="center">���Գɹ�!</p>
	<%}
	 else {
	%>
	<p align="center"><font color="#FF0000">��������ߡ����������,����ʧ�ܣ�</font></p>
	<%
		}
	%>
	<p align="center">
		<a href="index.jsp">������ҳ</a>
	</p>
</body>
</html>