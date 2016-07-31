<%-- Created by Administrator at 16-7-9 下午4:08 --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="common/inc.jsp"%>
<html>
<head>
    <title>employee page</title>
</head>
<body>
<c:if test="${sessionScope.user.role eq employee}">
    <c:redirect url="/index.jsp"/>
</c:if>
<h1>employee page</h1>
Employee: ${sessionScope.user.username}
<hr>
${sessionScope.users}
<a href="${ctx}/user/logout">LOG OUT</a>
<h1>Record Create</h1>
<form action="${ctx}/record/create" method="post">
    DATE: <input name="date"><br>
    CONTENT: <textarea name="content"></textarea><br>
    <input type="submit" value="CREATE">
</form>
</body>
</html>
