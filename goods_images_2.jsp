<%@ page contentType="text/html;charset=gb2312"%>

<%@ page import="java.util.*" %>
<jsp:useBean id="mySmartUpload" scope="page" class="com.jspsmart.upload.SmartUpload" />
<%



   

    mySmartUpload.initialize(pageContext);
    //设置上载的最大值
    mySmartUpload.setMaxFileSize(500 * 1024*1024);
    //上载文件
    mySmartUpload.upload();
    com.jspsmart.upload.Request req = mySmartUpload.getRequest();
    String myFileName;
    String pic_url="pic/upload/"+"myFileName";
    //循环取得所有上载的文件
    for (int i=0;i<mySmartUpload.getFiles().getCount();i++){
	   //取得上载的文件
	   com.jspsmart.upload.File myFile = mySmartUpload.getFiles().getFile(i);

	   if (!myFile.isMissing())
	    {
	   //取得上载的文件的文件名
	     myFileName=myFile.getFileName();

	//    out.println("filename---------------->"+myFileName);
	//    out.println("<br>");

	    //取得不带后缀的文件名
	    String  suffix=myFileName.substring(0,myFileName.lastIndexOf('.'));
	 //   out.println("suffix---------------->"+suffix);
	//    out.println("<br>");

	    //取得后缀名
	    String  ext= mySmartUpload.getFiles().getFile(0).getFileExt();

	   // out.println("<br>");
	    boolean is_image = ext.equals("gif")||ext.equals("jpg")||ext.equals("GIF")||ext.equals("JPG");
	    if(!is_image)
	    {
	       //out.println("not image!!");
	       throw new Exception("上传图片类型只能是gif或jpg文件，请检您的图片路径和文件类型!");
	    }
	    //取得文件的大小
	    int fileSize=myFile.getSize();
	   // out.println("fileSize---------------->"+fileSize);
	   // out.println("<br>");

	    if(fileSize>1*1024*1024 )
	    {
	       throw new Exception("上传图片不能大于1M!!");
	    }

	    if(fileSize==0)
	    {
	       throw new Exception("上传图片不存在，请确定您选择的图片路径是否正确!!");
	    }
	    //保存路径
	    String aa=getServletContext().getRealPath("/")+"/"+"pic/upload/";
	    String trace=aa+myFileName;
	    System.out.println("path----------->"+trace);
	   // out.println("<br>");
	    //将文件保存在服务器端
	    myFile.saveAs(trace,mySmartUpload.SAVE_PHYSICAL);

	    //out.println(("上载成功！！！").toString());
	   }
	  }
%>