<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/common/inc.jsp"%>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>record edit page</title>
    </head>
    <body>
        <h1>Record Edit</h1>
        <form action="${ctx}/record/modify" method="post">
            <input type="hidden" name="id" value="${sessionScope.record.id}">
            DATE: <input name="date" value="${sessionScope.record.date}"><br>
            CONTENT: <input name="content" value="${sessionScope.record.content}"><br>
            USERID: <input name="userId" value="${sessionScope.record.userId}"><br>
            <input type="submit" value="MODIFY">
        </form>
    </body>
</html>