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

<title>订单确认</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
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
	var color_id = "";
	$(function() {
		$("#confirm").modal({
			backdrop : false,
			show : false
		});
	});

	function openModal(id,color_id) {
		product_id = id;
		this.color_id = color_id;
		$("#confirm").modal("show");
	}

	function closeModal() {
		$("#confirm").modal("hide");
	}
	
	function confirmRemove() {
		removeShoppingCart(product_id,color_id);
	}

	function fmSubmit() {
		location.href = root + "/orderFormGenerate.action";
	}
	
	function backIndexPage() {
		location.href = root + "/index.action";
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
					<i class="icon-fire icon-white"></i> <strong>订单确认</strong>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="span12">
				<table class="table table-condensed">
					<thead>
						<tr>
							<th>商品ID</th>
							<th>商品名</th>
							<th>价格</th>
							<th>购买数量</th>
							<th>商品颜色</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<c:choose>
							<c:when
								test="${empty sessionScope.cart||empty sessionScope.cart.cart}">
								<tr class="error">
									<td colspan="6">购物车是空的亲!
										<button class="btn btn-info"
											onclick="backIndexPage()">返回</button></td>
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
												<td>
													<button class="btn btn-mini btn-danger"
														onclick="openModal('${item.id}','${item.color_id}')">从购物车删除</button>
												</td>
											</tr>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</tbody>
				</table>

			</div>
		</div>
		<div class="row">
			<div class="span12">
				<div class="alert">
					<button class="btn btn-info" onclick="fmSubmit()">确定</button>
					<button class="btn btn-info"
						onclick="backIndexPage()">返回</button>
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
