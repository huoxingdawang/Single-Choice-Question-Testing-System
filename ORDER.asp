

<!--#include file="conn.asp" -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title><%=schoolname%><%=sitename%>���α�</title>
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="Microsoft Theme" content="none"></head>
<body  bgcolor="#99CCFF">
<%
set rs= server.createobject("adodb.recordset") 
sql="select name,xuehao,banji,score,zuobi from user ORDER BY banji,score DESC"
Set rs=conn.Execute(sql)
%>
<%
    IF (Application("teachername") = request.QueryString("teachername")) THEN
%>
<center>���ǽ�ʦ ���в鿴����Ȩ��</center>
<%ELSE %>
<center>����ѧ�� ���ɲ鿴����</center>
<%END IF%>
<table border="0" width="100%">
  <tr>
    <td width="100%"><p align="center" style="line-height: 150%">
		<font face="����" size="4" color="#000080">
		<span style="letter-spacing: 4pt"><%=schoolname%><%=sitename%></span></font></td>
  </tr>
</table>
<div align="center"><center>

<table border="1" width="376" bordercolorlight="#008000" cellspacing="0" cellpadding="0" bordercolordark="#FFFFFF">
  <tr>
    <th width="74"><% ="���"%>
</th>
    <th width="74"><% ="����"%>
</th>
    <th width="74"><% ="ѧ��"%>
</th>
    <th width="75"><% ="�༶"%>
</th>
    <th width="75"><% ="����"%>
</th>
    <th width="75"><% ="�������"%>
</th>

  </tr>
<%j=1
while not rs.eof%>
  <tr>
    <td width="74"><%response.write j %>
</td>
    <td width="74"><%response.write rs(0)%>
</td>
    <td width="74"><%response.write rs(1)%>
</td>
    <td width="75"><%response.write rs(2)%>
	
</td>
    <td width="75"><%IF (rs(0)=Session("name") ) OR (Application("teachername") = request.QueryString("teachername")) THEN response.write rs(3) END IF%>
</td>

    <td width="75"><%IF(rs(4)=1)THEN response.write("��")ELSE response.write("��")END IF%>
</td>
  </tr>
<%
j=j+1
rs.movenext
wend
rs.close
conn.close
%>
</table>
</center></div>
<!--#include file="info.asp" -->

</body>
</html>
