<%@ page contentType="text/html;charset=gb2312"%>

<%@ page import="java.util.*" %>
<jsp:useBean id="mySmartUpload" scope="page" class="com.jspsmart.upload.SmartUpload" />
<%



   

    mySmartUpload.initialize(pageContext);
    //�������ص����ֵ
    mySmartUpload.setMaxFileSize(500 * 1024*1024);
    //�����ļ�
    mySmartUpload.upload();
    com.jspsmart.upload.Request req = mySmartUpload.getRequest();
    String myFileName;
    String pic_url="pic/upload/"+"myFileName";
    //ѭ��ȡ���������ص��ļ�
    for (int i=0;i<mySmartUpload.getFiles().getCount();i++){
	   //ȡ�����ص��ļ�
	   com.jspsmart.upload.File myFile = mySmartUpload.getFiles().getFile(i);

	   if (!myFile.isMissing())
	    {
	   //ȡ�����ص��ļ����ļ���
	     myFileName=myFile.getFileName();

	//    out.println("filename---------------->"+myFileName);
	//    out.println("<br>");

	    //ȡ�ò�����׺���ļ���
	    String  suffix=myFileName.substring(0,myFileName.lastIndexOf('.'));
	 //   out.println("suffix---------------->"+suffix);
	//    out.println("<br>");

	    //ȡ�ú�׺��
	    String  ext= mySmartUpload.getFiles().getFile(0).getFileExt();

	   // out.println("<br>");
	    boolean is_image = ext.equals("gif")||ext.equals("jpg")||ext.equals("GIF")||ext.equals("JPG");
	    if(!is_image)
	    {
	       //out.println("not image!!");
	       throw new Exception("�ϴ�ͼƬ����ֻ����gif��jpg�ļ����������ͼƬ·�����ļ�����!");
	    }
	    //ȡ���ļ��Ĵ�С
	    int fileSize=myFile.getSize();
	   // out.println("fileSize---------------->"+fileSize);
	   // out.println("<br>");

	    if(fileSize>1*1024*1024 )
	    {
	       throw new Exception("�ϴ�ͼƬ���ܴ���1M!!");
	    }

	    if(fileSize==0)
	    {
	       throw new Exception("�ϴ�ͼƬ�����ڣ���ȷ����ѡ���ͼƬ·���Ƿ���ȷ!!");
	    }
	    //����·��
	    String aa=getServletContext().getRealPath("/")+"/"+"pic/upload/";
	    String trace=aa+myFileName;
	    System.out.println("path----------->"+trace);
	   // out.println("<br>");
	    //���ļ������ڷ�������
	    myFile.saveAs(trace,mySmartUpload.SAVE_PHYSICAL);

	    //out.println(("���سɹ�������").toString());
	   }
	  }
%>