<%@ page contentType="text/html;charset=GBK" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="java.util.*,com.jspsmart.upload.*" %>

<link href="css.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">

<html>
<head>
<title>�ϴ�����Ʒ����</title>
</head>
<body>
<form action="dls.jsp" method="post">
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
            <td width="100%" bgcolor="#FEA5FE" align="center" height="18">��������Ҫ�ϴ�����Ʒ��Ϣ</td>
        </tr>
        <tr>
            <td width="100%" bgcolor="#FFE1FF"> <table width="100%" height="34" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="398" height="120"><br>
                    <div align="center">
                      <center>
                    <table width="90%" border="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" cellpadding="0">
                      <tr>
                        <td width="21%" height="25"><div align="right">��Ʒ����</div></td>
                        <td width="79%" height="25">&nbsp;&nbsp;<input type=text name=thename></td>
                      </tr>
                      <tr>
                        <td width="21%" height="25"><div align="right">��Ʒ������</div></td>
                        <td width="79%" height="25">��<input type=text name=thedes></td>
                      </tr>
                      <tr>
                        <td width="21%" height="25"><div align="right">��Ʒ�۸�</div></td>
                        <td width="79%" height="25">��<input type=text name=theprice></td>
                      </tr>
                      <tr>
                        <td width="21%" height="25"><div align="right">�����ߣ�</div></td>
                        <td width="79%" height="25">��<input type=text name=theseller></td>
                      </tr>
					  <tr>
                        <td width="21%" height="25"><div align="right">ͼƬ��</div></td>
                        <td width="79%" height="25">��<input type="file" name="thepic"></td>
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
<jsp:useBean id="dlsBeanId" scope="page" class="dls.DlsBean" />
<jsp:useBean id="kkw" scope="page" class="dls.DlsBeanMMv" />
<%
String myname=dlsBeanId.codeString(request.getParameter("thename"));
String mydes=dlsBeanId.codeString(request.getParameter("thedes"));
String myprice=dlsBeanId.codeString(request.getParameter("theprice"));
String mypic=dlsBeanId.codeString(request.getParameter("thepic"));
try{
int myprices=Integer.parseInt(myprice);
}catch(NumberFormatException e){
out.println("�����봿����");
}
String myprice2=myprice;
String myseller=dlsBeanId.codeString(request.getParameter("theseller"));
//��ȡϵͳʱ��
Calendar calendar=Calendar.getInstance();
String myyear=String.valueOf(calendar.get(Calendar.YEAR));
String mymonth=String.valueOf(calendar.get(Calendar.MONTH)+1);
String myday=String.valueOf(calendar.get(Calendar.DATE));
String mydate=myyear+"/"+mymonth+"/"+myday;
calendar.add(Calendar.DATE,3);
String myyears=String.valueOf(calendar.get(Calendar.YEAR));
String mymonths=String.valueOf(calendar.get(Calendar.MONTH)+1);
String mydays=String.valueOf(calendar.get(Calendar.DATE));
String mydates=myyears+"/"+mymonths+"/"+mydays;
//File f = 
if(myname==null){
out.println("������������Ϣ");
}
else{
	//dlsBeanId.myinsert(myname,mydes,myprice,mydate,mydates,myseller,myprice);
	 kkw.myinsert(myname,mydes,myprice,mydate,mydates,myseller,myprice,mypic);

	out.println("�ϴ��ɹ�");
}
%>
<br>
<tr> 
    <td width="400" height="16" valign="top"><div align="center"><a href=# onclick="javasrcript:window.close();">�رմ���</a></div></td>
  </tr>
</body>
</html>