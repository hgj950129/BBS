<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018-01-20
  Time: 13:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <script src="<%=basePath%>js/AJAX.js"></script>
    <script type="text/javascript">
        var xhr=loadXMLHttpRequest()
        function sendName() {
            var name=document.getElementById("id").value
            xhr.onreadystatechange = function () {
                if (xhr.readyState===4){
                    if(xhr.state()===200){
                        var req=
                        document.getElementsByTagName("span")[0].innerText=req
                    }
                }
            }
            xhr.open('get','<%=basePath%>ajax/ajaxtest.do?id='+name)
            xhr.send()
        }
    </script>
</head>
<body>
    请输入名字：<input id="id" name="name" onblur="sendName()"/>
    <span></span>
</body>
</html>
