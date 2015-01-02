<%@ page language="java"
	import="java.util.*,com.liaochente.pms.shoppingcart.cart.impl.ShoppingCartImpl,bean.Product"
	pageEncoding="utf-8"%>
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

<title>物流订单填写</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="shortcut icon" href="images/favicon.ico">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/text.css">
<link rel="stylesheet" type="text/css" href="css/free.css">
<script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/common_cart.js"></script>

<script type="text/javascript">
	var root = "<%=path%>";
	var product_id = "";
	var chevronButtonType = "down"; 
	$(function() {
		$("#confirm").modal({
			backdrop : false,
			show : false
		});
	});

	function openModal(id) {
		product_id = id;
		$("#confirm").modal("show");
	}

	function closeModal() {
		$("#confirm").modal("hide");
	}
	
	function shrinkTable() {
		if(chevronButtonType == "up") {
			$(".table").show();
			$(".icon-chevron-up").addClass("icon-chevron-down");
			$(".icon-chevron-down").removeClass("icon-chevron-up");
			chevronButtonType = "down";
		} else {
			$(".table").hide();
			$(".icon-chevron-down").addClass("icon-chevron-up");
			$(".icon-chevron-up").removeClass("icon-chevron-down");
			chevronButtonType = "up";
		}
	}
</script>
</head>

<body>
	<jsp:include page="../index_header.jsp"></jsp:include>

	<br>

	<div class="container  body-container">
		<div class="row">
			<div class="span12">
				<div class="alert alert-info">
					<h4 class="alert-heading"><i class="icon-fire icon-white"></i>订单物品信息 <button class="btn btn-info btn-mini" onclick="shrinkTable()"><i class="icon-chevron-down icon-white"></i></button></h4>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="span12">
				<div class="alert alert-block ">
					<table class="table table-condensed">
						<thead>
							<tr>
								<th>商品ID</th>
								<th>商品名</th>
								<th>价格</th>
								<th>购买数量</th>
								<th>商品颜色</th>
							</tr>
						</thead>
						<tbody>
							<c:choose>
								<c:when
									test="${empty sessionScope.cart||empty sessionScope.cart.cart}">
									<tr class="error">
										<td colspan="6">购物车是空的亲!
											<button class="btn btn-info"
												onclick="location.href='../../index.jsp'">返回</button>
										</td>
									</tr>
								</c:when>
								<c:otherwise>
									<c:forEach var="item" items="${sessionScope.cart.cart}"
										varStatus="s">
										<c:choose>
											<c:when test="${s.count%2==0}">
												<tr>
											</c:when>
											<c:otherwise>
												<tr class="success">
											</c:otherwise>
										</c:choose>
										<td>${item.id}</td>
										<td>${item.name}</td>
										<td>${item.price*item.discount}元</td>
										<td>${item.number}</td>
										<td>${item.color_name}</td>
										</tr>
									</c:forEach>
								</c:otherwise>
							</c:choose>
						</tbody>
					</table>

				</div>
			</div>
		</div>
		<div class="row">
			<div class="span12">
				<div class="alert alert-info">
					<h4 class="alert-heading">物流信息填写</h4>
				</div>
				<div class="alert alert-block">
					<form class="form-horizontal" action="orderHandlerAdd.action" method="post">
						<fieldset>
							<s:token></s:token>
							<div class="control-group">
								<label class="control-label">订单编号</label>
								<div class="controls">
									<span class="input-xlarge uneditable-input">${sessionScope.cart.orderNumber}</span>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="input01">收货人</label>
								<div class="controls">
									<input type="text" class="input-xlarge" id="consignee_name" name="order.consignee_name">
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="input01">联系电话</label>
								<div class="controls">
									<input type="text" class="input-xlarge" id="consignee_phone" name="order.consignee_phone">
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="input01">收货人地址</label>
								<div class="controls">
									<input type="text" class="input-xlarge" id="consignee_address" name="order.consignee_address">
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="postcode">邮政编码</label>
								<div class="controls">
									<input type="text" class="input-small" id="postcode" name="order.postcode">
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="user_message">买家留言</label>
								<div class="controls">
									<textarea rows="3" id="user_message" name="order.user_message"></textarea>
								</div>
							</div>
							<div class="form-actions">
								<button type="submit" class="btn btn-danger">提交</button>
								<button class="btn btn-warning">取消</button>
							</div>
						</fieldset>
					</form>
				</div>
			</div>
		</div>
	</div>

	<br>

	<jsp:include page="../index_footer.jsp"></jsp:include>



	<div class="modal hide fade" id="confirm">
		<div class="alert alert-error">
			<div class="modal-header">
				<i class=" icon-remove"></i>删除确认
			</div>
		</div>

		<div class="modal-body">
			<p>确定要移除该商品吗?</p>
		</div>
		<div class="modal-footer">
			<button class="btn btn-info" onclick="confirmRemove()">确定</button>
			<button class="btn" onclick="closeModal()">取消</button>
		</div>
	</div>
</body>
</html>
