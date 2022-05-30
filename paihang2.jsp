 <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <%
sql="select top 11 * from db01 order by BidPrice DESC";
rs=mdb.executeQuery(sql);
if(!rs.next())
{
out.print("本站目前没有成交任何商品");
 }else
{
rs.previous();
i=0;
int ItemID,BidPrice;
String ItemTitle;
while(rs.next()&i<=10){
	ItemID=rs.getInt("ItemID");
	ItemTitle=rs.getString("ItemTitle");
	BidPrice=rs.getInt("BidPrice");
                  %>

                                      <tr>
                                        <td width="70%" height="22" bgcolor="#FFE1FF">&nbsp;
                                          <a href="views.jsp?ItemID=<%=ItemID%>"><%=ItemTitle%></a></td>
                                        <td width="30%" bgcolor="#FFE1FF"><%=BidPrice%></td>
                                      </tr>

                                    <%
    i=i+1;

      }
}

 %>                                 </table>