<%@ page contentType="text/html;charset=GBK" language="java" import="java.sql.*" errorPage="" %>
<%@ include file="top.jsp"%>
<link href="css.css" rel="stylesheet" type="text/css">
        <div align="center">
          <center>
        <table width="600" border="0" cellpadding="0" cellspacing="0" style="margin-bottom: 6; border-collapse:collapse" bordercolor="#111111">
          <tr>
            <td width="99%" align="center" bgcolor="#FEA5FE" height="25"><b>�������</b></td>
          </tr>
          <tr>
            <td height="100" colspan="2" bgcolor="#FFE1FF"> <div align="center"></div>
              <table border="0" width="500" cellspacing="0" cellpadding="0" height="5" align="center">
                <%String ItemID,ItemTitle,StartingPrice,AuctionStartTime,AuctionEndTime,BidPrice;

                  ItemTitle=getStr(request.getParameter("ItemTitle"));
                  sql="select * from db01 where ItemTitle like '%"+ItemTitle+"%' order by ItemID DESC";
				  rs=mdb.executeQuery(sql);
%>    <tr>
                <td width="10%">��Ʒ���</td>

                <td width="10%">��Ʒ����</td>

                <td width="10%">���ļ۸�</td>

                <td width="20%">������ʼʱ��</td>

                <td width="20%">��������ʱ��</td>

                <td width="10%">��ǰ��߱���</td>
                <tr>

<%

    if(!rs.next()){
    %>
                <tr>
                  <td valign="middle" width="380"><div align="center">û����Ҫ�ҵ���Ʒ������ȷ����Ʒ�����</div></td>
                </tr>
                <%}
		else{rs.previous();
			%>
                <tr>
                  <td>��</td>
                </tr>
                <%while(rs.next()){%>
               <tr>
                  <td width="10%"><%=rs.getString("ItemID")%></td>
                  <td width="20%"><a href="views.jsp?ItemID=<%=rs.getString("ItemID")%>"><b class="dz1"><%=rs.getString("ItemTitle")%></b></a></td>
                  <td width="10%"><%=rs.getInt("StartingPrice")%></td>
                  <td width="20%"><%=rs.getString("AuctionStartTime")%></td>
                  <td width="10%"><%=rs.getString("AuctionEndTime")%></td>
                  <td width="15%"><%=rs.getString("BidPrice")%></td>
                  <%

                  if((String)session.getValue("user_name")!=null)
                  {
                  %>
                 <td width="15%" bgcolor="#FFE1FF"><a href="javascript:openScript('BidForm.jsp',460,300)">����</a><td>
                  <%
                   }else
                   {
                   }
                  %>


                </tr>

                <%
			}
		}%>
              </table>
              <br> <table width="100%" height="25" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td valign="middle"><div align="center"><img src="img/pics/seperator.gif" width="359" height="1"></div></td>
                </tr>
              </table>
              <br> </td>
          </tr>
        </table>
          </center>
</div>
<%@ include file="copy.jsp"%>