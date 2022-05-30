
<%@  page  import="java.util.*"  %>
<%@ page contentType="text/html;charset=GBK" language="java" import="java.sql.*,java.util.Date" errorPage="" %>

<%@ include file="conn.jsp"%>
<%!
String encode(String str)
 {
    String result;
    int l;
    if(str=="")
	{
       result="";
	}
    else
    {
    l=str.length();
	char[] chr=new char[l];
	str.getChars(0,l,chr,0);
    result="";
	int i;
	for(i=0;i<=l-1;i++)
	  {
	    
               switch(chr[i])
			    {

			    
	           case '<':
	                result=result+"&lt;";
					break;
	           case '>':
	                result=result+"&gt;";
			   break;

              case 10:
	                result=result+"<br>";
			  break;
			  case 13:
	                result=result+"<br>";
			  break;
	           case 34:
	                result=result+"&quot;";
			   break;
	           case '&':
	                result=result+"&amp;";
			   break;
              case ' ':
			        result=result+"&nbsp;";	
			  break;
	               
	          case 9:
	                result=result+"    ";
			   break;
	           default:
	                result=result+String.valueOf(chr[i]);
				}
	  } 
	}
    return result;
  }
 
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href=../css.css rel=STYLESHEET type=text/css>
</head>
<%
if(request.getParameter("action")!=null)
 {//-----------------------------------action=save-----------------------------------------------------
   if(request.getParameter("action").equals("save"))
   {
        String ItemTitle=request.getParameter("ItemTitle");
    String Description=encode(request.getParameter("Description"));
	String Content=encode(request.getParameter("Content"));
    String hw_cashs=request.getParameter("StartingPrice");
    String hw_pic=request.getParameter("hw_pic");
    String SellerName=(String)session.getValue("user_name");
 

 
Calendar calendar=Calendar.getInstance();
String myyear=String.valueOf(calendar.get(Calendar.YEAR));
String mymonth=String.valueOf(calendar.get(Calendar.MONTH)+1);
String myday=String.valueOf(calendar.get(Calendar.DATE));
String  AuctionStartTime=""+myyear+"-"+mymonth+"-"+myday+"";  

 


	
	 
    String sort_ids=request.getParameter("sort_id");
  String Nsort_ids=request.getParameter("Nsort_id");
    
   
String dailis=request.getParameter("BidPrice");

String data=request.getParameter("AuctionEndTime");
  data=data.trim();
  Date datas=new Date();

String errmsg="�����д�!";
boolean founderr=false;
    if(Cint(hw_cashs)==0)
	{
        errmsg="<br>"+"<li>�۸�Ӧ��Ϊ����";
        founderr=true;
    }
    if(ItemTitle=="")
	{
        errmsg=errmsg+"<br>"+"<li>���Ʋ���Ϊ��";
        founderr=true;
    }
	
    if(Description=="")
	{
        errmsg=errmsg+"<Br>"+"<li>���ܲ���Ϊ��";
        founderr=true;
    }
	
    if(sort_ids=="" )
	{
        errmsg=errmsg+"<br>"+"<li>�����Ϊ��";
        founderr=true;
    }
   
      if(Nsort_ids=="") 
	  {
        errmsg=errmsg+"<br>"+"<li>�����Ϊ��";
        founderr=true;
      }
	  if(data.length()!=10){
	    errmsg=errmsg+"<br>"+"<li>��Ʒ������ֹ���ڸ�ʽ����ȷ";
        founderr=true;
	  }else
	  {
	    if(data.indexOf('-')!=4||data.lastIndexOf('-')!=7){
		  errmsg=errmsg+"<br>"+"<li>��Ʒ������ֹ���ڸ�ʽ����ȷ";
          founderr=true;
		}
		else
		{
		int year=Cint(data.substring(0,4));
		int month=Cint(data.substring(5,7));
		int day=Cint(data.substring(8));
		  if(month>12||day>31||month<=0||day<=0){
		      errmsg=errmsg+"<br>"+"<li>��Ʒ������ֹ���ڸ�ʽ����ȷ";
             founderr=true;
		   }else{
		    datas=new Date(year-1900,month-1,day);
		   }
		}
	  }
	 if(hw_pic==""){ hw_pic="img/noimage.gif";}
     if(dailis==""|data==""){
	   founderr=true;
	   }
    if (founderr==true)
	{
        out.print(errmsg);
        out.print("<br>");
        out.print("<a href=addhw.jsp>����</a>");
      }else
	 {
        ItemTitle=getStr(ItemTitle);
       
		Content=encode(getStr(Content));
        Description=encode(getStr(Description));
		
		
        sql="insert into db01 (ItemTitle,Description,Content,StartingPrice,sort_id,BidPrice,AuctionStartTime,";    
        sql=sql+"AuctionEndTime,SellerName,hw_pic)";
		sql=sql+"values('"+ItemTitle+"','"+Description+"','"+Content+"',"+Cint(hw_cashs)+","+Cint(sort_ids);
        sql=sql+","+Cint(dailis)+","+AuctionStartTime+",'"+datas.toLocaleString();
        sql=sql+"','"+SellerName+"','"+hw_pic+"')";
		mdb.executeInsert(sql);
		out.print("������ӳɹ�");
        out.print("<br>");
        out.print("<a href=addhw.jsp>����</a>");
    
    }
    
    
  }
}
else{
//-----------------------------------action!=save-----------------------------------------------------
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<title>�� �� �̡�Ʒ</title>
<link rel="stylesheet" type="text/css" href="style.css">
<%
int count=0;
sql = "select * from  Nsort  order by Nsort_id asc";
rs=mdb.executeQuery(sql);
%>
<script language = "JavaScript">
var onecount;
onecount=0;
subcat = new Array();
        <%
        while(rs.next()) 
		{
        %>
subcat[<%=count%>] = new Array("<%=rs.getString("Nsort_name")%>","<%=rs.getInt("sort_id")%>","<%=rs.getInt("Nsort_id")%>");
        <%
        count = count + 1;
        }
		rs.close();
        %>
onecount=<%=count%>;

function changelocation(locationid)
    {
    document.myform.Nsort_id.length = 0; 

    var locationid=locationid;
    var i;
    for (i=0;i < onecount; i++)
        {
            if (subcat[i][1] == locationid)
            { 
                document.myform.Nsort_id.options[document.myform.Nsort_id.length] = new Option(subcat[i][0], subcat[i][2]);
            }        
        }
        
    }    
</script>
</head>

<body>
<tr>
    <td>
      <div align="center"><b>����ѡ�������д</b></div>
    </td>
  </tr>
<form method="POST" name="myform" action="addhw.jsp?action=save">
  <table class="border" cellspacing="0" width="80%" border="0" cellpadding="4" cellspacing="0" >
    
    <tr align="center">
      <td class="tdbg" width="100%">
	<table border="0" cellspacing="1" width="100%">
        
                <td width="85%">
<%       int selclass=0;
        sql = "select * from sort";
       rs=mdb.executeQuery(sql);
	if(!rs.next())
	{
	  out.print("���������Ŀ��");
	 }else
	 {
	 rs.previous();
	 if(rs.next())
	   {
	      selclass=rs.getInt("sort_id");
	 %>
<select name="sort_id" onChange="changelocation(document.myform.sort_id.options[document.myform.sort_id.selectedIndex].value)" size="1">
        <option selected value="<%=selclass%>"><%=rs.getString("sort_name")%></option>
<%       
           while(rs.next())
		  {
%> <option value="<%=rs.getInt("sort_id")%>"><%=rs.getString("sort_name")%></option>
<%
          }
	   }
	}
       rs.close();
%></select> 
<select name="Nsort_id">                  
<%
sql="select * from Nsort where sort_id="+selclass;
rs=mdb.executeQuery(sql);
if(rs.next())
{
%>
        <option selected value="<%=rs.getInt("Nsort_ID")%>"><%=rs.getString("Nsort_name")%></option>
<% 
while(rs.next())
  {%>
        <option value="<%=rs.getInt("Nsort_ID")%>"><%=rs.getString("Nsort_name")%></option>
<% 
   }
}
rs.close();
%>
</td>
  </tr>
</table>

<table border="0" width="500" cellspacing="1" height="392" align="left">
  <tr>
    <td width="100%" height="395"> 
      
            <table border="0" width="100%" cellspacing="1">
              <tr> 
                <td colspan="2"><font color="#FF0000">�ͺ�����</font> 
                  <input type="text" name="ItemTitle" size="20" class=input>
                  <font color="#FF0000"> &nbsp;&nbsp;&nbsp;&nbsp; </font> </td>
              </tr>
              <tr> 
                <td colspan="2"><font color="#FF0000">&nbsp;&nbsp;&nbsp;�׼�</font> 
                  <input type="text" name="StartingPrice" size="7" class=input>
                  Ԫ <font color="#FF0000">&nbsp;&nbsp;&nbsp;&nbsp;���ļ�</font> 
                  <input type="text" name="BidPrice" size="7" class=input>
                  Ԫ </td>
              </tr>
              <tr> 
                <td height="5" colspan="2"> 
                  <hr noshade size="1">
                </td>
              </tr>
              
              <tr> 
                
                <td width="63%"><font color="#000000">��ֹ����</font> 
                  <input type="text" name="AuctionEndTime" size="24" class=input value="2005-01-01">
                  ��ʽ:2005-01-01</td>
              </tr>
              
              <tr> 
                <td height="5" colspan="2"> 
                  <hr noshade size="1">
                </td>
              </tr>
              
              <tr> 
                <td colspan="2"> <font color="#FF0000">�����ݽ���</font></td>
              </tr>
              <tr> 
                <td valign="top" colspan="2"> 
                  <textarea rows="3" name="Description" cols="50" class=input>��ʱû�С���</textarea>
                </td>
              </tr>
              <tr>
                <td valign="top" colspan="2"><font color="#FF0000">��ϸ���ݽ���</font></td>
              </tr>
              <tr>
                <td valign="top" colspan="2">
                  <textarea rows="10" name="Content" cols="50" class=input>��ʱû�С���</textarea>
                </td>
              </tr>
              
                <tr><td colspan="2"> <font color="#FF0000">ͼƬ��ַ</font> 
                  <input type="text" name="hw_pic" size="46" class=input value="pic/"> </a></td>
              </tr>
            </table>
            
            <p>
              <input type="submit" value="�ύ" name="B1" class=input>
              <input type="reset" value="ȫ����д" name="B2" class=input>
            </p>
    
      
    </td>
  </tr>
</table>
</form>

</body>
</html>

<%}
//--------------------------------------end action check----------------------------------------------
%>