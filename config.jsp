<%@ page contentType="text/html;charset=GBK"%>
<%
String SystemURL			= "http://" + request.getHeader("host") + "/myshop/";

String UploadFolder			= "pic/upload";													//存放上传图片的文件夹
int MaxFileSize				= 1024 * 300;													//允许上传图片的大小
String UploadFolder2		= "images";														//存放上传新闻图片的文件夹
int MaxFileSize2			= 1024 * 300;													//允许上传新闻图片的大小

String tb_shop_catalog			= "shop_catalog";											//货架名称
String tb_shop_product_info		= "shop_product_info";										//商品信息
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