<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/common/inc.jsp"%>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>record list page</title>
        <script>
            function del() { return confirm('REMOVE?'); }
        </script>
    </head>
    <body>
        <h1>Record List</h1>
        <hr/>
        <c:import url="${ctx}/create.jsp"/>
        <hr/>
        <table border="1">
            <tr>
                <th>INDEX</th>
                <th>ID</th>
                <th>DATE</th>
                <th>CONTENT</th>
                <th>USERID</th>
                <th colspan="2">OPERATION</th>
            </tr>
            <c:forEach var="record" items="${sessionScope.list}" varStatus="vs">
            <tr>
                <td>${vs.count}</td>
                <td>${record.id}</td>
                <td>${record.date}</td>
                <td>${record.content}</td>
                <td>${record.userId}</td>
                <td><a href="${ctx}/record/search/${record.id}">EDIT</a></td>
                <td><a class="delete" href="${ctx }/record/remove/${record.id}" onclick="return del()">REMOVE</a></td>
            </tr>
            </c:forEach>
        </table>
    </body>
</html>