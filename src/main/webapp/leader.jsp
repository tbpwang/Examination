<%-- Created by Administrator at 16-7-9 下午4:08 --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="common/inc.jsp" %>
<html>
<head>
    <title>leader page</title>
</head>
<body>
<c:if test="${sessionScope.user.role eq leader}">
    <c:redirect url="/index.jsp"/>
</c:if>
<h1>leader page</h1>
Leader: ${sessionScope.user.username}
<hr>
<a href="${ctx}/user/logout">LOG OUT</a>
<h1>Record Create</h1>
<form action="${ctx}/record/leaderCreate" method="post">
    DATE: <input name="date"><br>
    CONTENT: <textarea name="content"></textarea><br>
    <input type="submit" value="CREATE">
</form>
<hr>
<table border="1">
    <tr>
        <th>DATE</th>
        <th>CONTENT</th>
        <th>NAME</th>
    </tr>
    <c:forEach var="user" items="${sessionScope.users}">
        <c:forEach var="record" items="${user.records}">
            <tr>
                <td>${record.date}</td>
                <td>${record.content}</td>
                <td>${user.truename}</td>
            </tr>
        </c:forEach>
    </c:forEach>
</table>
</body>
</html>
