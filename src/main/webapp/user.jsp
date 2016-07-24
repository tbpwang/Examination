<%-- Created by Administrator at 16-7-9 下午4:08 --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="common/inc.jsp" %>
<html>
<head>
    <title>user page</title>
</head>
<body>
<c:if test="${sessionScope.user.role eq user}">
    <c:redirect url="/index.jsp"/>
</c:if>
<h1>user page</h1>
User: ${sessionScope.user.username}
<hr>
<a href="${ctx}/user/logout">LOG OUT</a>
<hr>
<form action="${ctx}/studentcourse/selectCourse" method="post">
    <table border="1">
        <tr>
            <th>SELECT</th>
            <th>TITLE</th>
            <th>TIME</th>
            <th>TEACHER</th>
            <th>SCORE</th>
        </tr>
        <c:forEach var="course" items="${sessionScope.list}" varStatus="vs">
            <tr>
                <td><input type="checkbox" name="ids" value="${course.id}"></td>
                <td>${course.title}</td>
                <td>${course.time}</td>
                <td>${course.teacher}</td>
                <td>${course.score}</td>
            </tr>
        </c:forEach>
    </table>
    <input type="submit" value="SUBMIT">
</form>
</body>
</html>
