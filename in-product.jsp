<table width="100%" border="0" align="center" cellpadding="0" cellspacing="1" style="margin-bottom: 6">
        <tr bgcolor="#FFFFFF">
          <td height="100" colspan="2" align="center">
            <div align="center"></div>
            <table width="95%" height="5" border="0" align="center" cellpadding="0" cellspacing="0">
              <%
	  String id=request.getParameter("ItemID").trim();
	  int ItemID=Cint(id);
	  String hw_pic,ItemTitle,Description,Content;
      hw_pic=null;
	  ItemTitle=null;
	  Description=null;
	  Content=null;
	  int BidPrice,StartingPrice;
	  
	 BidPrice=0;
	 StartingPrice=0;
	 
      sql="select * from db01 where ItemID="+ItemID;
      rs=mdb.executeQuery(sql);
      if(!rs.next())
	  {

      %>
              <tr>
                <td width="380" height="18"> û���ҵ���Ҫ�鿴����Ʒ </td>
              </tr>
              <%
	  }
	  else
	  {
	     
		   BidPrice=rs.getInt("BidPrice");
		   StartingPrice=rs.getInt("StartingPrice");
		   
		   hw_pic=rs.getString("hw_pic");
		  ItemTitle=rs.getString("ItemTitle");
		  Description=rs.getString("Description");
		   Content=rs.getString("Content");

      %>
              <tr>
                <td width="100%" valign="top">
                  <table width="100%" border="0" cellspacing="0" cellpadding="0" height="10">
                    <tr>
                      <td></td>
                    </tr>
                  </table>
                  <table border="0" width="100%" cellspacing="0">
                    <tr>
                      <td width="100%" bgcolor="#FFFFFF" valign="top">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="180" style="border-right:#FEA5FE 1px solid">
                              <div align="center"><a href="<%=hw_pic%>" target="_blank">
                                <img border="0" src="<%=hw_pic%>" width="140" height="99"><br>
                                <br>
                                [�鿴��ͼƬ]</a></div>
                            </td>
                            <td width="362" align="center"><a href="views.asp?ItemID=<%=ItemID%>"><font color="#D06800"><b class="dz1"></b></font></a>
                              <div align="center">
                                <center>
                              <table width="90%" border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#808080" bgcolor="#FFE1FF">
                                <tr align="center">
                                  <td height="25" colspan="2">��Ʒ���ƣ�<a href="views.asp?ItemID=<%=ItemID%>"><%=ItemTitle%></a></td>
                                </tr>
                                <tr bgcolor="#FFFFFF">
                                  <td width="50%" height="25">
                                    <div align="right">�г��۸�</div>
                                  </td>
                                  <td width="50%" height="25">
                                    <div align="center"><s>��<%=0%></s>Ԫ</div>
                                  </td>
                                </tr>
                                <tr bgcolor="#FFFFFF">
                                  <td height="25">
                                    <div align="right">�׼ۣ�</div>
                                  </td>
                                  <td height="25">
                                    <div align="center"><font color="#D03430">��<%=StartingPrice%></font>Ԫ</div>
                                  </td>
                                </tr>
                                <tr bgcolor="#FFFFFF">
                                  <td height="25">
                                    <div align="right"><font size="1" face="sans-serif"><b>*</b></font>������߼ۣ�</div>
                                  </td>
                                  <td height="25">
                                    <div align="center"><font color="#D03430">��<%=BidPrice%></font>Ԫ</div>
                                  </td>
                                </tr>
                                <tr bgcolor="#FFFFFF">
                                  <td height="35" colspan="2">
                                    <div align="center">
                                     <%

                                     if((String)session.getValue("user_name")!=null)
                                     {
                                     %>
                                     <a href="javascript:openScript('BidForm.jsp',460,300)">����<img border="0" src="img/order.gif" align="absmiddle">
                                     <%
                                     }else
                                     {
                                     }
                                     %>


                                    
                                    </a>
                                    </div>
                                  </td>
                                </tr>
                              </table>
                                </center>
                            </div>
                              <table width="95%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td height="30" valign="bottom"><%=Description%></td>
                                </tr>
                              </table>
                              
                              <table width="95%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td height="5"> <img src="img/pics/seperator.gif" width="359" height="1"></td>
                                </tr>
                              </table>
                            </td>
                          </tr>
                        </table>
                      </td>
                    </tr>
                    <tr>
                      <td width="100%" bgcolor="#FFFFFF" valign="top" align="center">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td bgcolor="f7f7f7" style="border-bottom:#cccccc 1px solid">&nbsp;�� Ʒ �� ϸ ˵ ��</td>
                          </tr>
                          <tr>
                            <td style="line-height:20px"><%=Content%></td>
                          </tr>
                        </table>

                      </td>
                    </tr>
                    <%


      }

      %>
                  </table>
                </td>
              </tr>
              <tr>
                <td width="100%"></td>
              </tr>
            </table>
            <table width="95%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td>��</td>
              </tr>
            </table>
            <table width="95%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td bgcolor="f7f7f7" style="border-bottom:#cccccc 1px solid">&nbsp;�� Ʒ �� �� �� �� </td>
              </tr>
              <tr>
                <td style="line-height:20px">�ۺ����:<br>
                  ����˾�ݲ�֧�ֻ�������ҵ��,������Ʒһ�ɿ����!EMS����! <br>
                  һ������˾�۳�����Ʒ���Կͻ��յ������������Է�����Ϊ׼��7���ڳ��ַ���Ϊ�𻵵��������⣬����˾������Ѹ���ͬ�ͺš�ͬ��ɫ������
                  <br>
                  ��������˾�۳���Ʒ���Կͻ��յ������������Է�����Ϊ׼��һ����֮�ڳ��ַ���Ϊ�𻵵��������⣬����˾��ŵ��ѱ��ޣ� <br>
                  ������վ�۳�����Ʒ���������֮�ڳ��ַ���Ϊ�𻵵��������⣬��Ѹ����� <br>
                  �ġ����л������޵��ʼĻ���������˫������һ�롣<br>
                  �塢ע: �ͻ�ָ��������6688�ɱ�׼��������6688i�������ż���������Զ��ػ���������������,���ڱ��޷�Χ��!6688���Ǻ�����,�������������ȱ��,Ҳ�����ڱ��޷�Χ,��ͻ�ע��!<br>
                  ������վ����������ӵ�����ս���Ȩ��<%=ItemID%>
				  <%
				  sql="select * from system";
				  rs=mdb.executeQuery(sql);
				   if(rs.next()){
				  %><br>
                    ��ϵ��ַ��<%=rs.getString("ymaddr")%><br>
                    �� �ࣺ<%=rs.getString("code")%><br>
                    ��ѯ�绰��<%=rs.getString("tel")%><br>
                    ��ϵ�ˣ�<%=rs.getString("name")%>
					<%}
				  %>
				  </td>
              </tr>
            </table>
            <br>
            <table width="100%" height="25" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td valign="middle">
                  <div align="center"><img src="img/pics/seperator.gif" width="359" height="1"></div>
                </td>
              </tr>
            </table>
          </td>
        </tr>
      </table>