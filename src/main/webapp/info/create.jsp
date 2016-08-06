<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/common/inc.jsp"%>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>info add page</title>
    </head>
    <body>
        <h1>Info Create</h1>
        <form action="${ctx}/info/create" method="post">
            DATE: <input name="date"><br>
            BAOXIAN: <input name="baoxian"><br>
            GONGJIJIN: <input name="gongjijin"><br>
            USERID: <input name="userId"><br>
            <input type="submit" value="CREATE">
        </form>
    </body>
</html>