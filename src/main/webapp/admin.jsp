<%-- Created by Administrator at 16-7-9 下午4:08 --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="common/inc.jsp"%>
<html>
<head>
    <title>admin page</title>
</head>
<body>
<c:if test="${sessionScope.user.role eq admin}">
    <c:redirect url="/index.jsp"/>
</c:if>
<h1>admin page</h1>
Admin: ${sessionScope.user.username}
<hr>
<a href="${ctx}/user/logout">LOG OUT</a>
<hr>
<table border="1">
    <tr>
        <th>course title</th>
        <th>student name</th>
        <th>counter</th>
    </tr>
    <c:forEach var="course" items="${sessionScope.courses}">
        <tr>
            <td>${course.title}</td>
            <td>
                <c:set var="counter"/>
                <c:forEach var="student" items="${course.students}">
                    <c:set var="counter" value="${counter + 1}"/>
                    ${student.username}
                </c:forEach>
            </td>
            <td>${counter}</td>
        </tr>
    </c:forEach>
</table>
<hr>
<table border="1">
    <tr>
        <th>student name</th>
        <th>course title</th>
        <th>counter</th>
    </tr>
    <c:forEach var="student" items="${sessionScope.students}">
        <tr>
            <td>${student.username}</td>
            <td>
                <c:set var="counter"/>
                <c:forEach var="course" items="${student.courses}">
                    <c:set var="counter" value="${counter + 1}"/>
                    ${course.title}
                </c:forEach>
            </td>
            <td>${counter}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
