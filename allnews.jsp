<%@ page contentType="text/html;charset=GBK" language="java" import="java.sql.*,java.util.*" errorPage="" %>
<html>
<%@ include file="top.jsp"%>

<link href="css.css" rel="stylesheet" type="text/css">


          <div align="center">
            <center>


          <table width="778" border="0" cellspacing="0" cellpadding="0" style="border-collapse: collapse" bordercolor="#111111">
            <tr>
                    <td width="0%" height="25" bgcolor="#FEA5FE" align="center">
                    <font color="#FFFFFF"><b>�����ȵ�</b></font></td>
                  </tr>

   <%
int PageSize =10; //����ÿ����ҳ��ʾ������¼
int ShowPage = 1; //��������ʾ��ҳ��
int RowCount = 0; //ResultSet�ļ�¼��Ŀ
int PageCount = 0; //ResultSet��ҳ�����ҳ��
int duoyu=0;
sql="select * from news order by news_ID DESC";
rs=mdb.executeQuery(sql);
if(rs.next())
{
  //����ResultSet(�����)���󣬲�ִ��SQL���
    rs.last(); //��ָ���������һ�ʼ�¼
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
  //������ʾ��ҳ��
    String ToPage = request.getParameter("ToPage");
    if(ToPage==""){ToPage="1";}
//�ж��Ƿ����ȷȡ��ToPage����,
//��ȡ�����ʾJSP��ҳӦ��ʾ�ض���ҳ��¼�����
   if(ToPage!=""){
      ShowPage =Cint(ToPage); //ȡ��ָ����ʾ�ķ�ҳҳ��
   //�����if��佫�ж��û������ҳ���Ƿ���ȷ
       if(ShowPage > PageCount)
       { //�ж�ָ��ҳ���Ƿ������ҳ��, ����������ʾ���һҳ
           ShowPage = PageCount;
       }
      else if(ShowPage <= 0)
       { //��ָ��ҳ��С��0, ��������ʾ��һҳ�ļ�¼
              ShowPage = 1;
        }
    }
rs.absolute((ShowPage - 1) * PageSize+1);
//��������ʾҳ�ĵ�һ�ʼ�¼λ��
%>
  <!----------------------one showing unit------------------------------->
<%
 //����Forѭ�����PageSize�������һҳ�еļ�¼
   int i=1,news_id,linshi=1;
  linshi=ShowPage;
  rs.previous();
   String news_title;
  while(rs.next()&i<= PageSize)
 {
     i++;
     news_id=rs.getInt("news_id");
     news_title=rs.getString("news_title");
      if(news_title.length()>20)
      {
          news_title.substring(0,20);
          news_title=news_title+"...";
       }

%>
<tr>
                    <td height="2">
<img src="img/pics/biao.gif" width="15" height="18">&nbsp;<a href="news.jsp?news_id=<%=news_id%>"><%=news_title%>����&nbsp;(<%=rs.getDate("news_date").toLocaleString()%>)

                          </td>
 </tr>
 <%
//�����if�ж�������ڷ�ֹ������һҳ��¼ʱ,
//����¼ָ���������һ�ʼ�¼֮��
 //����forѭ��
   }
 %>
<!-----------------------shonwing unit end----------------------------------------------->



<tr>
                      <td width=478 height="23">
                        <p align="right">��<%=ShowPage%>ҳ/��<%=PageCount%>ҳ,<%=RowCount%>������&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<%
                 linshi=ShowPage-1;
				 if(linshi>0)
				 {%><a href="allnews.jsp?ToPage=<%=linshi%>">��һҳ</a>
<%
				 }else
				{%>
                          ��һҳ
                <%}		  linshi=ShowPage+1;
				if(linshi<=PageCount)
				{%>
                          <a href="allnews.jsp?ToPage=<%=linshi%>">��һҳ</a>
                          <%
				}else
						  {%>
                          ��һҳ
                <%}%>

                          </font></p>
<%
}
else
{//���ݿ���������
     out.print("�Բ���,û������!");
}
%>

                      </table>
            </center>
</div>

<%@ include file="copy.jsp"%>
</body>
</html>