<%@ page contentType="text/html;charset=GBK" language="java" import="java.sql.*" errorPage="" %>
<html>
<%@ include file="top.jsp"%>
<link href="css.css" rel="stylesheet" type="text/css">
<%
sql="select top 1 * from system";
rs=mdb.executeQuery(sql);
if(rs.next()){
%>
<div align="center">
  <center>
<table width="500" style="border-collapse: collapse" bordercolor="#111111" cellpadding="0" cellspacing="0">
  <tr>
    <td bgcolor=#FEA5FE height=20><a name=1></a>�� �� �� �� �� ʽ</td>
  </tr>
  <tr>
    <td>������ͨ��������ǵ�<%=rs.getString("sitename")%>(<%=rs.getString("web")%> ) �����߹�����Ʒ��<p align="center">
    <img height=241 src="img/liucheng.gif"  width=186>
    </td>
  </tr>
  <tr>
    <td bgcolor=#FEA5FE height=20><a name=2></a>�� �� �� �� �� ʽ</td>
  </tr>
  <tr>
    <td height=30>������ͨ���������ǵĶ�������:<%=rs.getString("tel")%> ��ϵ��: <%=rs.getString("name")%>������Ʒ��ѯ�򶩻�����Ʒ��ѯ����OICQ����:<%=rs.getString("oicq")%>
    </td>
  </tr>
  <tr>
    <td bgcolor=#FEA5FE height=20><a name=4></a>�� �� �� �� �� ʽ</td>
  </tr>
  <tr>
    <td>���棺<%=rs.getString("fax")%></td>
  </tr>
</table>
  </center>
</div>
<%
}
%>
<%@ include file="copy.jsp"%>