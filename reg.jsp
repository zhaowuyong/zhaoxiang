<%@ include file="top.jsp"%>
<%@ page contentType="text/html;charset=GBK" language="java" import="java.sql.*" errorPage="" %>
   <link href="css.css" rel="stylesheet" type="text/css">
   <div align="center">
     <center>
   <table width="600" border="0" cellspacing="0" cellpadding="0" style="border-collapse: collapse">
                <tr>
                  <td width="100%" height="25">��</td>
                </tr>
                <tr>
                  <td width="100%" height="25" bgcolor="#FEA5FE"><div align="center"><b>�û�ע��</b></div></td>
                </tr>
                <tr>
                  <td height="2" bgcolor="#FFE1FF"> <table width="100%" border="0" cellspacing="1" cellpadding="0" height="100%">
                      <tr>
                        <td align="center"> <form action="regsave.jsp" method="post" name="" id="">(Ϊ�������𲻱�Ҫ�ľ��ף�������Ϣ����ʵ��д����������Ϣ�б䶯��Ӧ������֪ͨ��վ)<br>
                            <table width="90%" border="0" align="center" cellpadding="0" cellspacing="1" style="margin-bottom: 6">
                              <tr>
                                <td width="29%" height="25"><div align="right">��
                                    �� ���� </div></td>
                                <td width="71%"><div align="center">
                                    <input style="FONT-SIZE: 12px; WIDTH: 210px" type="text" name="user_name" size="20" class=input>
                                  </div></td>
                              </tr>
                              <tr>
                                <td height="25"><div align="right">��&nbsp;&nbsp;&nbsp;
                                    �룺</div></td>
                                <td height="25"><div align="center">
                                    <input style="FONT-SIZE: 12px; WIDTH: 210px" type="password" name="user_pass" size="20" class=input>
                                  </div></td>
                              </tr>
                              <tr>
                                <td height="25"><div align="right">����ȷ�ϣ�</div></td>
                                <td height="25"><div align="center">
                                    <input style="FONT-SIZE: 12px; WIDTH: 210px" type="password" name="user_pass2" size="20" class=input>
                                  </div></td>
                              </tr>
                              <tr>
                                <td height="25"><div align="right">���֤�ţ�</div></td>
                                <td height="25"><div align="center">
                                    <input style="FONT-SIZE: 12px; WIDTH: 210px" type="password" name="user_shenfenzheng" size="20" class=input>
                                  </div></td>
                              </tr>
                              <tr>
                                <td height="25"><div align="right">���֤��ȷ�ϣ�</div></td>
                                <td height="25"><div align="center">
                                    <input style="FONT-SIZE: 12px; WIDTH: 210px" type="password" name="user_shenfenzheng2" size="20" class=input>
                                  </div></td>
                              </tr>
                              <tr>
                                <td height="25"><div align="right">E - mail ��</div></td>
                                <td height="25"><div align="center">
                                    <input style="FONT-SIZE: 12px; WIDTH: 210px" type="text" name="user_mail" size="20" class=input>
                                  </div></td>
                              </tr>
                              <tr>
                                <td height="25"><div align="right">��&nbsp;&nbsp;&nbsp;
                                    ַ��</div></td>
                                <td height="25"><div align="center">
                                    <input style="FONT-SIZE: 12px; WIDTH: 210px" type="text" name="user_adds" size="20" class=input>
                                  </div></td>
                              </tr>
                              <tr>
                                <td height="25"><div align="right">��&nbsp;&nbsp;&nbsp;
                                    ����</div></td>
                                <td height="25"><div align="center">
                                    <input style="FONT-SIZE: 12px; WIDTH: 210px" type="text" name="user_tel" size="20" class=input>
                                  </div></td>
                              </tr>
                              <tr>
                                <td height="25"><div align="right">��&nbsp;&nbsp;&nbsp;
                                    �ࣺ</div></td>
                                <td height="25"><div align="center">
                                    <input style="FONT-SIZE: 12px; WIDTH: 210px" type="text" name="user_postcode" size="20" class=input>
                                  </div></td>
                              </tr>
                              <tr>
                                <td height="25"><div align="right">��ʵ������</div></td>
                                <td height="25"><div align="center">
                                    <input style="FONT-SIZE: 12px; WIDTH: 210px" type="text" name="user_namec" size="20" class=input>
                                  </div></td>
                              </tr>
                              <tr>
                                <td height="35" colspan="2"><div align="center">
                                    <table width="40%" border="0" align="center" cellpadding="0" cellspacing="0">
                                      <tr>
                                        <td><div align="center">
                                            <input
      align=absMiddle alt=ȷ�� cache name="B13"
      src="img/pics/ok.gif" type=image tppabs="" width="45" height="20">
                                          </div></td>
                                        <td><div align="center">
                                            <input type="reset" value="���" name="B22" class=input>
                                          </div></td>
                                      </tr>
                                    </table>
                                  </div></td>
                              </tr>
                            </table>
                          </form>
                         </td>
                      </tr>
                    </table></td>
                </tr>
              </table>
     </center>
</div>
<%@ include file="copy.jsp"%>