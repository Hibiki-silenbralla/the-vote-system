<%@ page contentType="text/html; charset=gb2312" %>

<%
	String temp = new String();
	temp = (String) application.getAttribute("num");
	if (temp == null) {
		application.setAttribute("num", "0");
	}
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>ͶƱ</title>
<link href="t1.css" rel="stylesheet" type="text/css">
</head>
<script language="javascript">

<!--
function MM_openBrWindow(theURL, winName, features) {
	window.open(theURL, winName, features);
}
-->
</script>
<script language="javascript">
function cw()
{
 window.open("see.jsp","mywindow",
  "toolbar=no,left=150,top=200,width=270,height=350,menubar=no,systemMenu=no");
}
</script>
<body background="">
   <pre>
   <font size=15 color="red">                      ���������������</font>
   </pre>
<table align="center" width="100%" height="400" >
 <tr>
 <td><form name="form1" method="post" action="vote.jsp">
 <table width="100%" height="250" align="center" bordercolor="#9966CC" class="t1">
   <tr>
   <td align="center"><img src="Google.PNG" width=550 height=200></td>
   <td align="center"><img src="bing.PNG" width=550 height=150></td>
   </tr>
   <tr>
   <td align="center"><input type="radio" name="lang" value="0">�ȸ�</td>
   <td align="center"><input type="radio" name="lang" value="1">��Ӧ</td>
   </tr>
   <tr>
   <td align="center"><img src="yahoo.jpg" width=550 height=150></td>
   <td align="center"><img src="baidu.PNG" width=550 height=150></td>
   </tr>
   <tr>
   <td align="center"><input type="radio" name="lang" value="2">�Ż�</td>
   <td align="center"><input type="radio" name="lang" value="3">�ٶ�</td>
   </tr>
   <tr>
   <td><div align="right">
    <label class="btn btn-info active" style="margin-right:30px;">
    <input name="vote" type="image" src="����.PNG" width="50" height="25" border="0">
       </label><a href="javascript:cw()"><img src="�鿴.PNG" width="50" height="25" border="0">
       </a>
       </div>
       </td>
   </tr>
  </table>
  </form></td>
 </tr>
</table>
<br><br><br><br><br>
<img src="f.jpg" width=1530 height=75>
<br><br><br><br><br>
	<p align="center">
		<b><font size="5" color="#FF6633">���԰�</font></b>
	</p>
	<hr size="1">
	<form name="form1" method="post" action="2.jsp">
		<table width="60%" cellspacing="1" cellpadding="3"
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
						<input type="reset" name="cmdreset" value="������д����">
						<input type="button" name="cmdread" value="�鿴��������"
							onClick="MM_openBrWindow('3.jsp'),'','toolbar=no, location=no,status=no,menubar=no,scrollbars=no,width=400,height=400'">
					</div>
				</td>
			</tr>
		</table>
	</form>
	<p> </p>
<br><br>
</body>
</html>