<meta charset="GBK">
<%@ Language=VBScript %>
<!--#include file="conn.asp" -->
<%
IF session("tested")=true THEN
%>
<center><p color="red" size="10px">�������ף������Ϊ�ѱ��Ǽ��ڿ������׹�ʾ����</p></center>
<center><p color="red" size="10px">�������������̱�����ʦ��</p></center>
<center><a href="index.asp" size="10px">����������ҳ</a></center>
<%
conn.Execute("select * from user")
conn.Execute("update user set zuobi = 1 where (name = '"+Session("name")+"')")

ELSE
Session("tested")=true
%>

<html>
<head>
<meta NAME="&iexcl;&iexcl;&atilde;GENERATOR&quot;" Content="Microsoft Visual Studio 6.0">
<style type="text/css">
<!--
.unnamed1 {  font-size: 10pt; color: #0000CC; text-decoration: none}
a:hover {  color: #CC0000; text-decoration: underline}
-->
</style>
<title><%=schoolname%><%=sitename%></title>
</head>

<body background="1.jpg">

<p>��</p>

<p><br>
�� </p>

<table width="630" border="1" align="center" bordercolor="#0000FF">
  <tr>
    <td width="315"><p align="center"><a href="clear.asp" class="unnamed1"><font color="#008000">���¿���</font></a> </td>
    <td width="315">
      <p align="center"><a class="unnamed1" href="index.asp"><font color="#008000">�˳�ϵͳ</font></a> </td>
  </tr>
  <tr>
    <td width="630" colspan="2"><%
	Session("tested")=true
   name=session("name")
   xuehao=session("xuehao")
   pick_e=session("pick_m")
   dim score
   if Application("q_type")=1 then
     sql="select top "& Application("q_num") &" * from test"
   else
     sql="select * from test where ( num >=" & pick_e & " and num <=" & (pick_e+ Application("q_num"))-1 & ")"
   end if
Set rs = conn.Execute( sql )

ycorrect=0
rsCount=0
'������ȷ�𰸲�����
Response.write "<a>"
if Application("q_show")=1 then Response.Write "��ȷ�𰸣�"
rs.movefirst
Do while not rs.eof
 Response.Write rs("ans")
 rsCount=rsCount + 1
  if Request.Form("ans"&rsCount) = rs("ans") then
    ycorrect=ycorrect + 1
  end if
 rs.movenext
 Response.Write "  "
loop
Response.write "</a>"

Response.Write "<br>"

score=clng(ycorrect*Application("q_cost"))
if Application("q_show")=1 then
  Response.Write "<br> <a>��Ĵ𰸣�"
  %>

  <%
  for i=1 to Application("q_num")
    if(Request.Form("ans"&cint(i))<>"") Then
    Response.Write Request.Form("ans"&cint(i))
    else 
    Response.Write "  "
    end if
    Response.Write "  "
  next
  Response.Write "<br>"
end if
Response.Write "</a>"
strsql="update user set score = " & score & " where (name='" &name & "') and score < " & score & ""
  conn.execute(strsql)
  Response.Write "<br><br>"
  Response.Write "��˴εķ����� <b>"&score&"</b></br>"
strsql1="select score from user"
Set rs1 = conn.Execute( strsql1 )
noc=1
rs1.movefirst
Do while not rs1.eof
if rs1("score")>=score then
  noc=noc+1
end if
rs1.movenext
loop
Response.Write "��˴ε����Σ� <b>"&noc-1&"</b></br>"
%>
</td></tr></table>
</body>
</html>
<%END IF%>
