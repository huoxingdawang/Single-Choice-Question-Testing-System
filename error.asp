<html>
<%
Session("error")=true
%>
<script>
alert("������Ϣ����ȷ����֤�롢ѧ�š��������༶����");
function sleep(delay) {
  var start = (new Date()).getTime();
  while ((new Date()).getTime() - start < delay) {
    continue;
  }
 
}
sleep(100);
 location.href="index.asp"

</script>

</html>