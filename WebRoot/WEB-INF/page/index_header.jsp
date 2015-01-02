<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index_header.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
  </head>
  
  <body>
    <div id="navbar" class="navbar">
			<div class="navbar-inner">
				<ul class="nav">
					<a class="brand" href="#" >家电商城</a>

					<li class="divider-vertical"></li>
					<li class="active">
						<a href="#"><s:text name="label0"></s:text></a>
					</li>

					<li class="divider-vertical"></li>
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">产品服务</a>
						<ul class="dropdown-menu">
							<li>
								<a href="goRepairService.action">保修服务</a>
							</li>
							<li>
								<a href="goDriverDownload.action">驱动下载</a>
							</li>
							<li>
								<a href="#">其他</a>
							</li>
							<li class="divider"></li>
							<li>
								<a href="#">预订产品</a>
							</li>
						</ul>
					</li>

					<li class="divider-vertical"></li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">帮助中心</a>
						<ul class="dropdown-menu">
							<li>
								<a href="#">购物指南</a>
							</li>
							<li>
								<a href="#">配送方式</a>
							</li>
							<li>
								<a href="#">支付方式</a>
							</li>
							<li class="divider"></li>
							<li>
								<a href="#">售后技术支持</a>
							</li>
						</ul>
					</li>

					<li class="divider-vertical"></li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">关于我们</a>
						<ul class="dropdown-menu">
							<li>
								<a href="#">联系我们</a>
							</li>
							<li>
								<a href="#">网站建设</a>
							</li>
							<li>
								<a href="#">商务合作</a>
							</li>
						</ul>
					</li>

				</ul>

				<ul class="nav pull-right">
				  <s:if test="#session.user!=null">
					<li class="dropdown">
						<a href="#" class="dropdown-toggle"	data-toggle="dropdown">
							<i class="icon-user"></i> 
							&nbsp; 
							<s:property	value="#session.user.username" />  
							<b class="caret"></b>
						</a>
						<ul class="dropdown-menu">
							<li>
								<a href="goUserCenter.action">
									<strong>个人中心</strong>
								</a>
							</li>
						</ul>
					</li>
					<li class="divider-vertical"></li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle"	data-toggle="dropdown">操作 <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li>
								<a href="goOrderConfirmation.action">
									<strong>购物车</strong>
								</a>
								<a href="loginOut.action">
									<strong>安全退出</strong>
								</a>
							</li>
						</ul>
					</li>
				   </s:if>
				   <s:if test="#session.user==null">
				   	 <li>
				   	 	<a href="goLogin.action">登录</a>
				   	 </li>
				   	 <li class="divider-vertical"></li>
				   	 <li>
				   	 	<a href="goRegister.action">注册</a>
				   	 </li>
				   	 <li class="divider-vertical"></li>
				   	 <li>
				   	 	<a href="goOrderConfirmation.action">购物车</a>
				   	 </li>
					</s:if>
				</ul>
			</div>
		</div>
  </body>
</html>
