<%@ page contentType="text/html;charset=GBK" language="java" import="java.sql.*" errorPage="" %>
<html>

<%@ include file="top.jsp"%>

<table width="778" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td height="10"></td>
  </tr>
</table>
<table width="778" border="0" cellspacing="0" cellpadding="0" align="center" height="148">
  <!--DWLayoutTable-->
  <tr valign="top">
    <td width="180"> <table width="180" border="0" cellspacing="0" cellpadding="0" align="center">
        <tr>
          <td valign="top">
            <%@ include file="dengluyufou2.jsp"%>
          </td>
        </tr>
      </table>
      <table width="100%" border="0" cellspacing="0" cellpadding="0" height="5">
        <tr>
          <td></td>
        </tr>
        <tr>
          <td></td>
        </tr>
      </table>
      <!--------------------search page------------------------------>
      <%@ include file="in-search.jsp"%>
      <table width="100%" border="0" cellspacing="0" cellpadding="0" height="5">
        <tr>
          <td>
            <!-------------------topsort------------------------------>
            <%@ include file="topsort.jsp"%>
            <!-------------------noticenotice------------------------------>
            <%@ include file="inludenotice.jsp"%>
          </td>
        </tr>
      </table></td>
    <td width="16">��</td>
    <!--///////////////////////////midle begin////////////////////////////////////////-->
    <td width="408"> <table width="100%">
        <!--DWLayoutTable-->
        <tr>
          <td width="393" height="156">
            <%
 sql="select  * from logo  ";
 rs=mdb.executeQuery(sql);
 if(!rs.next())
 {

    out.print("����û�й��");
}
 else
 {%>
            <a href="<%=rs.getString("url")%>"target="_blank"><img src="<%=rs.getString("banner")%>" width="395" height="118" border="0"></a>
            <%
}
%>
          </td>
          <td>��</td>
        </tr>
        <tr>
          <td> <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="151" id="AutoNumber1" height="20" background="img/fu.gif">
              <tr>
                <td align="center" width="82"><b>��Ʒ�Ƽ�</b></td>
                <td align="center">��</td>
              </tr>
            </table></td>
          <td>��</td>
        </tr>
        <tr>
          <td height="118" valign="top">
            <!-- ------------------circulation-------------------------->
            <table width="100%" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <%

sql="select top 10 * from db01 order by AuctionStartTime DESC";
rs=mdb.executeQuery(sql);
if(!rs.next())
{

%>
                <td width="128" valign="top" align="left" bgcolor="#FFFFFF"><div align="center">
                    ����û���Ƽ���Ʒ<br>
                  </div></td>
                <%
}
else
{  int hwid=0;
   i=0;
   rs.previous();
   while(rs.next())
   {
        i=i+1;
		hwid=rs.getInt("ItemID");

%>
                <td width="50%"> <br>
                  ��Ʒ����:<%=rs.getString("ItemTitle")%> <br> <a href="views.jsp?ItemID=<%=hwid%>">
                  <img border="0" src="<%=rs.getString("hw_pic")%>" width="114" height="83" vspace="6"></a>
                  <br>
                  ��߼ۣ�<%=rs.getInt("BidPrice")%>Ԫ <br> <a target="_blank" href="views.jsp?ItemID=<%=hwid%>">����</a>
                  <%

                  if((String)session.getValue("user_name")!=null)
                  {
                  %>
                 <a href="javascript:openScript('BidForm.jsp',460,300)">����<img border="0" src="img/order.gif" width="21" height="15"></a>
                  <%
                   }else
                   {
                   }
                  %>
                </td>
                <%
		if(i%2==0&i>=2)
		{
%>
              </tr>
              <tr>
                <%
         }
	   if(i>=10) {
	      break;
	   }
  }
}
%>
              </tr>
            </table>
            <!-------------------circulation end-------------------------------->
          </td>
          <td>��</td>
        </tr>
      </table></td>
    <!--/////////////////////////////midle  end/////////////////////////////////////-->
    <td  width="174"> <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <!--DWLayoutTable-->
        <tr>
          <td width="174" height="1"></td>
        </tr>

        <tr>
          <td height="388" valign="top">
            <%@ include file="paihang.jsp"%>
          </td>
        </tr>
      </table></td>
  </tr>
  <TR>
    <td height="16" colspan="4" valign="top">
      <%@ include file="copy.jsp"%>
    </td>
  </TR>
</table>

<script language="JavaScript1.2">
var dragswitch=0
var nsx
var nsy
var nstemp
function drag_dropns(name){
temp=eval(name)
temp.captureEvents(Event.MOUSEDOWN | Event.MOUSEUP)
temp.onmousedown=gons
temp.onmousemove=dragns
temp.onmouseup=stopns
}

function gons(e){
temp.captureEvents(Event.MOUSEMOVE)
nsx=e.x
nsy=e.y
}
function dragns(e){
if (dragswitch==1){
temp.moveBy(e.x-nsx,e.y-nsy)
return false
}
}

function stopns(){
temp.releaseEvents(Event.MOUSEMOVE)
}
var dragapproved=false
function drag_dropie(){
if (dragapproved==true){
document.all.showimage.style.pixelLeft=tempx+event.clientX-iex
document.all.showimage.style.pixelTop=tempy+event.clientY-iey
return false
}
}

function initializedragie(){
iex=event.clientX
iey=event.clientY
tempx=showimage.style.pixelLeft
tempy=showimage.style.pixelTop
dragapproved=true
document.onmousemove=drag_dropie
}
if (document.all){
document.onmouseup=new Function("dragapproved=false")
}
function hidebox(){
if (document.all)
showimage.style.visibility="hidden"
else if (document.layers)
document.showimage.visibility="hide"
}
</script>