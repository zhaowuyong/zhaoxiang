<%@page contentType="text/html; charset=GB2312"%>
<%@page import="auctionplatform.BrowseItemController"%>
<html>
<head>
<title>������Ʒ�б�</title>
</head>
<body>
<form method="post" action="dls.jsp">
<input type="submit" name="Submit" value="�ύ������Ʒ">
</form>
<form method="post" action="BidForm.jsp">
<input type="submit" name="Submit" value="����">
</form>
<br/>
<jsp:useBean id="BrowseItemController" scope="page" class="auctionplatform.BrowseItemController"></jsp:useBean>
<%
out.print("<br>");
while(BrowseItemController.isFlag())
  {
String s[]= BrowseItemController.getItemInfo();
if(s[0]!=null){
    out.print("��Ʒ���:" +s[0]);
    out.print("&nbsp;"+"&nbsp;"+"&nbsp;"+"&nbsp;"+"&nbsp;");
    out.print("��Ʒ����:" +s[1]);
    out.print("&nbsp;"+"&nbsp;"+"&nbsp;"+"&nbsp;"+"&nbsp;");
    out.print("���ļ۸�:" +s[2]);
    out.print("&nbsp;"+"&nbsp;"+"&nbsp;"+"&nbsp;"+"&nbsp;");
    out.print("������ʼʱ��:" +s[3]);
    out.print("&nbsp;"+"&nbsp;"+"&nbsp;"+"&nbsp;"+"&nbsp;");
out.print("��������ʱ��:" +s[4]);
out.print("&nbsp;"+"&nbsp;"+"&nbsp;"+"&nbsp;"+"&nbsp;");
    out.print("��ǰ��߱���:" +s[5]);
    out.print("<br>");
}
  }
%>
</body>
</html>
