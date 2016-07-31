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
<form action="${ctx}/user/create">
    USERNAME <input name="username"><br>
    PASSWORD <input name="password"><br>
    TRUENAME <input name="truename"><br>
    <select name="team">
        <option value="team1">第一组</option>
        <option value="team2">第二组</option>
        <option value="team3">第三组</option>
    </select><br>
    <select name="role">
        <option value="employee">员工</option>
        <option value="leader">组长</option>
    </select><br>
    <input type="submit" value="CREATE">
</form>
</body>
</html>
