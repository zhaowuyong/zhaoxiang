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


<table style="border-collapse: collapse" bordercolor="#111111" cellpadding="0" cellspacing="0" width="500">
  <tbody> 
  <tr> 
    <td align="center" height="18"> 
      <p>��<a name=1></a> �� �� �� �� ʽ</p>
    </td>
  </tr>
  <tr style="HEIGHT: 15pt"> 
    <td height="50" bordercolor="#C0C0C0"> ��<a name=2></a> �� �� ��</td>
  </tr>
  <tr> 
    <td height="86"> 
       �տ��ַ��<%=rs.getString("ymaddr")%><br><br>  
       �տ��ˣ� <%=rs.getString("ymname")%><br><br> 
       �������룺<%=rs.getString("code")%><br><br>
    </td>
  </tr>
  <tr style="HEIGHT: 15pt"> 
    <td height="52">��<a name=3></a> �� �� ��</td>
  </tr>
  <tr> 
      <td height="128">���У�<%=rs.getString("maddr")%><br><br>
         �ʺţ�<%=rs.getString("msn")%><br><br>
        ������<%=rs.getString("mname")%><br><br>
          ��ѡ�����ʺ����ĸ��ʽ,����ʱͨ���绰<%=rs.getString("tel")%>����ϵ�ˣ�<%=rs.getString("name")%>����<a href="mailto:<%=rs.getString("mail")%>">�����ʼ�</a>֪ͨ����!�Ա㼰ʱ����...</td>
  </tr>
  </tbody>
</table>
  </center>
</div>
<%}
%>
<%@ include file="copy.jsp"%>