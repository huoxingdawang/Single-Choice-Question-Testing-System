<!--#include file="conn.asp" -->
<%
  IF request.QueryString("teachername") <> Application("teachername") THEN 
%>
  <script>alert("无权查看！");</script>

<%
  ELSE
%>
<%
	Set rs=conn.Execute("select * from test")
	 rs.movefirst
	num=request.form("cord")
	for i= 1 to num-1
		rs.movenext
	next 
	conn.Execute("update test set question = '"&request.form("problem")&"' where (num = "&request.form("cord")&")")
	conn.Execute("update test set A = '"+request.form("a")+"' where (num = "+request.form("cord")+")")
	conn.Execute("update test set B = '"+request.form("b")+"' where (num = "+request.form("cord")+")")
	conn.Execute("update test set C = '"+request.form("c")+"' where (num = "+request.form("cord")+")")
	conn.Execute("update test set D = '"+request.form("d")+"' where (num = "+request.form("cord")+")")
	conn.Execute("update test set type = '"+request.form("select")+"' where (num = "+request.form("cord")+")")
	'response.write ("update test set answer = '"+request.form("answer")+"' where (num = "+request.form("cord")+")")
	conn.Execute("update test set ans = '"+request.form("answer")+"' where (num = "+request.form("cord")+")")
	response.redirect "problem.asp?teachername="+Application("teachername")
%>
<%END IF%>