<%-- Created by Administrator at 16-7-9 下午4:08 --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="common/inc.jsp" %>
<html>
<head>
    <title>admin page</title>
    <script>
        function del() { return confirm('REMOVE?'); }
    </script>
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
<h1>Info Create</h1><hr>
<form action="${ctx}/user/queryByNameAndDate" method="post">
    <input type="text" name="username" placeholder="姓名">
    <input type="text" name="min" placeholder="起始月份">
    <input type="text" name="max" placeholder="截止月份">
    <input type="submit" value="查询">
</form>
<hr>
<form action="${ctx}/info/create" method="post">
    USER: <select name="userId">
    <c:forEach var="user" items="${sessionScope.users}">
        <option value="${user.id}">${user.username}</option>
    </c:forEach>
    </select><br>
    DATE: <input name="date"><br>
    BAOXIAN: <input name="baoxian"><br>
    GONGJIJIN: <input name="gongjijin"><br>
    <input type="submit" value="CREATE">
</form>
<hr>
<table border="1">
    <tr>
        <th>USERNAME</th>
        <th>DATE</th>
        <th>BAOXIAN</th>
        <th>GONGJIJIN</th>
        <th>TOTAL</th>
        <th colspan="2">OPERATION</th>
    </tr>
    <c:forEach var="user" items="${sessionScope.userInfos}" varStatus="vs">
        <c:forEach var="info" items="${user.infos}">
        <tr>
            <td>${user.username}</td>
            <td>${info.date}</td>
            <td>${info.baoxian}</td>
            <td>${info.gongjijin}</td>
            <td>${info.baoxian + info.gongjijin}</td>
            <td><a href="${ctx}/info/search/${info.id}">EDIT</a></td>
            <td><a class="delete" href="${ctx }/info/remove/${info.id}" onclick="return del()">REMOVE</a></td>
        </tr>
        </c:forEach>
    </c:forEach>
</table>
</body>
</html>
