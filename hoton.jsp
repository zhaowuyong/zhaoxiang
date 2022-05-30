<table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td height="20" align="center" bgcolor="#FEA5FE"><b>热门型号</b></td>
                      </tr>
                      <tr>
                        <td> <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                              <td bgcolor="#FFE1FF">
                                <%


	sql="select top 10 * from db01 where sort_id="+sort_id+" order by BidPrice desc" ;
	 rs=mdb.executeQuery(sql);
	int count=0;
	if(rs!=null){
		  while(rs.next())
		   {
			   count++;
			   if(count>8){break;}
             out.print("<li><A href=views.jsp?ItemID="+rs.getInt("ItemID")+">"+rs.getString("ItemTitle")+" "+rs.getInt("BidPrice")+"</A></li>");

	       }

	}
	else{
		out.print("目前没有该类商品的热销产品"+sort_id);
	}


%>
                              </td>
                            </tr>
                          </table></td>
                      </tr>
                    </table>