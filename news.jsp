<%@ page contentType="text/html;charset=GBK" language="java" import="java.sql.*,java.util.*" errorPage="" %>
<html>
<%@ include file="top.jsp"%>

<link href="css.css" rel="stylesheet" type="text/css">

        <div align="center">
          <center>
        
    <table width="760" border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" >
      <!--DWLayoutTable-->
      <%
	  String str=request.getParameter("news_id");
	  if(str==""){str="1";}
	  int news_id=Cint(str);
      sql="select * from news where news_id="+news_id;
      rs=mdb.executeQuery(sql);
      if (rs.next())
      {%>
      <tr> 
        <td width="760"  height="25" valign="top" ><table width="100%" border="0" cellpadding="0" cellspacing="0">
            <!--DWLayoutTable-->
            <tr> 
              <td width="760"  height="25" valign="top" ><div align="center"><A href="allnews.asp">��������</A>>><%=rs.getString("news_title")%></div></td>
            </tr>
          </table></td>
      </tr>
      <tr> 
        <td height="200" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
            <!--DWLayoutTable-->
            <tr> 
              <td width="760" height="200" valign="top"><div align="center">���ڣ�<%=rs.getDate("news_date")%></div>
                <div align="center"> 
                  <div align="left"> 
                    <pre><%=rs.getString("news_content")%></pre>
                  </div>
                </div></td>
            </tr>
          </table></td>
      </tr>
    </table>
          </center>
</div>

          <%}
		  else{
		  out.print("�����Ų����ڻ��Ѿ���ɾ��!");
		  }
%>
<%@ include file="copy.jsp"%>
</body>
</html>