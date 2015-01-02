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
<title>My JSP 'UserCenter.jsp' starting page</title>
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
	});
</script>
</head>

<body>
	<jsp:include page="../index_header.jsp"></jsp:include>

	<br>
	

	<div class="container boder-b body-container">
		<div class="row">
			<div class="span12">
				<div class="alert alert-info">
					<i class="icon-fire icon-white"></i> <strong>当前订单状态:</strong>${requestScope.orderDetail.status}
				</div>
			</div>
		</div>
		<div class="row">
			<div class="span12">
					<ul class="nav nav-tabs">
						<li class="active"><a href="#orderDetail" data-toggle="tab">订单信息</a>
						</li>
					</ul>
					<div id="tabContent" class="tab-content">
							<div class="tab-pane fade in active" id="orderDetail">
								<div class="row">
									<div class="span12">
										<div class="alert alert-info">
											&nbsp;&nbsp;<i class="icon-fire"></i><strong>收货地址:</strong>
											${requestScope.orderDetail.consignee_name} 
											，&nbsp;	${requestScope.orderDetail.consignee_phone}，&nbsp;
											${requestScope.orderDetail.consignee_address} ，&nbsp;${requestScope.orderDetail.postcode} 
											<br>
											&nbsp;&nbsp;<i class="icon-fire"></i><strong>买家留言:</strong>
											${requestScope.orderDetail.user_message}
										</div>
									</div>
								</div>
								<div class="row">
									<div class="span12">
										<div class="alert alert-success">
										 &nbsp;&nbsp;<i class="icon-fire"></i><strong>卖家信息:</strong>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="span12">
										<div class="alert">
										 &nbsp;&nbsp;<i class="icon-fire"></i><strong>订单信息:</strong>
										  	<table class="table table-condensed">
												<tbody>
													<tr>
														<td>
															订单编号:
														</td>
														<td>
															${requestScope.orderDetail.order_number }
														</td>
														<td>
															订单开始时间:
														</td>
														<td>
															${requestScope.orderDetail.start_date}
														</td>
														<td>
															发货时间:
														</td>
														<td>
															${empty requestScope.orderDetail.send_date ? '还未发货' : requestScope.orderDetail.send_date}
														</td>
													</tr>
													<tr>
														<td>
															订单完成时间:
														</td>
														<td>
															${empty requestScope.orderDetail.end_date ? '暂无' : requestScope.orderDetail.end_date}
														</td>
														<td>
															运送方式:
														</td>
														<td>
															${requestScope.orderDetail.shipping_method}
														</td>
														<td>
															付款方式:
														</td>
														<td>
															货到付款
														</td>
													</tr>
													<tr>
														
													</tr>
												</tbody>
											</table>
											<table class="table table-condensed table-bordered table-striped">
												<thead>
													<tr class="success">
														<th>商品名</th>
														<th>状态</th>
														<th>购买数量</th>
														<th>商品颜色</th>
														<th>商品总价(元)</th>
													</tr>
												</thead>
												<tbody>
													<s:set scope="request" var="totalPrice" value="0"></s:set>
													<s:iterator value="#request.orderDetail.son_order_detail_list" var="item">
														<tr>
															<td><s:property value="product_name"/></td>
															<td><s:property value="status"/></td>
															<td><s:property value="num"/></td>
															<td><s:property value="color_name"/></td>
															<td><s:property value="price"/>元</td>
														</tr>
													</s:iterator>																
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
					</div>
			</div>
		</div>
		<div class="row">
			<div class="span12">
				<div class="alert alert-info">
					<i class="icon-fire icon-white"></i> <strong>热卖商品:</strong>
				</div>
			</div>
		</div>
	</div>

	<br>

	<jsp:include page="../index_footer.jsp"></jsp:include>
</body>
</html>
