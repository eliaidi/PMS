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
<link rel="stylesheet" href="css/style.css" type="text/css"
			media="screen" />
<script type="text/javascript" src="js/bootstrap.js"></script>

<script type="text/javascript">
	$(function() {
	});
	
	function clickTab(tabClass) {
		$("." + tabClass).click();
	}
</script>
</head>

<body>
	<jsp:include page="../index_header.jsp"></jsp:include>

	<br>

	<div class="container boder-b body-container">
		<div class="row">
			<div class="span2 aglin-center" >
				<br>
				<img src="${sessionScope.user.imagesPath}" class="img-polaroid">
				<br>
				<p>
					<a href="goUserCenter.action">${sessionScope.user.username}</a>
				</p>
				<p>
					<a href="userManager.action?id=${sessionScope.user.id}"><s:text name="label11"></s:text></a>
				</p>
				<hr>
				<h4><s:text name="label47"></s:text></h4>
				<ul class="nav nav-list">
					<li>
						<a href="goOrderConfirmation.action"><i class="icon-shopping-cart"></i><s:text name="label12"></s:text></a>
					</li>
					<li>
						<a href="javascript:void(0)" onclick="clickTab('orderList')"><i class="icon-align-justify"></i>订单表</a>
					</li>
					<li>
						<a href="javascript:void(0)" onclick="clickTab('favorite')"><i class="icon-heart"></i><s:text name="label13"></s:text></a>
					</li>
					<li>
						<a href="javascript:void(0)" onclick="clickTab('messagebox')"><i class="icon-envelope"></i><s:text name="label14"></s:text></a>
					</li>
					<li>
						<a href="javascript:void(0)" onclick="clickTab('commentList')"><i class="icon-comment"></i><s:text name="label15"></s:text></a>
					</li>
				</ul>
			</div>
			
			<div class="span9">
				<ul class="nav nav-tabs">
					<li class="active"><a href="#userInfo" class="userInfo" data-toggle="tab"><s:text name="label44"></s:text></a>
					</li>
					<li><a href="#orderList" class="orderList" data-toggle="tab"><s:text name="label9"></s:text></a></li>
					<li><a href="#commentList" class="commentList" data-toggle="tab">评价盒</a></li>
					<li><a href="#messagebox" class="messagebox" data-toggle="tab">消息箱</a></li>
					<li><a href="#favorite" class="favorite" data-toggle="tab">收藏夹</a></li>
				</ul>
				<div id="tabContent" class="tab-content">
					<div class="tab-pane fade in active" id="userInfo">
						<div class="row">
							<div class="span9">
								<div class="alert">
					            	<strong><s:text name="label10"></s:text>:</strong><img src="${session.user.power.imagesPath }" class="img-rounded" title="用户等级:${session.user.power.name }" alt="X">
					            	&nbsp;&nbsp;&nbsp;<strong><s:text name="label46"></s:text>:</strong> &nbsp;&nbsp;&nbsp;待确认收货(${empty requestScope.orderCountMap.unconfirmed ? 0 : requestScope.orderCountMap.unconfirmed})
					            	&nbsp;&nbsp;&nbsp;待评价(${empty requestScope.orderCountMap.affirm ? 0 : requestScope.orderCountMap.affirm})
								</div>
							
								<div class="alert alert-info">
									<div class="page-header">
									  <h4><s:text name="label45"></s:text>(Personal Information)</h4>
									</div>
								    <h4 class="alert-heading">
									<i class="icon-fire icon-white"></i><strong><s:text name="label45"></s:text>:</strong>${session.user.real_name}
									</h4>
									<i class="icon-fire icon-white"></i><strong><s:text name="label22"></s:text>:</strong>${session.user.sex}
									<br>
									<i class="icon-fire icon-white"></i><strong><s:text name="label23"></s:text>:</strong>${session.user.age}
									<br>
									<i class="icon-fire icon-white"></i><strong><s:text name="label24"></s:text>:</strong>${session.user.phone}
									<address>
									<i class="icon-fire icon-white"></i><strong><s:text name="label38"></s:text>:</strong>
									<a href="javascript:void(0)">${session.user.email}</a>
									</address>
								</div>
							</div>
						</div>
					</div>
					
					<div class="tab-pane fade in" id="orderList">
						<div class="row">
							<div class="span9">
								<div class="alert">
					            	<strong><s:text name="label10"></s:text>:</strong><img src="${session.user.power.imagesPath }" class="img-rounded" title="用户等级:${session.user.power.name }" alt="X">
					            	&nbsp;&nbsp;&nbsp;<strong><s:text name="label46"></s:text>:</strong> &nbsp;&nbsp;&nbsp;待确认收货(${empty requestScope.orderCountMap.unconfirmed ? 0 : requestScope.orderCountMap.unconfirmed})
					            	&nbsp;&nbsp;&nbsp;待评价(${empty requestScope.orderCountMap.affirm ? 0 : requestScope.orderCountMap.affirm})
								</div>
								<iframe src="orderList.action" width="100%" height="800px" frameborder="0"  marginwidth="0" marginheight="0" border="0">
								</iframe>
							</div>
						</div>
					</div>
					
					<div class="tab-pane fade in" id="commentList">
						<div class="row">
							<div class="span9">
								<s:iterator value="#request.commentList" var="item">
									<div class="alert alert-info">
										<strong>评论时间:</strong>
										<s:property value="comment_date" />
										<hr>
										<strong>评论:</strong>
										<s:property value="comment_content" />
									</div>
								</s:iterator>
								<div class="pagination pagination-centered">
									<form id="searchFm" action="orderList.action">
										<input id="pageHelpCurrentPage" type="hidden" name="commentPageHelp.currentPage" value="${commentPageHelp.currentPage}">
										<ul>
											<c:if test="${requestScope.commentPageHelp.totalPage!=0}">
												<c:choose>
													<c:when test="${requestScope.commentPageHelp.currentPage>1}">
														<li>
															<a href="javascript:void(0)"
																onclick="pageTurning(${requestScope.commentPageHelp.lastPage})">&laquo;</a>
														</li>
													</c:when>
													<c:otherwise>
														<li class="disabled">
															<a>&laquo;</a>
														</li>
													</c:otherwise>
												</c:choose>
												<c:forEach var="i" begin="1"
													end="${requestScope.commentPageHelp.totalPage}">
													<c:choose>
														<c:when test="${requestScope.commentPageHelp.currentPage==i}">
															<li class="active">
																<a href="javascript:void(0)" onclick="pageTurning(${i})">${i}</a>
															</li>
														</c:when>
														<c:otherwise>
															<li>
																<a href="javascript:void(0)" onclick="pageTurning(${i})">${i}</a>
															</li>
														</c:otherwise>
													</c:choose>
												</c:forEach>
												<c:choose>
													<c:when
														test="${requestScope.commentPageHelp.currentPage<requestScope.commentPageHelp.totalPage}">
														<li>
															<a href="javascript:void(0)"
																onclick="pageTurning(${requestScope.commentPageHelp.nextPage})">&raquo;</a>
														</li>
													</c:when>
													<c:otherwise>
														<li class="disabled">
															<a>&raquo;</a>
														</li>
													</c:otherwise>
												</c:choose>
											</c:if>
										</ul>
									</form>
								</div>
							</div>
						</div>						
					</div>
					
					<div class="tab-pane fade in" id="messagebox">
						<div class="row">
							<div class="span9">
								<s:iterator value="#request.commentList" var="item">
									<div class="alert alert-info">
										<strong>评论时间:</strong>
										<s:property value="comment_date" />
										<hr>
										<strong>评论:</strong>
										<s:property value="comment_content" />
									</div>
								</s:iterator>
								<div class="pagination pagination-centered">
									<form id="searchFm" action="orderList.action">
										<input id="pageHelpCurrentPage" type="hidden" name="commentPageHelp.currentPage" value="${commentPageHelp.currentPage}">
										<ul>
											<c:if test="${requestScope.commentPageHelp.totalPage!=0}">
												<c:choose>
													<c:when test="${requestScope.commentPageHelp.currentPage>1}">
														<li>
															<a href="javascript:void(0)"
																onclick="pageTurning(${requestScope.commentPageHelp.lastPage})">&laquo;</a>
														</li>
													</c:when>
													<c:otherwise>
														<li class="disabled">
															<a>&laquo;</a>
														</li>
													</c:otherwise>
												</c:choose>
												<c:forEach var="i" begin="1"
													end="${requestScope.commentPageHelp.totalPage}">
													<c:choose>
														<c:when test="${requestScope.commentPageHelp.currentPage==i}">
															<li class="active">
																<a href="javascript:void(0)" onclick="pageTurning(${i})">${i}</a>
															</li>
														</c:when>
														<c:otherwise>
															<li>
																<a href="javascript:void(0)" onclick="pageTurning(${i})">${i}</a>
															</li>
														</c:otherwise>
													</c:choose>
												</c:forEach>
												<c:choose>
													<c:when
														test="${requestScope.commentPageHelp.currentPage<requestScope.commentPageHelp.totalPage}">
														<li>
															<a href="javascript:void(0)"
																onclick="pageTurning(${requestScope.commentPageHelp.nextPage})">&raquo;</a>
														</li>
													</c:when>
													<c:otherwise>
														<li class="disabled">
															<a>&raquo;</a>
														</li>
													</c:otherwise>
												</c:choose>
											</c:if>
										</ul>
									</form>
								</div>
							</div>
						</div>						
					</div>
					
					
					
					<div class="tab-pane fade in" id="favorite">
						<div class="row">
							<div class="span9">
								
							</div>
						</div>						
					</div>
					
					
				</div>
			</div>
			
		</div>
	</div>

	<jsp:include page="../index_footer.jsp"></jsp:include>
</body>
</html>
