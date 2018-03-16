<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018-01-03
  Time: 10:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <title>注册页面</title>
</head>
<body>
    <table border="1">
        <tr>
            <td>昵称</td>
            <td>密码</td>
            <td>邮箱</td>
            <td>生日</td>
            <td>性别</td>
            <td>头像</td>
            <td>注册日期</td>
            <td>是否版主</td>
            <td>操作</td>
        </tr>
        <c:forEach items="${userList}" var="users">
            <tr>
                <td>${users.UName}</td>
                <td>${users.UPassword}</td>
                <td>${users.UEmail}</td>
                <td>${users.UBirthday}</td>
                <td>${users.USex}</td>
                <td>${users.UHead}</td>
                <td>${users.URegDate}</td>
                <td>${users.UIsSectioner}</td>
                <td>${users.UID}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
