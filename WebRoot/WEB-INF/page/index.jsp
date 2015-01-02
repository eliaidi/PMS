<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

		<title>My JSP 'index.jsp' starting page</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<link rel="shortcut icon" href="images/favicon.ico"> 
		<link rel="stylesheet" type="text/css" href="css/free.css">
		<link rel="stylesheet" type="text/css" href="css/text.css">
		<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
		<link rel="stylesheet" href="themes/default/default.css"
			type="text/css" media="screen" />
		<link rel="stylesheet" href="css/nivo-slider.css" type="text/css"
			media="screen" />
		<link rel="stylesheet" href="css/style.css" type="text/css"
			media="screen" />
		<script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.js"></script>
		<script type="text/javascript" src="js/jquery.nivo.slider.js"></script>
		<script type="text/javascript">
	$(function() {
		$("#slider").nivoSlider();

		$("#callModal").modal({
			show : false,
			keyboard : true,
			backdrop : false
		});

	});
	
	function sendMessage() {
		var url = "";
		$("#messageFm").submit();
	}
	
	function reset() {
		$("#textarea").val("");
	}

	function closeCallModal() {
		$("#callModal").modal("hide");
		reset();
	}

	function requestDetail(id) {
		var url = "productDetailAction.action?product.id=" + id;
	}
</script>
	</head>

	<body>
		<jsp:include page="index_header.jsp"></jsp:include>

		<div class="container body-container">
			<div class="row">
				<div class="span2">
					<img src="images/logo.png">
				</div>

				<div class="span6">
					<div class="row">
						<iframe width="63" height="24" class="mt10 mr10" frameborder="0"
							allowtransparency="true" marginwidth="0" marginheight="0"
							scrolling="no" border="0"
							src="http://widget.weibo.com/relationship/followbutton.php?language=zh_cn&width=63&height=24&uid=2664239401&style=1&btn=red&dpc=1"></iframe>
						<a target="_blank"
							href="http://wpa.qq.com/msgrd?v=3&uin=41989824&site=qq&menu=yes"><img
								border="0" src="http://wpa.qq.com/pa?p=2:41989824:50" alt="联系商家"
								title="联系商家"> </a>
						<a target="_blank"
							href="http://wpa.qq.com/msgrd?v=3&uin=41989824&site=qq&menu=yes"><img
								border="0" src="http://wpa.qq.com/pa?p=2:41989824:50" alt="联系商家"
								title="联系商家"> </a>
						<a target="_blank"
							href="http://wpa.qq.com/msgrd?v=3&uin=41989824&site=qq&menu=yes"><img
								border="0" src="http://wpa.qq.com/pa?p=2:41989824:50" alt="联系商家"
								title="联系商家"> </a>

					</div>
					<%@include file="index_search.jsp" %>
					<div class="row">
						&nbsp;
					</div>
				</div>
				<div class="span4">
				</div>
			</div>
		</div>

		<br>

		<div id="classnavbar" class="container body-container">
			<div id="classrow" class="row">
				<div id="classcolum" class="span12">
					<ul class="nav nav-tabs">
						<li class="active">
							<a href="#productclass" data-toggle="tab"><s:text name="label31"></s:text></a>
						</li>
						<li>
							<a href="#productbrand" data-toggle="tab"><s:text name="label32"></s:text></a>
						</li>
						</ul>
					<div id="myTabContent" class="tab-content">
						<div class="tab-pane fade in active" id="productclass">
							<div class="row">
								<div class="span11">
									<s:iterator value="#request.classList" status="st">
										<a class="btn"
											href="product.action?searchHelp.productClass=<s:property value="id" />">
											<s:property value="name" /> </a>
									</s:iterator>
								</div>
							</div>
						</div>
						<div class="tab-pane fade" id="productbrand">
							<div class="row">
								<div class="span11">
									<s:iterator value="#request.brandList" status="st">
										<a class="btn"
											href="product.action?searchHelp.productBrand=<s:property value="id" />">
											<s:property value="name" /> </a>
									</s:iterator>
								</div>
							</div>
						</div>
					</div>
					<hr>
				</div>
			</div>
		</div>

		<br>
		<div id="changes" class="container body-container">
			<div id="changesrow" class="row">
				<div id="changescolum" class="span12">

					<div class="slider-wrapper theme-default">
						<div id="slider" class="nivoSlider">
							<img src="images/toystory.jpg"
								data-thumb="images/toystory.jpg" alt="" />
							<a href="http://dev7studios.com"><img
									src="images/up.jpg" data-thumb="images/up.jpg" alt=""
									title="This is an example of a caption" /> </a>
							<img src="images/walle.jpg" data-thumb="images/walle.jpg"
								alt="" data-transition="slideInLeft" />
							<img src="images/nemo.jpg" data-thumb="images/nemo.jpg"
								alt="" title="#htmlcaption" />
						</div>
					</div>

				</div>
			</div>
		</div>

		<br>

		<div id="content" class="container boder-b body-container">
			<div id="contentheaderrow" class="row">
				<div class="span12">
					<div class="category-header mt10 ml10 mr10">
						<a class="btn btn-success"><s:text name="label33"></s:text> </a>
						<span class="label label-info"> <a href="ada.action?Aa=aa"><s:text name="label34"></s:text>>>></a>
						</span>
					</div>
					<hr>
					<div id="contentrow" class="row show-grid">
						<div id="colum" class="span12">
							<ul class="thumbnails">
								<s:iterator value="#request.proList" status="stuts">
									<li class="span4">
										<div class="thumbnail div-background-color1">
											<img  src="images/<s:property value="image" />" alt="">
											<p>
												<s:text name="label17"></s:text>:
												<s:property value="name" />
											</p>
											<h4>
												<s:text name="label18"></s:text>:
												<s:property value="brand_name" />
											</h4>
											<h4>
												<s:text name="label35"></s:text>:
												<s:property value="class_name" />
											</h4>
											<h4>
												<s:text name="label19"></s:text>:
												<s:property value="color_name" />
											</h4>
											<h4>
												<s:text name="label36"></s:text>: 100
											</h4>

											<p>
												<a
													href="productDetailAction.action?searchHelp.id=<s:property value="id" />"
													class="btn btn-warning"><s:text name="label5"></s:text></a>
												<a class="btn" data-toggle="modal" href="#callModal"><s:text name="label6"></s:text></a>
											</p>
										</div>
									</li>
								</s:iterator>
							</ul>
						</div>
					</div>
				</div>
			</div>

		</div>

		<jsp:include page="index_footer.jsp"></jsp:include>

		<div class="modal hide fade" id="callModal">
			<div class="modal-header">
				<a class="close" data-dismiss="modal">×</a>
				<h3>
					<s:text name="label6"></s:text>
				</h3>
			</div>
			<div class="modal-body">
				<h4>
					<s:text name="label37"></s:text>
				</h4>
				<span class="label label-info"><s:text name="label38"></s:text>:</span>
				<em>41989824@qq.com</em>
				<br>
				<span class="label label-warning"><s:text name="label39"></s:text>:</span>
				<em>15651775791</em>
				<br>
				<hr>
				<form id="messageFm" name="messageFm" action="" method="post">
					<p>
						<strong><s:text name="label40"></s:text></strong>
					</p>
					<p class="help-block">
						请输入您的留言，以便我们及时为您服务。
					</p>
					<textarea class="input-xlarge" id="textarea" name="message" rows="3"></textarea>
				</form>
			</div>
			<div class="modal-footer">
				<a class="btn btn-primary" onclick="sendMessage();"><s:text name="label40"></s:text></a>
				<a class="btn" onclick="reset();"><s:text name="label41"></s:text></a>
				<a class="btn" onclick="closeCallModal();"><s:text name="label42"></s:text></a>
			</div>
		</div>

	</body>
</html>
