<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/common/inc.jsp"%>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>course add page</title>
    </head>
    <body>
        <form action="${ctx}/course/create" method="post">
            TITLE: <input name="title"><br>
            TIME: <input name="time"><br>
            TEACHER: <input name="teacher"><br>
            SCORE: <input name="score"><br>
            <input type="submit" value="CREATE">
        </form>
    </body>
</html>