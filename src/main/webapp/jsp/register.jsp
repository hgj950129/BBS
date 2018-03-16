<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018-01-11
  Time: 13:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
	<title>注册页面</title>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<script src="<%=basePath%>js/jquery.min.js"></script>
	<script src="<%=basePath%>js/bootstrap.min.js"></script>
	<script src="<%=basePath%>js/FromValidation.js"></script>
	<script src="<%=basePath%>js/bootstrapValidator.min.js"></script>
	<link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">
	<link rel="stylesheet" href="<%=basePath%>css/bootstrapValidator.min.css">
	<link rel="stylesheet" href="<%=basePath%>css/My_Custom.css" />
</head>
<body>
<jsp:include page="PublicPage/page_header.jsp"/>
<div class="min_height">
	<div class="col-md-4"></div>
	<div class="col-md-4">
		<form  role="form" method="post" action="<%=path%>/user/register.do">
			<div class="form-group">
				<label>昵称:</label><input  class="form-control" placeholder="请输入昵称" name="uname" onblur="checkName()" />
			</div>
			<div class="form-group">
				<label>邮箱:</label><input  class="form-control" type="email"  name="uemail" placeholder="请输入邮箱"/>
			</div>
			<div class="form-group">
				<label>密码:</label><input  type="password"  class="form-control" name="upassword" placeholder="请输入密码"/>
			</div>
			<div class="form-group">
				<label>生日:</label><input  type="datetime-local" name="ubirthday" class="form-control"/>
			</div>
			<div class="form-group">
				性别:<input type="radio" name="usex" value="1" checked/>男
				<input type="radio" name="usex" value="2"/>女
			</div>
			<br />
			<div class="form-group pager">
				<button class="btn btn-form-color" type="submit">注册</button>
				&nbsp;&nbsp;&nbsp;&nbsp;
				<button class="btn btn-form-color" type="reset">重置</button>
			</div>
		</form>
	</div>
	<div class="col-md-4"></div>
</div>
<jsp:include page="PublicPage/footer.jsp"/>
</body>
</html>
