<!-------------------------right begin------------------------------------->
	  <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" style="margin-bottom: 6">
        <tr bgcolor="#FFFFFF">
          <td height="100" colspan="2" align="center" valign="top">
            <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" style="margin-bottom: 6">
              <tr>
                <td height="100" colspan="2" bgcolor="#FFFFFF">
                  <div align="center"></div>
                  <table width="100%" height="5" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
                    <tr>
                      <td>
						<p align="center">
						<a target="_blank" href="#">
						<img src="img/banner.gif" width="100%" height="111" border="0"></a></td>
                    </tr>
                    <tr>
                      <td width=478 height="2" style="border-bottom:#cccccc 1px solid" bgcolor="f7f7f7">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="8%">　</td>
                              <td height="25" valign="middle">
							  <%=sort_name%>
            <%
			sql="select * from Nsort where sort_id="+sort_id;
			rs=mdb.executeQuery(sql);
			while(rs.next())
			{
			%>
			>><a href="nsort.jsp?sort_id=<%=sort_id%>&nsort_id=<%=rs.getInt("nsort_id")%>"><%=rs.getString("Nsort_name")%></a>
			<%
			}
		    rs.next();
		%>
							  </td>
                          </tr>
                        </table>
                      </td>
                    </tr>
                    <tr>
                      <td width="100%">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td valign="top">
                              <div align="center"> </div>
                              <table width="99%" border="0" cellspacing="0" cellpadding="0" align="center">
                                <tr>
                                  <td valign="top">
                                    <table width="100%" border="0" cellspacing="0" cellpadding="0" >

<%
int PageSize =10; //设置每张网页显示两条记录
int ShowPage = 1; //设置欲显示的页数
int RowCount = 0; //ResultSet的记录数目
int PageCount = 0; //ResultSet分页后的总页数
int duoyu=0;
sql="select * from db01 where sort_id="+sort_id+" order by ItemID desc ";
rs=mdb.executeQuery(sql);
if(rs.next())
 {
  //建立ResultSet(结果集)对象，并执行SQL语句
  rs.last(); //将指标移至最后一笔记录
  RowCount=rs.getRow();
  duoyu=RowCount % PageSize;
  if(duoyu==0)
  {
  PageCount=RowCount/PageSize;
  }
  else{
  PageCount=(RowCount-duoyu)/PageSize;
  PageCount++;
  }
 // PageCount=((RowCount % PageSize) == 0?(RowCount/PageSize) : (RowCount/PageSize)+1);
  //计算显示的页数
String ToPage = request.getParameter("ToPage");
if(ToPage==""){ToPage="1";}
//判断是否可正确取得ToPage参数,
//可取得则表示JSP网页应显示特定分页记录的语句
if(ToPage!=""){
   ShowPage =Cint(ToPage); //取得指定显示的分页页数
   //下面的if语句将判断用户输入的页数是否正确
  if(ShowPage > PageCount)
   { //判断指定页数是否大于总页数, 是则设置显示最后一页
    ShowPage = PageCount;
   }
   else if(ShowPage <= 0)
   { //若指定页数小于0, 则设置显示第一页的记录
     ShowPage = 1;
   }
}
rs.absolute((ShowPage - 1) * PageSize+1);
//计算欲显示页的第一笔记录位置
%>
                                          <!----------------------one showing unit------------------------------->
										   <%
//利用For循环配合PageSize属性输出一页中的记录
int i=1,ItemID,BidPrice,StartingPrice,linshi;
String hw_pic,ItemTitle,Description;
rs.previous();
while(rs.next()&i<= PageSize)
{
i++;
 ItemID=rs.getInt("ItemID");
 hw_pic=rs.getString("hw_pic");
 ItemTitle=rs.getString("ItemTitle");
 Description=rs.getString("Description");
 StartingPrice=rs.getInt("StartingPrice");
 BidPrice=rs.getInt("BidPrice");

%>
        <tr>
         <td valign="top">
		  <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                                                  <tr>
                                                    <td width="25%" rowspan="5" bgcolor="#FFFFFF" align="left"><a href="views.jsp?ItemID=<%=ItemID%>"><img border="0" src="<%=hw_pic%>" width="120" height="85"></a>
                                                      <div align="right"></div>
                                                      <div align="right"></div>
                                                      <div align="right"></div>
                                                    </td>
                                                    <td height="25" bgcolor="#FFFFFF" width="75%">　</td>
                                                  </tr>
                                                  <tr>
                                                    <td height="28" bgcolor="#FFFFFF" width="75%">
                                                      <a href="views.jsp?ItemID=<%=ItemID%>"><font color="#006699"><u><%=ItemTitle%></u></font></a></td>
                                                  </tr>
                                                  <tr>
                                                    <td height="28" style="line-height:20px" bgcolor="#FFFFFF" width="75%"><%=Description%></td>
                                                  </tr>
                                                  <tr>
                                                    <td height="28" bgcolor="#FFFFFF" width="75%">市场价格：<s>￥<%=0%></s>元　底价：￥<%=StartingPrice%>元　最高价：￥<%=BidPrice%>元<br>
<%

                  if((String)session.getValue("user_name")!=null)
                  {
                  %>
                 <a href="javascript:openScript('BidForm.jsp',460,300)">竞拍<img border="0" src="img/order.gif" align="middle" width="21" height="15"></a>
                  <%
                   }else
                   {
                   }
                  %>

</td>
                                                  </tr>
                                                  <tr>
                                                    <td height="25" bgcolor="#FFFFFF" width="75%">　</td>

                                                  </tr>
                                                </table>
												<table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                  <tr>
                                                    <td  height="1"></td>
                                                  </tr>
                                                </table>

		  </td>
        </tr>
        <%
//下面的if判断语句用于防止输出最后一页记录时,
//将记录指标移至最后一笔记录之后
 //跳出for循环
}
%>
										  <!-----------------------shonwing unit end----------------------------------------------->

                                    </table>
                                  </td>
                                </tr>
                              </table>
                            </td>
                          </tr>
                        </table>
                      </td>
                    </tr>
                    <tr>
                      <td width="100%" height="20">
                        <div align="center"></div>
                      </td>
                    </tr>
                    <tr>
                      <td width=478 height="23">
                        <p align="right"><%=RowCount%>第<%=ShowPage%>页/共<%=PageCount%>页&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <%linshi=ShowPage-1;if(linshi>0){%><a href="sort.jsp?sort_id=<%=sort_id%>&ToPage=<%=linshi%>">上一页</a>
                          <%
						  }else
						  {%>
                          上一页
                          <%}%>
                          　
                          <%
						  linshi=ShowPage+1;
						  if(linshi<=PageCount){%>
                          <a href="sort.jsp?sort_id=<%=sort_id%>&amp;ToPage=<%=linshi%>">下一页</a>
                          <%
						  }else
						  {%>
                          下一页
                          <%}%>
                          </font></p>
                      </td>
                    </tr>
                  </table>
                </td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
	  <!-------------------------right end------------------------------------->
	  <%
	  }//找到相应的小类的产品

	  %>