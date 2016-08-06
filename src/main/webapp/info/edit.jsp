<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/common/inc.jsp"%>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>info edit page</title>
    </head>
    <body>
        <h1>Info Edit</h1>
        <form action="${ctx}/info/modify" method="post">
            <input type="hidden" name="id" value="${sessionScope.info.id}">
            <input type="hidden" name="userId" value="${sessionScope.info.userId}">
            DATE: <input name="date" value="${sessionScope.info.date}"><br>
            BAOXIAN: <input name="baoxian" value="${sessionScope.info.baoxian}"><br>
            GONGJIJIN: <input name="gongjijin" value="${sessionScope.info.gongjijin}"><br>
            <input type="submit" value="MODIFY">
        </form>
    </body>
</html>