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

		<title>My JSP 'Register.jsp' starting page</title>

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
		<script type="text/javascript" src="js/Register-validation.js"></script>
		<script type="text/javascript">
			var root = "<%=path%>";

	$(function() {
		$("#checkModal").modal({
			backdrop : true,
			show : false
		});
	});

	function breakLogin() {
		location.href = "goLogin.action";
	}

	function isChecked() {
		var isChecked = $("#isAgree").attr("checked");
		if (isChecked) {
			$("#submitButton").removeAttr("disabled");
		} else {
			$("#submitButton").attr("disabled", "disabled");
		}
	}

	function requestImg() {
		$("#securityCodeImg").attr("src",
				"securityCode.action?timestamp=" + new Date());

	}
	
	function lookUpTreaty()
	{
		var url = root + "/requestRegisterTreaty.action";
		$.post(url,
			{},
			function (data)
			{
				openModal(data.name,data.content);
			},
			"json"
		);
	}

	function openModal(title, content) {
		$(".modal-header h3").html(title);
		$(".modal-body p").html(content);
		$("#checkModal").modal("show");
	}

	function closeModal() {
		$("#checkModal").modal("hide");
	}

	function submitForm() {
		var url = root;
		var isCheckUserName = $("#isCheckUserName").val();
		if (isCheckUserName == "no") {
			openModal("用户名检测", "用户名重复不可用,请更换用户名");
			return;
		} else if (isCheckUserName == null || isCheckUserName == "") {
			openModal("用户名检测", "请先检测用户名。");
			return;
		}
		
		if(returnCheckStatus())
		{
			$("#registerFm").submit();
		}
		else
		{
			openModal("提示", "有选项填写错误，请更正。");
		}

	}
</script>
	</head>

	<body>
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

		<div class="container body-container body-b">
			<div class="row">
				<div class="span12">
					<div class="alert alert-info">
						<i class="icon-fire icon-white"></i>
						<strong>注册完成度</strong>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="span12">
					<div class="progress progress-info progress-striped active">
						<div class="bar" style="width: 40%;"></div>
					</div>
					<div class="alert alert-error">
						<i class="icon-star icon-white"></i>
						<strong>没有特别指出的均为必填项,请一定要填完哦，亲！</strong>
						<s:fielderror>
						</s:fielderror>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="span12">
					<form id="registerFm" class="form-horizontal" action="register"
						method="post">
						<s:token></s:token>
						<fieldset>
							<div class="control-group">
								<label class="control-label" for="username">
									用户名
								</label>
								<div class="controls">
									<input type="text" class="input" id="username"
										name="userInfo.username" onblur="validationUserName()">
									<input type="hidden" id="isCheckUserName">
									<button type="button" class="btn" onclick="checkUserName()">
										检测用户名
									</button>
									<span class="help-inline">
										<i id="userCheckIcon"></i>
									</span>
									<p class="help-block">
										用户名长度为5到20个字母或数字
									</p>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="userpassword">
									密码
								</label>
								<div class="controls">
									<input type="password" class="input" id="userpassword"
										name="userInfo.password" onblur="validationPassWord()">
									<span class="help-inline">
										<i id="pwdCheckIcon"></i>
									</span>
									<p class="help-block">
										密码长度为5到20个字母或数字
									</p>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="password_agin">
									再次输入密码
								</label>
								<div class="controls">
									<input type="password" class="input" id="password_agin" onblur="validationPassWordAgin()">
									<span class="help-inline"> 
										<i id="pwdaginCheckIcon"></i>
									</span>
									<p class="help-block">
										请与第一次密码保持一致
									</p>
								</div>
							</div>
							<div class="control-group success">
								<label class="control-label" for="age">
									年龄
								</label>
								<div class="controls">
									<input type="text" class="input" id="age" name="userInfo.age">
									<span class="help-inline">选填,但必须是1到3位的数字</span>
								</div>
							</div>
							<div class="control-group success">
								<label class="control-label" for="sex">
									性别
								</label>
								<div class="controls">
									<select id="sex" name="userInfo.sex">
										<option value="1">
											男
										</option>
										<option value="0">
											女
										</option>
									</select>
									<span class="help-inline"></span>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="email">
									电子邮箱
								</label>
								<div class="controls">
									<input type="text" class="input" id="email"
										name="userInfo.email" onblur="validationEmail()">
									<span class="help-inline">
										<i id="emailCheckIcon"></i>
									</span>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="phone">
									手机号码
								</label>
								<div class="controls">
									<input type="text" class="input" id="phone"
										name="userInfo.phone" onblur="validationPhone()">
									<span class="help-inline">
										<i id="phoneCheckIcon"></i>
									</span>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="real_name">
									真实姓名
								</label>
								<div class="controls">
									<input type="text" class="input" id="real_name"
										name="userInfo.real_name" onblur="validationRealName()">
									<span class="help-inline">
										<i id="realNameCheckIcon"></i>
									</span>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="identity_card">
									身份证号码
								</label>
								<div class="controls">
									<input type="text" class="input" id="identity_card"
										name="userInfo.identity_card" onblur="validationIdentityCard()">
									<span class="help-inline">
										<i id="identityCardCheckIcon"></i>
									</span>
								</div>
							</div>

							<div class="control-group">
								<label class="control-label" for="securityPassword">
									安全码
								</label>
								<div class="controls">
									<input type="text" class="input" id="securityPassword"
										name="userInfo.securityPassword" onblur="validationSecurityPassword()">
									<span class="help-inline">
										<i id="securityPasswordCheckIcon"></i>
									</span>
									<p class="help-block">
										安全码为11到20的数字组合
									</p>
								</div>
							</div>
							<div class="control-group info">
								<label class="control-label" for="securityCode">
									验证码
								</label>
								<div class="controls">
									<input type="text" id="securityCode" name="securityCode"
										placeholder="验证码" class="input" onblur="validationSecurityCode()">
									<img id="securityCodeImg" name="securityCodeImg"
										src="securityCode" alt="刷新页面" onclick="requestImg()">
									<span class="help-inline">
										<i id="securityCodeCheckIcon"></i>
									</span>
								</div>
							</div>
							<div class="control-group success">
								<label class="control-label" for="textarea">
									服务条款
								</label>
								<div class="controls">
									<button type="button" class="btn" onclick="lookUpTreaty()">
										家电商城服务协议
									</button>
									<span class="help-inline">←点击查看完整协议</span>
								</div>
							</div>
							<div class="control-group">
								<div class="controls">
									<label class="checkbox">
										<input type="checkbox" id="isAgree" name="isAgree"
											onclick="isChecked()">
										同意协议
									</label>
								</div>
							</div>
							<div class="form-actions">
								<button id="submitButton" type="button" class="btn btn-primary"
									disabled="disabled" onclick="submitForm()">
									注册
								</button>
								<button type="button" class="btn" onclick="breakLogin()">
									取消
								</button>
							</div>
						</fieldset>
					</form>
				</div>
			</div>
		</div>
		
		<jsp:include page="../index_footer.jsp"></jsp:include>

		<div class="modal hide fade" id="checkModal">
			<div class="alert">
				<div class="modal-header">
					<i class="icon-blue-mushroom"></i>
					<h3>
					</h3>
				</div>
			</div>

			<div class="modal-body">
				<p>
				</p>
			</div>
			<div class="modal-footer">
				<button class="btn" onclick="closeModal()">
					关闭
				</button>
			</div>
		</div>
	</body>
</html>
