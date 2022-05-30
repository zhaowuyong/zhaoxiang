<!--#include file="conn.asp"--> 
<%
dim sql, rs
Set rs= Server.CreateObject("ADODB.Recordset") 
sql="select * from admin  order by admin_id desc " 
rs.open sql,conn,1,1 
%>
<%=rs("admin_name")%><br>
<%=rs("admin_pass")%>