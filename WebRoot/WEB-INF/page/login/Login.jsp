<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
    String path = request.getContextPath();
			String basePath = request.getScheme() + "://"
					+ request.getServerName() + ":" + request.getServerPort()
					+ path + "/";
%>

<!DOCTYPE HTML>
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'Login.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link rel="shortcut icon" href="images/favicon.ico">
		<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="css/free.css">
		<link rel="stylesheet" type="text/css" href="css/text.css">
		<script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.js"></script>
		<script type="text/javascript">
	$(function() {
		$("#unit").css("background", "url(images/unit2.jpg)");
	});

	function requestImg() {
		$("#securityCodeImg").attr("src",
				"securityCode.action?timestamp=" + new Date());
	}

	function login() {
		$("#loginFm").submit();
	}

	function register() {
		location.href = "goRegister.action";
	}
	
	//检测验证码超时失效
	function securityCodeTimeOut() {
		
	}
</script>
	</head>

	<body class="body-background-white">
		<div class="alert alert-info">
			<div class="container">
				<div class="row">
					<div class="span12">
						<div class="span1">
							<img src="images/login-logo.png" class="img-polaroid">
						</div>
						<div class="span3">
							<h1>
								家电商城网
							</h1>
						</div>
						<div class="span7">
							<blockquote class="pull-right">
								<p>
									电子产品专卖店,买的舒心,用的放心,给您100分服务质量。
								</p>
								<small>41989824@qq.com <cite title="Source Title">WWW.JDSC.COM</cite>
								</small>
							</blockquote>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container-fluid body-container boder-b ">
			<div class="row-fluid">
				<div class="span7">
					<div id="unit" class="hero-unit c0">
						<h1>
							家电商城网
						</h1>
						<p>
							我们致力于解决网购电器难、质量差、售后无保证等网购难题，让您的网购轻松愉快。
						</p>
						<p>
							<a class="btn btn-primary btn-large">了解更多 </a>
						</p>
					</div>
				</div>
				<div class="span5">
					<div class="alert alert-info">
						<h2>
							用户登录
						</h2>
					</div>
					<div class="alert alert-error">
						<i class="icon-star icon-white"></i>用户名、密码、验证码均为必填！
						<s:fielderror>
						</s:fielderror>
					</div>

					<form id="loginFm" class="form-horizontal" action="login.action"
						method="post">
						<div class="control-group info">
							<label class="control-label" for="username">
								用户名
							</label>
							<div class="controls">
								<input type="text" id="username" name="username"
									placeholder="用户名">
							</div>
						</div>
						<div class="control-group info">
							<label class="control-label" for="password">
								密码
							</label>
							<div class="controls">
								<input type="password" id="password" name="password"
									placeholder="密码">
							</div>
						</div>
						<div class="control-group info">
							<label class="control-label" for="securityCode">
								验证码
							</label>
							<div class="controls">
								<input type="text" id="securityCode" name="securityCode"
									placeholder="验证码" class="span5">
								<img id="securityCodeImg" name="securityCodeImg"
									src="securityCode.do" alt="刷新页面" onclick="requestImg()">
							</div>
						</div>
						<div class="control-group">
							<div class="controls">
								<button type="button" class="btn btn-primary" onclick="login()">
									<i class="icon-user icon-white"></i>登录
								</button>
								<button type="button" class="btn btn-info" onclick="register()">
									<i class=" icon-bookmark icon-white"></i>注册
								</button>
							</div>
						</div>
						<s:token></s:token>
					</form>
				</div>
			</div>
		</div>
		<br>
		<div class="container">
			<div class="row">
				<div class="span4 text-align-center">
					<i class="icon-background-three"></i>
					<h3>
						网站建设
					</h3>
					<p>
						如果您对您的网页不清楚，没经验，不要紧，您告诉我们您最大程度的预算，我们会全程为您提供服务。
						我们提供整站建设、网站优化、网站评估等服务。
					</p>
					<a class="btn">进入</a>
				</div>
				<div class="span4 text-align-center">
					<i class="icon-background-two"></i>
					<h3>
						下载中心
					</h3>
					<p>
						产品刷机失败？找不到驱动程序？驱动版本太旧？产品驱动丢失？这都不是事儿，下载中心帮你搞定！
						这里提供手机、MP3\4\5、平板等设备驱动。
					</p>
					<a class="btn">进入</a>
				</div>
				<div class="span4 text-align-center">
					<i class="icon-background-one"></i>
					<h3>
						商务合作
					</h3>
					<p>
						诚邀各类品牌商入驻家电商城网，在电子商务领域拓展市场份额。
						不接受违国家法律内容的广告（成人、色情、暴力、血腥等），如发现将不给予通知立即下线，不退还任何款项。
					</p>
					<a class="btn">进入</a>
				</div>
			</div>
		</div>
		<br>
		<br>
		<div class="alert alert-info">
		
		</div>
	</body>
</html>
