<%@ 
   page contentType="text/html;charset=GB2312"
   %>
<%
	String temp = new String();
	temp = (String) application.getAttribute("num");
	if (temp == null) {
		application.setAttribute("num", "0");
	}
%>

<html>
<head>

<title>���԰�</title>

<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<script language="JavaScript">
	<!--
	function MM_openBrWindow(theURL, winName, features) {
		window.open(theURL, winName, features);
	}
	-->
</script>
</head>

<body bgcolor="#FFFFFF" text="#000000">
	<p> </p>
	<p align="center">
		<b><font size="5" color="#FF6633">���԰�</font></b>
	</p>
	<hr size="1">
	<form name="form1" method="post" action="2.jsp">
		<table width="60%" border="0" cellspacing="1" cellpadding="3"
			align="center" bgcolor="#999999">
			<tr bgcolor="#FFFFFF">
				<td width="20%">��������:</td>
				<td width="80%"><input type="text" name="txtaut"></td>
			</tr>
			<tr bgcolor="#FFFFFF">
				<td width="20%">���Ա���:</td>
				<td width="80%"><input type="text" name="txttit"></td>
			</tr>
			<tr bgcolor="#FFFFFF">
				<td width="20%">��������:</td>
				<td width="80%"> </td>
			</tr>
			<tr bgcolor="#FFFFFF">
				<td width="20%"> </td>
				<td width="80%"><textarea name="txtart" cols="45" rows="7"></textarea>
				</td>
			</tr>
			<tr bgcolor="#FFFFFF">
				<td width="20%"> </td>
				<td width="80%"> </td>
			</tr>
			<tr bgcolor="#FFFFFF">
				<td colspan="2">
					<div align="center">
						<input type="submit" name="cmdok" value="��ӵ����Ա�"> 
						<input
							type="reset" name="cmdreset" value="������д����">
						<input
							type="button" name="cmdread" value="�鿴��������"
							onClick="MM_openBrWindow('3.jsp'),'','toolbar=no, location=no,status=no,menubar=no,scrollbars=no,width=400,height=400'">
					</div>
				</td>
			</tr>
		</table>
	</form>
	<p> </p>
</body>
</html>
