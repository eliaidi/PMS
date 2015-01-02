<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'index_footer.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		
	</head>

	<body>
		<br>
		<div id="footer" class="container boder-b body-container">
			<div id="footerrow" class="row">
				<div id="footercolum" class="span12">
					<h5 title="友情链接" class="h4 c2 mt10 ml10 mr10">
						<s:text name="label21"></s:text>
					</h5>
					<div class="row">
						<div>

						</div>
					</div>
				</div>
			</div>
		</div>
		<br>
	</body>
</html>
