<%@page contentType="text/html; charset=GB2312"%>
<%@page import="auctionplatform.BrowseItemController"%>
<html>
<head>
<title>拍卖物品列表</title>
</head>
<body>
<form method="post" action="dls.jsp">
<input type="submit" name="Submit" value="提交拍卖物品">
</form>
<form method="post" action="BidForm.jsp">
<input type="submit" name="Submit" value="竞拍">
</form>
<br/>
<jsp:useBean id="BrowseItemController" scope="page" class="auctionplatform.BrowseItemController"></jsp:useBean>
<%
out.print("<br>");
while(BrowseItemController.isFlag())
  {
String s[]= BrowseItemController.getItemInfo();
if(s[0]!=null){
    out.print("物品编号:" +s[0]);
    out.print("&nbsp;"+"&nbsp;"+"&nbsp;"+"&nbsp;"+"&nbsp;");
    out.print("物品名称:" +s[1]);
    out.print("&nbsp;"+"&nbsp;"+"&nbsp;"+"&nbsp;"+"&nbsp;");
    out.print("起拍价格:" +s[2]);
    out.print("&nbsp;"+"&nbsp;"+"&nbsp;"+"&nbsp;"+"&nbsp;");
    out.print("拍卖开始时间:" +s[3]);
    out.print("&nbsp;"+"&nbsp;"+"&nbsp;"+"&nbsp;"+"&nbsp;");
out.print("拍卖结束时间:" +s[4]);
out.print("&nbsp;"+"&nbsp;"+"&nbsp;"+"&nbsp;"+"&nbsp;");
    out.print("当前最高报价:" +s[5]);
    out.print("<br>");
}
  }
%>
</body>
</html>
