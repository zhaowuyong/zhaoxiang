<%@ page contentType="text/html;charset=GBK" language="java" import="java.sql.*" errorPage="" %>

<link href="css.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<%@page import="auctionplatform.BidController"%>
<html>
<head>
<title>���ı�</title>
</head>
<body>
<form method="post" action="BidForm.jsp">
  <br>
  <table width="400" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
    <td width="100%">
      <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td width="100%">
    <img border="0" src="img/promo_list_top.gif" width="100%" height="4"></td>
        </tr>
        <tr>
            <td width="100%" bgcolor="#FEA5FE" align="center" height="18">�û���������</td>
        </tr>
        <tr>
            <td width="100%" bgcolor="#FFE1FF"> <table width="100%" height="34" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="398" height="120"><br>
                    <div align="center">
                      <center>
                    <table width="90%" border="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" cellpadding="0">
                      <tr>
                        <td width="21%" height="25"><div align="right">�û�����</div></td>
                        <td width="79%" height="25">&nbsp;&nbsp;<input type="text" name="buyerName"/></td>
                      </tr>
                      <tr>
                        <td width="21%" height="25"><div align="right">��Ʒ��ţ�</div></td>
                        <td width="79%" height="25">��<input type="text" name="itemID"/></td>
                      </tr>
                      <tr>
                        <td width="21%" height="25"><div align="right">���ļ۸�</div></td>
                        <td width="79%" height="25">��<input type="text" name="bidPrice"/></td>
                      </tr>
                      
                      
                          </table></td>
                      </tr>
                     <tr><td><div align="center">
                        <input type="submit" name="Submit" value="�ύ"></td>
                      </tr>
                    </table>
                      </center>
                  </div>
                    <table width="100%" height="25" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td height="35" valign="middle"><div align="center"><img src="img/pics/seperator.gif" width="359" height="1"></div></td>
                      </tr>
                    </table></td></tr>
              </table>

            </td>
        </tr>
      </table>
    </td>
  </tr>
</table>
</form>
<jsp:useBean id="BidController" class="auctionplatform.BidController" scope="request"></jsp:useBean>
<jsp:setProperty name="BidController" property="*"/>
<%
  if (BidController.getItemID() != null && BidController.getBuyerName() != null && BidController.getBidPrice() != null)
  {
    BidController.saveBidInfo();
    if (!BidController.isFlag1())
    {
      out.println("��Ʒ����������!������������ı���Ƿ���Ч�ڻ����Ƿ��г���������ķǷ��ַ�!");
      out.print("<br>");
    }
    else if (!BidController.isFlag2())
    {
      out.println("���ı����������!������������ı����Ƿ���ڵ�ǰ����߱��ۻ����Ƿ��г���������ķǷ��ַ�!");
      out.print("<br>");
    }
    else
    {
      out.println("��Ϣ�ѱ��ύ!");
    }
  }
  else
  {
    out.println("��Ϣδ���ύ,��������������Ϣ!");
  }
%>
<br/>
<br/>
<br/>
<tr> 
    <td width="400" height="16" valign="top"><div align="center"><a href=# onclick="javasrcript:window.close();">�رմ���</a></div></td>
  </tr>
</body>
</html>