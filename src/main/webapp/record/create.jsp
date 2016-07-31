<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/common/inc.jsp"%>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>record add page</title>
    </head>
    <body>
        <h1>Record Create</h1>
        <form action="${ctx}/record/create" method="post">
            DATE: <input name="date"><br>
            CONTENT: <input name="content"><br>
            USERID: <input name="userId"><br>
            <input type="submit" value="CREATE">
        </form>
    </body>
</html>