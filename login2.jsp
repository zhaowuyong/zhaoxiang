<%@ page contentType="text/html;charset=GBK" language="java" import="java.sql.*,java.util.Date" errorPage="" %>
<jsp:useBean id="mdb" class="ckstudio.db.faq" scope="page"/>
<meta http-equiv="refresh" content="5;url=index.jsp">
    <%
	boolean foundeer=false;
	String user_name,user_shenfenzheng;
	if(!foundeer){

    if (session.getAttribute("user_name")==null){
    user_name=request.getParameter("user_name");
    user_shenfenzheng=request.getParameter("user_shenfenzheng");

    if(user_name==null || user_shenfenzheng==null){
        out.print("<font size=4 color=red>�û������֤�Ų���Ϊ��!</font>");
	    foundeer=true;
	}

    String sql="select * from member where user_name='"+user_name+"'";
    ResultSet rs;
    rs=mdb.executeQuery(sql);

	if(!rs.next()){
		out.print("<font size=4 color=red>��������û�������!</font>");
		foundeer=true;
	}
	else{
		if(user_shenfenzheng.equals(rs.getString("user_shenfenzheng"))){
        session.setAttribute("user_name",""+rs.getString("user_name")+"");
  	    session.setAttribute("user_type","yes");
		String sql1="update member set user_lasttime='"+((new java.util.Date()).toLocaleString())+"',user_lastip='"+(String)request.getRemoteHost()+"' where user_name='"+user_name+"'";
        mdb.executeUpdate(sql1);
		response.sendRedirect("index.jsp");
		}
    else{
        out.print("<font size=4 color=red>����������֤�Ŵ���!</font>");
        foundeer=true;
	}
	}


	}else response.sendRedirect("index.jsp");

	}if(foundeer){
          %><br><a href="index2.jsp">���µ�½</a><%
	}

out.print("<font size=4 color=red>�����������Ӻ��Զ����أ�</font>");

%>
