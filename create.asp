
<%@ Language=VBScript %>

<%
  IF request.QueryString("teachername") <> Application("teachername") THEN 
%>
  <script>alert("��Ȩ�鿴��");</script>

<%
  ELSE
%>
<%
IF Application("teachername") = "" then
%>
  <script>
    window.location.href="EXAMSETTING.asp";
  </script>
<%
ELSE
%>
<!--#include file="conn.asp" -->
<%
dim came
dim conn   
dim connstr
name=replace(trim(request("name")),"'","''")
xuehao=replace(trim(request("xuehao")),"'","''")
banji=replace(trim(request("banji")),"'","''")
code=replace(trim(request("code")),"'","''")
if ( name<>"" and xuehao <> "" and banji<>"" ) then
set rs= server.createobject("adodb.recordset") 
sql="select * from user"
Set rs=conn.Execute(sql)
if rs.EOF=false then
rs.movefirst
end if
Do while not rs.eof
if rs("name")=name then
came="came"
end if
if rs.EOF=false then
  if rs.BOF=false then
    rs.movenext
  end if
end if
loop
if came<> "came" then
'response.write "<script>alert(""���ʵ���������뿼���Ƿ���ȷ��"");reload();</script>"
sql1="insert into user(name,xuehao,banji,score) values('"& name &"','"& xuehao &"','"& banji &"',0)"
Set rs1 = conn.Execute( sql1 )
end if
else 
  if( name<>"" OR xuehao <> "" OR banji<>"" ) then
  response.write("<script>alert(""����ѧ�Ż�����Ϊ��"");reload();</script>")
  end if
end if
%>
<meta charset="GBK">
<html>

<head>
<meta NAME="GENERATOR" Content="Microsoft FrontPage 6.0">
<title><%=Application("schoolname")%><%=Application("sitename")%>����¼��</title>
</head>

<body bgcolor="#FFFFFF" >

<table border="0" width="100%">
  <tr>
    <td width="100%">
      <p align="center" style="line-height: 150%">
		<font face="����" size="4" color="#000080">
		<span style="letter-spacing: 4pt"><%=Application("schoolname")%><%=Application("sitename")%>����¼��ϵͳ</span></font></td>
  </tr>
</table>

<form action="create.asp?teachername=<%=Application("teachername")%>" id="FORM1" method="post" name="FORM1">
  <table width="270" border="1" cellspacing="0" cellpadding="1" align="center" bordercolordark="#ecf5ff" bordercolorlight="#6699cc" height="1">
    <tr>
      <td width="128" height="1"><div align="center"><center><p><font size="2" color="#000080">��&nbsp;&nbsp;&nbsp;       
          ��:</font>       
        </center>         
          </div>       
        <center>       
        </center> </td>       
      <td width="132" height="1" align="center"><div align="center"><center><p><input id="text1" name="name" style="height: 25; width: 146; color: #0000FF" size="20" tabindex="1"> </td>       
    </tr>       
    <tr align="center">       
      <td height="1" width="128"><div align="center"><center><p><font size="2" color="#000080">ѧ��&nbsp;       
          �ţ�</font>      
          </div>      
        </center></td>       
      <td height="1" width="132" align="center"><div align="center"><center><p><input id="password1" name="xuehao" style="height: 23; width: 146; color: #0000FF" size="20" tabindex="2">       
          </div>      
        </center> </td>       
    </tr>       
    <tr align="center">       
      <td height="1" width="128"><div align="center"><center><p><font size="2" color="#000080">�ࡡ&nbsp;       
          ����</font>      
          </div>      
        </center>        
      </td>       
      <td height="1" width="132" align="center"><div align="center"><center><p align="center"><select size="1" name="banji">   
   
            <option value="��һһ��">��һһ��</option>
            <option value="��һ����">��һ����</option>
            <option value="��һ����">��һ����</option>
            <option value="��һ�İ�">��һ�İ�</option>
            <option value="��һ���">��һ���</option>
            <option value="��һ����">��һ����</option>
            <option value="��һ�߰�">��һ�߰�</option>
            <option value="��һ�˰�">��һ�˰�</option>
            <option value="��һ�Ű�">��һ�Ű�</option>
            <option value="��һʮ��">��һʮ��</option>
            <option value="��һʮһ��">��һʮһ��</option>
            <option value="��һʮ����">��һʮ����</option>
            <option value="��һʮ����">��һʮ����</option>
            <option value="��һʮ�İ�">��һʮ�İ�</option>
            <option value="�߶�һ��">�߶�һ��</option>
            <option value="�߶�����">�߶�����</option>
            <option value="�߶�����">�߶�����</option>
            <option value="�߶��İ�">�߶��İ�</option>
            <option value="�߶����">�߶����</option>
            <option value="�߶�����">�߶�����</option>
            <option value="�߶��߰�">�߶��߰�</option>
            <option value="�߶��˰�">�߶��˰�</option>
            <option value="�߶��Ű�">�߶��Ű�</option>
            <option value="�߶�ʮ��">�߶�ʮ��</option>
            <option value="�߶�ʮһ��">�߶�ʮһ��</option>
            <option value="�߶�ʮ����">�߶�ʮ����</option>
            <option value="�߶�ʮ����">�߶�ʮ����</option>
            <option value="�߶�ʮ�İ�">�߶�ʮ�İ�</option>
            </select> 
          </div>  
        </center> </td>   
    </tr>   

    <tr align="center">   
      <td height="5" width="128"><div align="center"><center><p><input type="submit" name="Submit1" value="¼��" class="buttonface" tabindex="5"></td>   
      <td height="21" width="128" align="center"><input type="reset" name="reset" value="����" class="buttonface" tabindex="6"></td>   
    </tr>   
  </table>   
</form>   

  <table width="270" border="1" cellspacing="0" cellpadding="1" align="center" bordercolordark="#ecf5ff" bordercolorlight="#6699cc" height="29">  
    <tr>  
      <td width="260" height="5"><div align="center"><center><p><font size="2" color="#0000FF"><a href="Order.asp">���Գɼ����β鿴</a></font>    
          </div></td>   
    </tr>   
  <!--#include file="info.asp"-->
</body> 
<%END IF
END IF  
%> 
</html>  







