<%-- Created by Administrator at 16-7-9 下午4:08 --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="common/inc.jsp"%>
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
<form action="${ctx}/user/queryByDate" method="post">
    <input type="text" name="min" placeholder="起始月份">
    <input type="text" name="max" placeholder="截止月份">
    <input type="submit" value="查询">
</form>
<hr>
<table border="1">
    <tr>
        <th>USERNAME</th>
        <th>DATE</th>
        <th>BAOXIAN</th>
        <th>GONGJIJIN</th>
        <th>TOTAL</th>
    </tr>
    <c:set var="t1"/><c:set var="t2"/><c:set var="t3"/>
    <c:forEach var="info" items="${sessionScope.userInfos[0].infos}" varStatus="vs">
            <tr>
                <c:set var="t1" value="${t1 + info.baoxian}"/>
                <c:set var="t2" value="${t2 + info.gongjijin}"/>
                <c:set var="t3" value="${t3 + info.baoxian + info.gongjijin}"/>
                <td>${sessionScope.userInfos[0].username}</td>
                <td>${info.date}</td>
                <td>${info.baoxian}</td>
                <td>${info.gongjijin}</td>
                <td>${info.baoxian + info.gongjijin}</td>
            </tr>
    </c:forEach>
    <tr>
        <td>TOTAL</td>
        <td></td>
        <td>${t1}</td>
        <td>${t2}</td>
        <td>${t3}</td>
    </tr>
</table>
</body>
</html>
