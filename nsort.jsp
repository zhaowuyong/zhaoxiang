<%@ page contentType="text/html;charset=GBK" language="java" import="java.sql.*" %>
<%@ page autoFlush="true" errorPage="error.html"%>
<html>
<%@ include file="top.jsp"%>

<link href="css.css" rel="stylesheet" type="text/css">
<%
	
	int sort_id,  nsort_id;
	String sort_name,Nsort_name="";
	sort_name="�޴���";
	sort_id=0;
	nsort_id=0;
	if(request.getParameter("sort_id")==""||request.getParameter("nsort_id")=="")
	   {
	   response.sendRedirect("index.jsp");
	   }
	else
	{
	sort_id=Cint(request.getParameter("sort_id"));
	nsort_id=Cint(request.getParameter("nsort_id"));
	 sql="select * from Nsort where Nsort_id= "+nsort_id;
    rs=mdb.executeQuery(sql);
 	if(rs.next()){
		Nsort_name=rs.getString("Nsort_name");
		}
	rs.close();
 %>

<table width=778 border=0 align="center" cellpadding=0 cellspacing=0>
  <!--DWLayoutTable-->
  <tr> 
    <td width="778" height=426 valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
        <!--DWLayoutTable-->
        <tr> 
          <td width="181" height="426" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
              <!--DWLayoutTable-->
              <tr> 
                <td height=101 valign="top"> <table width="180" border="0" cellspacing="0" cellpadding="0" align="center">
        <tr> 
          <td valign="top"> 
            <!--�Ƿ��½������ʾ-->
            <%@ include file="dengluyufou.jsp"%>
          </td>
        </tr>
      </table>
      <table width="100%" border="0" cellspacing="0" cellpadding="0" height="5">
        <tr> 
          <td></td>
        </tr>
        <tr> 
          <td></td>
        </tr>
      </table>
      <!--------------------search page------------------------------>
      <%@ include file="in-search.jsp"%>
      <table width="100%" border="0" cellspacing="0" cellpadding="0" height="5">
        <tr> 
          <td> <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td>��</td>
              </tr>
            </table>
            <%@ include file="topsort.jsp"%>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td>��</td>
              </tr>
              <tr> 
                <td align="center"> 
                  <!-------------hot begin------------------>
                  <%@ include file="hoton.jsp"%>
                  <!------------hot end--------------->
                </td>
              </tr>
              <tr> </table></td>
        </tr>
      </table></td>
              </tr>
            </table></td>
          <td width="12">��</td>
          <td width="571" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
              <!--DWLayoutTable-->
              <tr> 
                <td width="571" height="426" valign="top"> 
                  
                  <div align="center"><%@ include file="right2.jsp"%></div>
                  </td>
              </tr>
            </table></td>
          <td width="14">��</td>
        </tr>
      </table></td>
  </tr>
</table>
</td>
    </tr> 
</table>
</table>
</table>
</table>
</table>
</table>
<%
}//�ж��Ƿ���С��ID����
%>

<%@ include file="copy.jsp"%>