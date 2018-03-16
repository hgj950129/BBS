<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>出错了!</title>
        <link rel="stylesheet" href="<%=basePath%>/css/bootstrap.min.css">
		<link rel="stylesheet" href="<%=basePath%>/css/My_Custom.css" />
    </head>
    <body>
    	<div class="bg-img">
    		<img class="img-thumbnail img-size" src="<%=basePath%>/img/error_500.png"/>
    	</div>
    	<script src="<%=basePath%>/js/jquery.min.js"></script>
    	<script src="<%=basePath%>/js/bootstrap.min.js"></script>
    	<script src="<%=basePath%>/js/scripts.js"></script>
 	</body>
</html>