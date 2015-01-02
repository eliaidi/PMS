<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'RepairService.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="shortcut icon" href="images/favicon.ico"> 
	<link rel="stylesheet" type="text/css" href="css/text.css">
	<link rel="stylesheet" type="text/css" href="css/free.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/style.css" type="text/css"
			media="screen" />
	<script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/common_cart.js"></script>
	<script type="text/javascript">
		$(function() {
			$("#unit").css("background", "url(images/unit_service.jpg)");
		});
	</script>
  </head>
  
  <body>
	<jsp:include page="../index_header.jsp"></jsp:include>

	<div id="content" class="container boder-b body-container">
		<div class="row">
			<div class="span12">
				<div id="unit" class="hero-unit c0">
					<h1>产品服务</h1>
					<p>感谢您使用家电商城（简称：电城）的产品，我们将为您提供整套的服务，保证您买的放心，用的舒心。</p>
					<p>
						<a class="btn btn-danger btn-large">常见问题</a>
					</p>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="span12">
				<ul class="breadcrumb">
					<li><a href="index.action">首页</a> <span class="divider">/</span>
					</li>
					<li><a href="#">产品服务</a> <span class="divider">/</span>
					</li>
					<li class="active">保修服务</li>
				</ul>
			</div>
		</div>
		<div class="row">
			<div class="span12">
				<div class="progress progress-striped
				     active">
				  <div class="bar"
				       style="width: 100%;"></div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
