<%-- Created by Administrator at 16-7-9 上午10:30 --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/inc.jsp"%>
<html>
<head>
    <title>index page</title>
</head>
<body>
<h1>index page</h1>
<form action="${ctx}/user/login" method="post">
    <input type="text" name="username" placeholder="USERNAME" value="admin"><br>
    <input type="password" name="password" placeholder="PASSWORD" value="123"><br>
    <input type="submit" value="LOGIN">
</form>
${requestScope.message}
</body>
</html>
