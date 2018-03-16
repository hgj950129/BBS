<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018-01-13
  Time: 16:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
	<title>登陆页面</title>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">
	<link rel="stylesheet" href="<%=basePath%>css/My_Custom.css" />
</head>
<body >
	<jsp:include page="PublicPage/page_header.jsp"/>
	<div class="min_height">
		<div class="col-md-4"></div>
		<div class=" col-md-4">
			<div class="row">
				<label class="label font">
					请登录
				</label>
				<hr/>
				<br/>
				<form  class="form-horizontal" role="form" method="post" action="<%=path%>/user/login.do">
					<div class="form-group">
						<input class="form-control"  name="uemail" placeholder="请输入注册邮箱" />
					</div>
					<div class="form-group">
						<input type="password" class="form-control" name="password"  placeholder="请输入密码" />
					</div>
					<div class="form-group">
						<button type="submit" class="btn btn-default btn-color" >登陆</button>
					</div>
				</form>
			</div>
		</div>
		<div class="col-md-4"></div>
	</div>
	<jsp:include page="PublicPage/footer.jsp"/>
	<script src="<%=basePath%>js/jquery.min.js"></script>
	<script src="<%=basePath%>js/bootstrap.min.js"></script>
	<script src="<%=basePath%>js/scripts.js"></script>
</body>
</html>
