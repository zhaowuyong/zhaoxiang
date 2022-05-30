<%@ include file="top.jsp"%>

<td width="181">
	  <!--'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	  '''''''''''''''''''''用户信息和登陆''''''''''''''''''''''''''''''''''''
	  ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''-->
      <table width="180" border="0" cellspacing="0" cellpadding="0" align="center">
        <tr>
          <td valign="top">
            <table border="0" width="180" cellspacing="0" cellpadding="0" height="18">
              <%
//是否登陆
if((String)session.getValue("user_name")!=null)
               {
			  %>
              <tr>
 <%     sql="select * from member where user_name='"+(String)session.getValue("user_name")+"'";
        rs=mdb.executeQuery(sql);
  %>
              </tr>
              <tr>
                <td width="100%" height="18">
                  <table width="100%" border="0" cellspacing="1" cellpadding="0">
                    <tr>
                      <td>
                        <table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFE1FF" style="border-collapse: collapse" bordercolor="#111111">
                          <tr>
                            <td>
                              <img border="0" src="img/promo_list_top.gif" width="100%" height="4"></td>
                          </tr>
                          <tr>
                            <td width="86%" height="20" bgcolor="#FEA5FE">
                              <div align="center"><b>用户信息</b></div>
                            </td>
                          </tr>
                          <tr>
                            <td>
                              <table border="0" width="100%" cellspacing="0" bgcolor="#FFE1FF" style="border-collapse: collapse" bordercolor="#111111" cellpadding="0">
                                <tr>
                                  <td width="100%" colspan="2" bgcolor="#FFFFFF">
                                  </td>
                                </tr>
                                <tr>
                                  <td height="25" bgcolor="#FFE1FF" valign="top">
                                    <img src="img/pics/main_head_menu002.gif" width="13" height="13" align="absmiddle">
                                    用户名:</td>
                                  <td height="25" bgcolor="#FFE1FF"><%=rs.getString("user_name")%></td>
                                </tr>
                                <tr>
                                  <td height="25" bgcolor="#FFE1FF" valign="top"><img src="img/pics/main_head_menu004.gif" width="13" height="13" align="absmiddle">
                                    地址:</td>
                                  <td height="25" bgcolor="#FFE1FF"><%=rs.getString("user_adds")%></td>
                                </tr>
                                <tr>
                                  <td height="25" bgcolor="#FFE1FF" valign="top"><img src="img/pics/main_head_menu001.gif" width="13" height="13" align="absmiddle"> E-mail:</td>
                                  <td height="25" bgcolor="#FFE1FF"><%=rs.getString("user_mail")%></td>
                                </tr>
                                <tr>
                                  <td height="25" bgcolor="#FFE1FF" valign="top"><img src="img/pics/main_head_menu005.gif" width="13" height="13" align="absmiddle">
                                    电话:</td>
                                  <td height="25" bgcolor="#FFE1FF"><%=rs.getString("user_tel")%></td>
                                </tr>
                              </table>
                            </td>
                          </tr>
                        </table>
                      </td>
                    </tr>
                  </table>
                  <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td height="5"></td>
                    </tr>
                  </table>
                </td>
              </tr>
<%


 }else
 //没有登陆
 {
 %>
              <tr>
                <td width="100%" height="18">
                  <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr> </tr>
                  </table>
                  <table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFE1FF" style="border-collapse: collapse" bordercolor="#111111">
                    <tr>
                      <td align="center">
                      <img border="0" src="img/promo_list_top.gif" width="100%" height="4"></td>
                    </tr>
                    <tr>
                      <td width="86%" align="center" height="20" bgcolor="#FEA5FE"><b>用户登陆</b></td>
                    </tr>
                    <form method="POST" action="login.jsp">
                      <tr>
                        <td height="110" bgcolor="#FFE1FF">
                          <table width="95%" border="0" align="center" cellpadding="0" cellspacing="5">
                            <tr>
                              <td width="32%" bgcolor="#FFE1FF">
                                <div align="center">客户：</div>
                              </td>
                              <td width="68%" bgcolor="#FFE1FF">
                                <div align="center">
                                  <input name="user_name" type="text" class=input id="user_name" style="FONT-SIZE: 12px; WIDTH: 110px" size="10" maxlength="18">
                                </div>
                              </td>
                            </tr>
                            <tr>
                              <td bgcolor="#FFE1FF">
                                <div align="center">密码：</div>
                              </td>
                              <td bgcolor="#FFE1FF">
                                <div align="center">
                                  <input style="FONT-SIZE: 12px; WIDTH: 110px" type="password" name="user_pass" size="10" class=input maxlength="18">
                                </div>
                              </td>
                            </tr>
                          </table>
                          <div align="center"></div>
                          <div align="center">
                            <center>
                          <table width="90%" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFE1FF" style="border-collapse: collapse" bordercolor="#111111">
                            <tr>
                              <td width="80"><a href="reg.jsp" target="_blank"><img src="img/pics/reg.gif" width="81" height="25" border="0"></a></td>
                              <td>
                                <div align="center">
                                  <input
      align=absMiddle alt=进入 cache name=submit2
      src="img/pics/login.gif" type=image tppabs="" width="56" height="25">
                                </div>
                              </td>
                            </tr>
                          </table>
                            </center>
                          </div>
                        </td>
                      </tr>
                    </form>
                  </table>
                  <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td height="5"></td>
                    </tr>
                  </table>
<%
}//判断登陆结束
%>
                </td>
              </tr>
            </table>
          </td>
        </tr>
      </table>

	  <!--'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	  ''''''''''''''''''''''''''''用户信息和登陆结束''''''''''''''''''''''''''''''''''''''''''
	  ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''-->
      <table width="100%" border="0" cellspacing="0" cellpadding="0" height="5">
        <tr>
          <td></td>
        </tr>
        <tr>
          <td></td>
        </tr>
      </table>
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td  align="center">
          <img border="0" src="img/promo_list_top.gif" width="100%" height="4"></td>
        </tr>
        <tr>
          <td bgcolor="#FEA5FE" height="20" align="center"><b>型号搜索</b></td>
        </tr>
        <tr>
          <td>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td>
                  <table border="0" width="100%" cellspacing="0" height="70">
                    <tr>
                      <td height="28" bgcolor="#FFE1FF" align="center">输入商品关键字查询商品信息</td>
                    </tr>
                    <tr>
                      <form method="POST" action="search.jsp">
                        <td valign="top" bgcolor="#FFE1FF">
                          <input type="text" name="hw_name" size="15" class=input>
                          <input type="image" border="0" name="imageField" src="img/serarch.gif" width="34" height="20">
                        </td>
                      </form>
                    </tr>
                  </table>
                </td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
      <table width="100%" border="0" cellspacing="0" cellpadding="0" height="5">
        <tr>
          <td>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td>　</td>
              </tr>
            </table>
            <table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFE1FF" style="border-collapse: collapse" bordercolor="#111111">
              <tr>
                <td height="18">
                  <table width="100%" border="0" cellspacing="0" cellpadding="0" height="23">
                    <tr>
                      <td align="center" height="4">
                      <img border="0" src="img/promo_list_top.gif" width="100%" height="4"></td>
                    </tr>
                    <tr>
                      <td align="center" height="19" bgcolor="#FEA5FE"> <b>商品分类</b></td>
                    </tr>
                  </table>
                </td>
              </tr>
              <tr>
                <td valign="top">
                  <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td>
                        <table width="100%" border="0" cellspacing="0" cellpadding="0" style="border-collapse: collapse" bordercolor="#111111" height="16">
                          <tr>
                            <td valign="top" height="16">
                              <%
	sql="select * from sort";
	rs=mdb.executeQuery(sql);
	if(!rs.next()){
		out.print("没有任何分类");
		}
	else
	{
	  while(rs.next())
	   {
%>
                              <table cellspacing=0 cellpadding=0 width=95% background=""
                  border=0>
                                <tbody>
                                <tr height=22>
                                  <td width=34 align="center"><img
                      src="img/dot.gif" width="15" height="15"></td>
                                  <td width="124"><a href="sort.jsp?sort_id=<%=rs.getInt("sort_id")%>"><u><%=rs.getString("sort_name")%></u></a></td>
                                </tr>

                                </tbody>
                              </table>
<%
	   }


	}



%>
                            </td>
                          </tr>
                        </table>
                      </td>
                    </tr>
                  </table>
                </td>
              </tr>
            </table>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td>　</td>
              </tr>
              <tr>
                <td align="center"><table width="100%" border="0" cellspacing="0" cellpadding="0" height="18">
                    <tr>
                      <td align="center">
                      <img border="0" src="img/promo_list_top.gif" width="100%" height="4"></td>
                    </tr>
                    <tr>
                      <td align="center" height="20" bgcolor="#FEA5FE"> <b>站内公告</b></td>
                    </tr><tr>
                      <td bgcolor="#FFE1FF">
<%
sql="select top 3 * from pub order by ID DESC";
rs=mdb.executeQuery(sql);
if(!rs.next())
 {
            %>
                                <p style="margin:0 5; ">暂无公告<br>
                                <%
 }
 int i=0;
while(rs.next())
 {
			i=i+1;
			%>
                                <p style="margin:5; "><b><%=rs.getString("title")%></b><br>
                              <%=rs.getString("msg")%> <br>
                              <%=rs.getDate("date")%></p>
<%
if(i>=3){
   break;
   }

}

%></td></tr></table>


                 </td>
              </tr>
			  <tr>
            </table>
          </td>
        </tr>
      </table>
    </td>
	<%@ include file="top.jsp"%>