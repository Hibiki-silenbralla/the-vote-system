<%@ 
   page contentType="text/html;charset=GB2312"
   %>
<html>
<head>

<title>留言板</title>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
</head>

<body>
	<p> </p>
	<p align="center">
		<b><font size="5" color="#FF6633">留 言 板 </font></b>
	</p>
	<hr size="1">
	<%
		int n;
		String temp = new String();
		String temp1 = new String();
		String temp2 = new String();
		String temp3 = new String();
		temp = (String) application.getAttribute("num");
		n = Integer.parseInt(temp);
		if (n == 0) {
	%>
	<p> </p>
	<p align="center">目前还没有文章！</p>
	<%
		} else {
	%>
	<table width="60%" border="1" cellspacing="0" cellpadding="5"
		align="center" bordercolor="#999999">
		<%
			int i;
				for (i = 1; i <= n; i++) {
					temp = temp.valueOf(i);
					temp1 = (String) application.getAttribute("tit" + temp);
					temp2 = (String) application.getAttribute("aut" + temp);
					temp3 = (String) application.getAttribute("art" + temp);
		%>
		<tr>
			<td bgcolor="#CCFFCC" height="27"><b><%=temp%>.标题:<%=temp1%>作者:
					<%=temp2%></b></td>
		</tr>
		<tr>
			<td><%=temp3%></td>
		</tr>
		<%
			}
			}
		%>
	</table>
	<p align="center"> </p>
</body>
</html>