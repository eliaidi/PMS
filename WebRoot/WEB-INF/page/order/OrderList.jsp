<%@page import="com.liaochente.pms.util.CommonUtil"%>
<%@page import="net.sf.json.JSONArray"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
		<title>用户订单列表</title>
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
		<script type="text/javascript" src="js/convert.js"></script>
		
		<script type="text/javascript">
		var t_dictionary = <%=CommonUtil.getCacheAsJSONArray("t_dictionary")%>;
		$(function(){
			$(".son_order_status").each(function() {
				$(this).text(fommatterDictionary(t_dictionary,"son_order_status",$(this).text()));
			});
		});
		
		function deleteOrder(id) {
			if(confirm("确定要删除吗?")) {
			
			}
		}
		
		function pageTurning(currentPage){
			$("#pageHelpCurrentPage").val(currentPage);
			$("#searchFm").submit();
		}
		
		</script>
  </head>
  
  <body class="body-background-white">
	<div class="row">
		<div class="span9">
			<s:iterator var="item" value="#request.orderList" status="ost">
			<table class="table table-bordered table-hover table-condensed">
				<thead>
					<tr class="colors1">
						<td colspan="6">
							<s:text name="label26"></s:text>:<s:property value="order_number" />
							<a href="javascript:void(0)" onclick="deleteOrder('<s:property value="id"/>')" >删除</a>
						</td>
					</tr>
				</thead>
				<s:iterator var="sonItem" value="#item.list" status="sost">
				<tr>
					<td>
						<a href="productDetailAction.action?searchHelp.id=<s:property value="id"/>"	target="_parent">
							<img src="images/<s:property value="image"/>" class="span1 img-polaroid"> 
						</a>
					</td>
					<td>
						<strong> 
							<a href="productDetailAction.action?searchHelp.id=<s:property value="id"/>"	target="_parent">
								<s:property value="product_name" />
							</a> 
						</strong>
					</td>
					<td>
						<s:text name="label30"></s:text>:<s:property value="num" />
					</td>				
					<td>
						<s:text name="label20"></s:text>:<s:property value="price" />(元)
					</td>				
					<td>
						<a target="_parent" href="orderHandlerDetail.action?order.id=<s:property value="id"/>">订单详情</a>
					</td>				
					<td class="son_order_status">
						<s:property value="status" />
					</td>				
				</tr>
				</s:iterator>
			</table>
			</s:iterator>
		</div>
	</div>
	
	<div id="contentrow" class="row">
	<div class="pagination pagination-centered">
		<form id="searchFm" action="orderList.action">
		<input id="pageHelpCurrentPage" type="hidden" name="pageHelp.currentPage" value="${pageHelp.currentPage}">
		<ul>
			<c:if test="${requestScope.pageHelp.totalPage!=0}">
				<c:choose>
					<c:when test="${requestScope.pageHelp.currentPage>1}">
						<li>
							<a href="javascript:void(0)"
								onclick="pageTurning(${requestScope.pageHelp.lastPage})">&laquo;</a>
						</li>
					</c:when>
					<c:otherwise>
						<li class="disabled">
							<a>&laquo;</a>
						</li>
					</c:otherwise>
				</c:choose>
				<c:forEach var="i" begin="1"
					end="${requestScope.pageHelp.totalPage}">
					<c:choose>
						<c:when test="${requestScope.pageHelp.currentPage==i}">
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
						test="${requestScope.pageHelp.currentPage<requestScope.pageHelp.totalPage}">
						<li>
							<a href="javascript:void(0)"
								onclick="pageTurning(${requestScope.pageHelp.nextPage})">&raquo;</a>
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
</body>
</html>
