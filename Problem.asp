<!--#include file="conn.asp" -->
<%
	Set rs=conn.Execute("select * from test")

	num=request.QueryString("num")
	for i= 1 to num-1
		rs.movenext
	next 
%>

<html>

<meta charset="GBK">
<body>
<center>
<form action="probset.asp" id="FORM1" method="post" name="FORM1">
<center>�� <input id="cord" name="cord" value="<%=rs(1)%>"> ����¼</center>
<p>�Ƿ�Ϊѡ����</p><input id="select" name="select" value="<%=rs(0)%>">
<br/>
<p>����</p><textarea   style="overflow:visible;height:100px;width:100px"  id="problem" name="problem"> <%=rs(2)%></textarea>
<br/>
<p>Aѡ��</p><textarea     style="overflow:visible;height:100px;width:100px"  id="a" name="a"><%=rs(3)%></textarea>
<br/>
<p>Bѡ��</p><textarea   style="overflow:visible;height:100px;width:100px"    id="b" name="b"><%=rs(4)%></textarea>
<br/>

<p>Cѡ��</p><textarea   style="overflow:visible;height:100px;width:100px"  id="c" name="c"><%=rs(5)%></textarea>
<br/>
<p>Dѡ��</p><textarea   style="overflow:visible;height:100px;width:100px"  id="d" name="d"><%=rs(6)%></textarea>
<br/>
<input type="submit" value="�޸�">
</form>


<script>
function next() {
	window.location.href="problem.asp?num=<%=request.QueryString("num")+1%>"
}
function previous(){
	window.location.href="problem.asp?num=<%=request.QueryString("num")-1%>"
}
</script>
<button onclick="previous()">��һ����¼</button>
<button onclick="next()">��һ����¼</button>
</body>
</html>