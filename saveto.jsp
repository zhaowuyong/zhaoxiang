<%@ page contentType="text/html;charset=GBK" language="java" import="java.sql.*" errorPage="" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>����ɹ���</title>
<link href=css.css rel=STYLESHEET type=text/css>
<jsp:useBean id="mdb" class="ckstudio.db.faq" scope="page"/>
<%!
private String getStr(String str)
{
 	try
	{
		String temp_p=str;
		byte[] temp_t=temp_p.getBytes("ISO8859-1");
		String temp=new String(temp_t);
		return temp;
	}
	catch(Exception e)
	{
		e.printStackTrace();
	 }
	return "null";
}
%>
</head> 
<body topmargin="0">
<%
if(session.getAttribute("user_name")==null){
	%>
<br>1.����δ��¼!���¼���ٶ�����վ��Ʒ!<br>2.��һ������վ������ע���Ա����ѣ�!<br><br>
<%
		}else{
String count="";
String hw_id="";
if(request.getParameter("action")=="buy"){

if(request.getParameter("count")==""){
    int intcount=1;
    count=Integer.toString(intcount);
	}
else
    count=request.getParameter("count");

if(request.getParameter("hw_id")=="")
	out.print("û�д˻���!");
else{
    hw_id=request.getParameter("hw_id");


String sql="select * from basket where hw_id='"+hw_id+"' and user_name='"+(String)session.getValue("user_name")+"' and basket_check=false";
ResultSet rs;
rs=mdb.executeQuery(sql);

if(!rs.next()){

	String sql1="insert into basket(hw_id,user_name,basket_count,hw_name,hw_cash,user_type) values('"+hw_id+"','"+session.getValue("user_name")+"','"+count+"','"+request.getParameter("hw_name")+"','"+request.getParameter("hw_cash")+"','"+request.getParameter("user_type")+"') where hw_id='"+hw_id+"' and user_name='"+session.getValue("user_name")+"' and basket_check=false";
    mdb.executeInsert(sql1);
}
else{
//rs("basket_count")=int(rs("basket_count"))+int(count)
rs.next();
int basket_count=Integer.parseInt(rs.getString("basket_count"));
basket_count=basket_count+Integer.parseInt(count);
String basket_count2=Integer.toString(basket_count);
String sql2="update basket set basket_count='"+basket_count+"'";
mdb.executeUpdate(sql2);
}
}
}
%>
<br>
<tr> 
    
  <td valign="top"> 
    <tr> 
          
  <td valign="top" height="120"> 
    <table border="0" width="400" cellspacing="0" cellpadding="0" height="5" align="center">
      <tr> 
        <td width="380" height="18"> 
          <div align="center">
            <TABLE cellSpacing=0 cellPadding=0 width=416 
                        align=center border=0>
              <TBODY>
                <TR> 
                  <TD align=middle bgcolor="#DBC2B0" height="18"><%
        if(request.getParameter("sub_number")=="")
        out.print("û�д˶�����Ϣ");
        else{
        String sub_to=getStr(request.getParameter("sub_to"));
        String sub_adds=getStr(request.getParameter("sub_adds"));
        String sub_mail=getStr(request.getParameter("sub_mail"));
        String sub_tel=getStr(request.getParameter("sub_tel"));
		String sub_post=getStr(request.getParameter("sub_post"));
        String sub_number=getStr(request.getParameter("sub_number"));
		String qian=getStr(request.getParameter("qian"));
        String other=getStr(request.getParameter("other"));

        String sql="update sub set sub_to='"+sub_to+"',sub_tel='"+sub_tel+"',sub_post='"+sub_post+"',sub_mail='"+sub_mail+"',sub_adds='"+sub_adds+"',qian='"+qian+"',other='"+other+"' where sub_number='"+sub_number+"'";
        mdb.executeUpdate(sql);
        %><b>����ɹ��� ���Ķ������ǣ�<%=sub_number%></b>
                  </TD>
                </TR>
              </TBODY>
            </TABLE>
          </div>
        </td>
      </tr>
      <tr> 
        <td width="100%"><table width="100%" height="34" border="0" cellpadding="0" cellspacing="0">
              <td width="398" height="120" valign="bottom" bgcolor="#F5EFE7" ><br>
                �� ����α������ţ������ʹ�ñ������ŶԳɽ�������в�ѯ��Ͷ��<br> <br>
                <div align="center">
                  <center>
                <table width="80%" border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111">
                  <tr> 
                    <td width="26%" height="25"> 
                      <div align="right">�ջ��� ��</div>
                    </td>
                    <td width="74%" height="25"> 
                      <div align="center"><%=sub_to%> </div>
                    </td>
                  </tr>
                  <tr> 
                    <td width="26%" height="25"> 
                      <div align="right">��ַ ��</div>
                    </td>
                    <td width="74%" height="25"> 
                      <div align="center"><%=sub_adds%> </div>
                    </td>
                  </tr>
                  <tr> 
                    <td width="26%" height="25"> 
                      <div align="right">�ʱࣺ</div>
                    </td>
                    <td width="74%" height="25"> 
                      <div align="center"><%=sub_post%> </div>
                    </td>
                  </tr>
                  <tr> 
                    <td width="26%" height="25"> 
                      <div align="right">�绰��</div>
                    </td>
                    <td width="74%" height="25"> 
                      <div align="center"><%=sub_tel%> </div>
                    </td>
                  </tr>
                  <tr> 
                    <td width="26%" height="25"> 
                      <div align="right">E-mail��</div>
                    </td>
                    <td width="74%" height="25"> 
                      <div align="center"><%=sub_mail%> </div>
                    </td>
                  </tr>
                  <tr> 
                    <td width="26%" height="12"> 
                      <div align="right">���ʽ��</div>
                    </td>
                    <td width="74%" height="25"> 
                      <div align="center"><%=qian%> </div>
                    </td>
                  </tr>
                  <tr>
                    <td width="26%" height="12">
                      <div align="right">��ע��</div>
                    </td>
                    <td width="74%" height="25"> 
                      <div align="center"><%=other%></div>
                    </td>
                  </tr>
                  <tr> 
                    <td colspan="2" height="21"> 
                      <table width="90%" border="0" cellspacing="0" cellpadding="0" align="center">
                        <tr> 
                          <td> 
                            <p style="word-spacing: 2; line-height: 150%; margin-top: 4; margin-bottom: 6"> 
                              <font color="#FF9900">&nbsp;&nbsp;1.лл���ڱ�վ��������ѡ���ͻ����ŷ����������ģ����ǵĹ�����Ա��ܿ콫��Ʒ�͵����ϡ�<br>
                              &nbsp;&nbsp;2.�����ѡ������ת�ʷ�ʽ����������ת�ʣ�����ת�ʳɹ������ϸ����Ǵ�绰����Emailȷ�ϣ����ֻҪ1Сʱ�͸���������</font></td>
                        </tr>
                      </table>
                    </td>
                  </tr>
                </table>
                  </center>
              </div>
                <div align="center"><a href="javascript:history.go(-1)"><<�����޸��ջ�����Ϣ</a><br>
                </div>
                <table width="100%" height="25" border="0" cellpadding="0" cellspacing="0">
                  <tr> 
                    <td valign="middle"><div align="center"><img src="img/pics/seperator.gif" width="359" height="1"></div></td>
                  </tr>
                </table></td>
            </tr>
          </table> </td>
        <%}
	}
	mdb.Close();%>
      </tr>
      
    </table>