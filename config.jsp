<%@ page contentType="text/html;charset=GBK"%>
<%
String SystemURL			= "http://" + request.getHeader("host") + "/myshop/";

String UploadFolder			= "pic/upload";													//����ϴ�ͼƬ���ļ���
int MaxFileSize				= 1024 * 300;													//�����ϴ�ͼƬ�Ĵ�С
String UploadFolder2		= "images";														//����ϴ�����ͼƬ���ļ���
int MaxFileSize2			= 1024 * 300;													//�����ϴ�����ͼƬ�Ĵ�С

String tb_shop_catalog			= "shop_catalog";											//��������
String tb_shop_product_info		= "shop_product_info";										//��Ʒ��Ϣ
String tb_gbook_info			= "shop_gbook_info";
String tb_member_info			= "shop_member_info";
String tb_member_favorite		= "shop_member_favorite";
String tb_news_imgs				= "shop_news_imgs";
String tb_news_info				= "shop_news_info";
String tb_news_type				= "shop_news_type";
String tb_orders_main			= "shop_orders_main";
String tb_orders_r_info			= "shop_orders_r_info";
String tb_shop_admin			= "shop_admin";
%>