<%@ Language=VBScript %>
<!--#include file="conn.asp" -->
<%
  IF request.QueryString("teachername") <> Application("teachername") THEN 
%>
  <script>alert("��Ȩ�鿴��");</script>

<%
  ELSE
%>
<meta charset="GBK">
<html>


<meta NAME="GENERATOR" Content="Microsoft FrontPage 6.0">
<title>��������</title>

<script>
</script>
<body bgcolor="#FFFFFF" >

<table border="0" width="100%">
  <tr>
    <td width="100%">
      <p align="center" style="line-height: 150%">
		<font face="����" size="4" color="#000080">
		<span style="letter-spacing: 4pt"><%=Application("schoolname")%><%=Application("sitename")%>���Ժ�̨</span></font></td>
  </tr>
</table>

<form action="set.asp" id="FORM1" method="post" name="FORM1">
  <table width="270" border="1" cellspacing="0" cellpadding="1" align="center" bordercolordark="#ecf5ff" bordercolorlight="#6699cc" height="1">
    <tr>
      <td width="128" height="1"><div align="center"><center><p><font size="2" color="#000080">     
      ���Ա��⣺</font>       
        </center>         
          </div>       
        <center>       
        </center> </td>       
      <td width="132" height="1" align="center"><div align="center"><center><p><input id="sitename" name="sitename" value="<%=Application("sitename")%>" style="height: 25; width: 146; color: #0000FF" size="20" tabindex="1"> </td>       
    </tr>       
    <tr align="center">       
      <td height="1" width="128"><div align="center"><center><p><font size="2" color="#000080"> 
          ѧУ��</font>      
          </div>      
        </center></td>       
      <td height="1" width="132" align="center">
      <div align="center"><center><p><input id="schoolname" name="schoolname" value="<%=Application("schoolname")%>" style="height: 23; width: 146; color: #0000FF" size="20" tabindex="2">       
          </div>      
        </center> </td>       
    </tr>       
    <tr align="center">       
      <td height="1" width="128"><div align="center"><center><p><font size="2" color="#000080">��ʦ���룺
          </font>      
          </div>      
        </center>
            <td height="1" width="132" align="center"><div align="center"><center><p><input id="teachername" name="teachername" value="<%=Application("teachername")%>" style="height: 23; width: 146; color: #0000FF" size="20" tabindex="2">       
          </div>      
        </center> </td>            
      </td>
      <tr align="center">
      <td height="1" width="128"><div align="center"><center><p><font size="2" color="#000080">��ȡ��ʽ��</font></p></center></div></td>
      <td>     
      <label><input name="q_type" type="radio" value="1" />��ͷ��β��ȡ</label>
      <p>
      <label><input name="q_type" type="radio" value="0" />�����ȡ</label>
      </td>
<tr align="center">       
      <td height="1" width="128"><div align="center"><center><p><font size="2" color="#000080"> 
          ������</font>      
          </div>      
        </center></td>       
      <td height="1" width="132" align="center">
      <div align="center"><center><p><input id="q_num" name="q_num" onkeyup="value=value.replace(/[^1234567890-]+/g,'')" value="<%=Application("q_num")%>" style="height: 23; width: 146; color: #0000FF" size="20" tabindex="2">       
          </div>      
        </center> </td>       
    </tr>     
    <tr align="center">       
      <td height="1" width="128"><div align="center"><center><p><font size="2" color="#000080"> 
          ��ֵ��</font>      
          </div>      
        </center></td>       
      <td height="1" width="132" align="center">
      <div align="center"><center><p><input id="q_cost" name="q_cost" onkeyup="value=value.replace(/[^1234567890-]+/g,'')" value="<%=Application("q_cost")%>" style="height: 23; width: 146; color: #0000FF" size="20" tabindex="2">       
          </div>      
        </center> </td>       
    </tr>     
<tr align="center">
      <td height="1" width="128"><div align="center"><center><p><font size="2" color="#000080">����ʾ��</font></p></center></div></td>
      <td>     
      <label><input name="q_show" type="radio" value="1" />��ʾ</label>
      <p>
      <label><input name="q_show" type="radio" value="0" />����ʾ</label>
      </td>
      </tr>  
    </tr>   
    <tr align="center">   
      <td height="5" width="128"><div align="center"><center><p><input type="submit" name="Submit1" value="����" class="buttonface" tabindex="5"></td>   
      <td height="21" width="128" align="center"><input type="reset" name="reset" value="����" class="buttonface" tabindex="6"></td>   
    </tr>   
  </table>   
</form>   
  <table width="270" border="1" cellspacing="0" cellpadding="1" align="center" bordercolordark="#ecf5ff" bordercolorlight="#6699cc" height="29">  
    <tr>  
      <td width="260" height="5"><div align="center"><center><p><font size="2" color="#0000FF"><a href="Order.asp?teachername=<%=Application("teachername")%>">���Գɼ��鿴</a></font>    
          </div></td>   
      <td width="260" height="5"><div align="center"><center><p><font size="2" color="#0000FF"><a href="index.asp">ѧ������鿴</a></font>    
          </div></td>   
	</tr>
	<tr>
      <td width="260" height="5"><div align="center"><center><p><font size="2" color="#0000FF"><a href="create.asp?teachername=<%=Application("teachername")%>">��Ϣ¼��ģ��</a></font>    
          </div></td>   
      <td width="260" height="5"><div align="center"><center><p><font size="2" color="#0000FF"><a href="delete.asp">��Ϣɾ��ģ��</a></font>    
          </div></td>   
	</tr>
	<tr>
      <td width="260" height="5"><div align="center"><center><p><font size="2" color="#0000FF"><a href="reset.asp">���ý�ʦ����</a></font>    
          </div></td>   
      <td width="260" height="5"><div align="center"><center><p><font size="2" color="#0000FF"><a href="problem.asp">��Ŀ��Ϣ�޸�</a></font>    
          </div></td>   
    </tr>   
<!--#include file="info.asp" -->
</body> 
<%
END IF
%> 
</html>