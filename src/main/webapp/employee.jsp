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
<hr>
<a href="${ctx}/user/logout">LOG OUT</a>
<h1>Record Create</h1>
<form action="${ctx}/record/create" method="post">
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
    <c:forEach var="record" items="${sessionScope.users[0].records}">
        <tr>
            <td>${record.date}</td>
            <td>${record.content}</td>
            <td>${sessionScope.users[0].truename}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
