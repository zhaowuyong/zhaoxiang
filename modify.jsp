<%@ page contentType="text/html;charset=GBK" language="java" import="java.sql.*" errorPage="" %>
<html>

<link href="css.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>�û����ϸ���</title>
<link href=css.css rel=STYLESHEET type=text/css>
<jsp:useBean id="mdb" class="ckstudio.db.faq" scope="page"/>
<%
String user_name,sql;

if (session.getAttribute("user_name")==null){
    response.sendRedirect("index.asp");
	}
else{//-------------------------------logged--------begin------------------------------------------
    ResultSet rs;
    user_name=(String)session.getValue("user_name");
    sql="select * from member where user_name='"+user_name+"'";
    rs=mdb.executeQuery(sql);
	if(rs.next()){
%>
<body topmargin="0">
<form method="POST" action="modifysave.jsp?user_name=<%=rs.getString("user_name")%>">
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
            <td width="100%" bgcolor="#FEA5FE" align="center" height="18">�û������޸�</td>
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
                        <td width="79%" height="25"><div align="left"><%=user_name%></div></td>
                      </tr>
                      <tr>
                        <td width="21%" height="25"><div align="right">���룺</div></td>
                        <td width="79%" height="25">��<input style="FONT-SIZE: 12px; WIDTH: 210px" type="text" name="user_pass" size="36" class=input value="<%=rs.getString("user_pass")%>"></td>
                      </tr>
                      <tr>
                        <td width="21%" height="25"><div align="right">���֤��</div></td>
                        <td width="79%" height="25">��<input style="FONT-SIZE: 12px; WIDTH: 210px" type="text" name="user_shenfenzheng" size="36" class=input value="<%=rs.getString("user_shenfenzheng")%>"></td>
                      </tr>
                      <tr>
                        <td width="21%" height="25"><div align="right">E-mail��</div></td>
                        <td width="79%" height="25">��<input style="FONT-SIZE: 12px; WIDTH: 210px" type="text" name="user_mail" size="36" class=input value="<%=rs.getString("user_mail")%>"></td>
                      </tr>
                      <tr>
                        <td width="21%" height="25"><div align="right">�绰��</div></td>
                        <td width="79%" height="25">��<input style="FONT-SIZE: 12px; WIDTH: 210px" type="text" name="user_tel" size="36" class=input value="<%=rs.getString("user_tel")%>"></td>
                      </tr>
                      <tr>
                        <td width="21%" height="25"><div align="right">�������룺</div></td>
                        <td width="79%" height="25">��<input style="FONT-SIZE: 12px; WIDTH: 110px" type="text" name="user_postcode" size="36" class=input value="<%=rs.getString("user_postcode")%>"></td>
                      </tr>
                      <tr>
                        <td width="21%" height="25"><div align="right">��ַ��</div></td>
                        <td width="79%" height="25">��<input style="FONT-SIZE: 12px; WIDTH: 260px" type="text" name="user_adds" size="36" class=input value="<%=rs.getString("user_adds")%>"></td>
                      </tr>
                      <tr>
                        <td width="21%" height="25"><div align="right">��ʵ������</div></td>
                        <td width="79%" height="25">��<input style="FONT-SIZE: 12px; WIDTH: 110px" type="text" name="user_namec" size="36" class=input value="<%=rs.getString("user_namec")%>"></td>
                      </tr>
                      <tr>
                        <%rs.close();%>
                        <td height="35" colspan="2"> <table width="40%" border="0" align="center" cellpadding="0" cellspacing="0">
                            <tr>
                              <td><div align="center">
                                  <input
      align=absMiddle alt=ȷ�� cache name="B1"
      src="img/pics/ok.gif" type=image tppabs="" width="45" height="20">
                                </div>
                                <div align="center"> </div></td>
                            </tr>
                          </table></td>
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

<%}
}
//-------------------------------logged--------begin------------------------------------------
mdb.Close();
%>
