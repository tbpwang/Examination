<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/common/inc.jsp"%>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>info list page</title>
        <script>
            function del() { return confirm('REMOVE?'); }
        </script>
    </head>
    <body>
        <h1>Info List</h1>
        <hr/>
        <c:import url="${ctx}/info/create.jsp"/>
        <hr/>
        <table border="1">
            <tr>
                <th>INDEX</th>
                <th>ID</th>
                <th>DATE</th>
                <th>BAOXIAN</th>
                <th>GONGJIJIN</th>
                <th>USERID</th>
                <th colspan="2">OPERATION</th>
            </tr>
            <c:forEach var="info" items="${sessionScope.list}" varStatus="vs">
            <tr>
                <td>${vs.count}</td>
                <td>${info.id}</td>
                <td>${info.date}</td>
                <td>${info.baoxian}</td>
                <td>${info.gongjijin}</td>
                <td>${info.userId}</td>
                <td><a href="${ctx}/info/search/${info.id}">EDIT</a></td>
                <td><a class="delete" href="${ctx }/info/remove/${info.id}" onclick="return del()">REMOVE</a></td>
            </tr>
            </c:forEach>
        </table>
    </body>
</html>