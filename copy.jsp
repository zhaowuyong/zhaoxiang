
<hr color="#FEA5FE" width="778" size="1">




<div align="center">
  <center>
<table hwidth=778 border=0 width="778" style="border-collapse: collapse" bordercolor="#111111" cellpadding="0" cellspacing="0">
  <tr bgcolor=#ff0000>
    <td colspan=2 bgcolor="#FEA5FE">
     &nbsp;
    </td>
  </tr>
</table>
  </center>
</div>
<div align="center">
  <center>
<table style="BORDER-COLLAPSE: collapse" cellspacing=0
cellpadding=0 width=778 border=0>
  <tr>
<script src="#"></script>
<%
sql="select * from system";
rs=mdb.executeQuery(sql);
if(rs.next())
{
%>

  <td width=758 height=25 bgcolor="#FFE1FF" > <p align=center><font face="����">&copy;</font>Copyright2003 <%=rs.getString("web")%> All Rights Reserved <br>
          �ͻ������������䣺<%=rs.getString("mail")%> ����ֱ����<%=rs.getString("tel")%>
 
          ��˾��ַ��<%=rs.getString("ymaddr")%> �ʱࣺ<%=rs.getString("code")%><br><%=rs.getString("support")%></td></tr>
</table>
  </center>
</div>
<%
}
rs.close();
mdb.Close();
%>