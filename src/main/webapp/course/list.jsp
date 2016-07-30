<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/common/inc.jsp"%>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>course list page</title>
        <script>
            function del() { return confirm('REMOVE?'); }
        </script>
    </head>
    <body>
        <h1>Course List</h1>
        <hr/>
        <c:import url="create.jsp"/>
        <hr/>
        <a href="${ctx}/course/courseStudents">查询选课结果</a>
        <hr>
        <table border="1">
            <tr>
                <th>INDEX</th>
                <th>ID</th>
                <th>TITLE</th>
                <th>TIME</th>
                <th>TEACHER</th>
                <th>SCORE</th>
                <th colspan="2">OPERATION</th>
            </tr>
            <c:forEach var="course" items="${sessionScope.list}" varStatus="vs">
            <tr>
                <td>${vs.count}</td>
                <td>${course.id}</td>
                <td>${course.title}</td>
                <td>${course.time}</td>
                <td>${course.teacher}</td>
                <td>${course.score}</td>
                <td><a href="${ctx}/course/search/${course.id}">EDIT</a></td>
                <td><a class="delete" href="${ctx }/course/remove/${course.id}" onclick="return del()">REMOVE</a></td>
            </tr>
            </c:forEach>
        </table>
    </body>
</html>