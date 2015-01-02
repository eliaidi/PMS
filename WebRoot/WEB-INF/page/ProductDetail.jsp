<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.liaochente.pms.util.SearchProductHelp"%>
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
		var root="<%=path%>";

	function selectColorButton(colorId,colorName) {
		$("#buyfmcolorid").val(colorId);
		$("#buyfmcolorname").val(colorName);
	}
	
	function addProductNumber() {
		var num = $("#productNumber").val();
		if(num==null||num=="") {
			$("#productNumber").val(1);
		}
		else
		{
			var onHand = "${requestScope.product.onhand}";
			if(num!=onHand) {
				$("#productNumber").val(parseInt(num)+1);
			}
		}
	}
	
	function subtractionProductNumber() {
		var num = $("#productNumber").val();
		if(num==null||num==""||num==1) {
			$("#productNumber").val(1);
		}
		else
		{
			$("#productNumber").val(num-1);
		}
	}
	
	function checkProductNumber() {
		var checkNumberType = /^\d+$/;
		var checkNumberLength5 = /^\d{1,5}$/;
		var num = $("#productNumber").val();
		if(checkNumberType.test(num)) {
			
		}
	}
	
	function buyfmSubmit() {
		var num = $("#productNumber").val();
		var checkNumberType = /^\d+$/;
		if(!checkNumberType.test(num)) {
			alert("请输入正确的购买数量");
			$("#productNumber").focus();
			return;
		}
		var _temp = "${requestScope.product.color_id}";
		if(_temp!=null&&_temp!="") {
			var checkColorSelected = $("#buyfmcolorid").val();
			if(checkColorSelected==null||checkColorSelected=="") {
				alert("请选择商品颜色");
				return;
			}
		}
		$("#buyfmnum").val(num);
		var url = root + "/ajaxAddProduct.action";
		$.post(
			url,
			{"product.id":$("#buyfmid").val(),
			"product.color_id":$("#buyfmcolorid").val(),
			"product.color_name":$("#buyfmcolorname").val(),
			"product.number":$("#buyfmnum").val(),
			"product.price":$("#price").val(),
			"product.discount":$("#discount").val(),
			"product.name" : $("#name").val()}
			,function (data){
				if(data=="yes")
				{
					location.href = "goOrderConfirmation.action";
				}
				else
				{
					alert("购买失败");
				}
			},"json"
		);
	}

</script>
	</head>

	<body>
		<jsp:include page="index_header.jsp"></jsp:include>

		<div class="container body-container">
			<div class="row">
				<div class="span2">
					<img alt="" src="images/logo.png">
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

		<div id="content" class="container boder-b body-container">
			<div id="contentheaderrow" class="row">
				<div class="span12">
					<ul class="breadcrumb">
						<li>
							<a href="index.action">首页</a>
							<span class="divider">/</span>
						</li>
						<li>
							<a
								href="product.action?searchHelp.productClass=${requestScope.product.class_id}">${requestScope.product.class_name}</a>
							<span class="divider">/</span>
						</li>
						<li class="active">
							${requestScope.product.name}
						</li>
					</ul>
				</div>
			</div>
			<div class="row">
				<div id="colum" class="span8">
					<table class="table">
						<tr>
							<td rowspan="6" class="span3">
								<ul class="thumbnails">
									<li class="span3">
										<div class="thumbnail">
											<img src="images/product/default.jpg" alt="">
											<p>
												<a class="btn" data-toggle="modal" href="javascript:void(0)">更多图片</a>
											</p>
										</div>
									</li>
								</ul>
							</td>
							<td colspan="3">
								<h4>
									${requestScope.product.name}
								</h4>
							</td>
						</tr>
						<tr>
							<td>
								<strong>原价</strong>:${requestScope.product.price==null?"暂无价格信息":requestScope.product.price}
							</td>
							<td>
								<strong>实际价格</strong>：${requestScope.product.price*requestScope.product.discount}
							</td>
							<td>
								<strong>折扣</strong>:${requestScope.product.discount*10}
							</td>
						</tr>
						<tr>
							<td colspan="3">
								库存:
								<span class="input-mini uneditable-input">${requestScope.product.onhand}</span>
							</td>
						</tr>
						<tr>
							<td colspan="3">
								<strong>购买数量(必填):</strong>
								<div class="input-append input-prepend">
									<button class="btn" type="button"
										onclick="subtractionProductNumber()">
										-
									</button>
									<input id="productNumber" name="productNumber" type="text" class="input-mini"
										value="1">
									<button class="btn" type="button" onclick="addProductNumber()">
										+
									</button>
								</div>
							</td>
						</tr>
						<tr>
							<td colspan="3">
								颜色:
								<div class="btn-group" data-toggle="buttons-radio">
									<s:iterator value="#request.colorList" status="st">
										<button type="button" class="btn"
											onclick="selectColorButton(<s:property value="id"/>,'<s:property value="name"/>')">
											<s:property value="name" />
										</button>
									</s:iterator>
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<form id="buyFm" action="addProductInCart.action"
									method="post">
									<input id="buyfmid" name="product.id" type="hidden"
										value="${requestScope.product.id}">
									<input id="buyfmcolorid" name="product.color_id"
										type="hidden" value="">
									<input id="buyfmcolorname" name="product.color_name"
										type="hidden" value="">
									<input id="buyfmnum" name="product.number" type="hidden"
										value="1">
									<input id="price" name="product.price" type="hidden"
										value="${requestScope.product.price}">
									<input id="discount" name="product.discount" type="hidden"
										value="${requestScope.product.discount}">
									<input id="name" name="product.name" type="hidden"
										value="${requestScope.product.name}">
									<button type="button" onclick="buyfmSubmit()"
										class="btn btn-success">
										<i class="icon-heart icon-white"></i> 立即购买
									</button>
								</form>
							</td>
							<td>
									<button class="btn btn-warning" onclick="addShoppingCart()">
										<i class="icon-shopping-cart icon-white"></i> 加入购物车
									</button>
							</td>
							<td></td>
						</tr>
					</table>
				</div>

				<div class="span4">
					<div class="row">
						<div class="span3">
							<button class="btn btn-warning btn-large span3">
								商品关注排行榜
							</button>
						</div>
					</div>
					<div class="row">
						<div class="span3">
							<table class="table table-hover span3">
								<s:iterator value="#request.recommendList" status="st">
									<tr class="info">
										<td>
											<span class="label label-info">
												<i class="icon-star icon-white"></i>
											</span>
											<span class="label label-important">
												￥:<s:property value="price*100*discount*100/10000"/>元
											</span>
											<a href="productDetailAction?searchHelp.id=<s:property value="id"/>">
												<s:property value="name"/>
											</a>
										</td>
									</tr>
								</s:iterator>
							</table>
						</div>
					</div>
				</div>
			</div>

		</div>
		
		<br/>
		
		<!-- 广告位 -->
		<div class="container boder-b body-container">
			<div class="row">
					<img alt="" src="images/ledimg/led_1.gif" class="span12">
			</div>
		</div>
		
		<br/>

		<div class="container boder-b body-container">
			<div class="row">
				<div class="span3">
					
				</div>
				<div class="span9">
					<ul class="nav nav-tabs">
						<li class="active">
							<a href="#discription" data-toggle="tab">商品详情</a>
						</li>
						<li>
							<a href="#comment" data-toggle="tab">评价详情(${requestScope.comment_count})</a>
						</li>
						<li>
							<a href="#bidhistory" data-toggle="tab">成交记录</a>
						</li>
					</ul>
					<div id="myTabContent" class="tab-content">
						<!-- 详情面板 -->
						<div class="tab-pane fade in active" id="discription">
							<div class="row">
								<div class="span9">
										<div class="alert alert-info">
											<small>详细参数列表</small> 
											<table class="table table-hover table-condensed">
												<tr>
													<td>产品名称：${requestScope.product.name }</td>
													<td>大小：${requestScope.product.size }</td>
													<td>功率：${requestScope.product.watt}</td>
													<td>宽度：${requestScope.product.weight}</td>
												</tr>
												<tr>
													<td>类别：${requestScope.product.class_name}</td>
													<td>品牌：${requestScope.product.brand_name}</td>
													<td>产品所在地：${requestScope.product.area}</td>
													<td>产品上架日期：${requestScope.product.modification_date}</td>
												</tr>
												<tr>
													<td colspan="4">生产厂家：${requestScope.product.manufacturer}</td>
												</tr>
											</table>
										</div>
								</div>
							</div>
							<div class="row">
								<div class="span9">
									${requestScope.product.discription}
								</div>
							</div>
						</div>
						<!-- 评价面板 -->
						<div class="tab-pane fade" id="comment">
							<s:if test="#request.productCommentList.size == 0">
								<div class="alert alert-info">
									评价信息暂无
								</div>
							</s:if>
							<s:iterator value="#request.productCommentList" status="st">
							<div class="row">
								<div class="span2">
									<ul class="thumbnails">
										<li class="span2">
											<div class="thumbnail">
												<a
													href="userManager.action?user_id=<s:property value="user_id"/>"
													class="thumbnail"> <img
													src="<s:property value="imagesPath"/>" alt=""> </a>
												<p class="text-info">
													<span class="label label-info">昵称</span>:
													<s:property value="username" />
												</p>
												<p class="text-info">
													<span class="label label-warning">等级</span>:
													<s:property value="powerid" />
												</p>
											</div>
										</li>
									</ul>
								</div>
								<div class="span7" id="well">
									<div class="alert alert-info">
										<strong>评论时间:</strong>
										<s:property value="comment_date" />
										<hr>
										<strong>评论:</strong>
										<s:property value="comment_content" />
									</div>
								</div>
							</div>
						</s:iterator>
						</div>
						<!-- 成交记录面板 -->
						<div class="tab-pane fade" id="bidhistory">
						</div>
					</div>
				</div>
			</div>
		</div>

		<jsp:include page="index_footer.jsp"></jsp:include>

	</body>
</html>
