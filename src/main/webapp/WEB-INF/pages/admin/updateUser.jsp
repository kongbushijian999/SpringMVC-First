<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/8/8
  Time: 19:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>SpringMVC 更新用户</title>

    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

</head>
<body>
<div class="container">
    <h1>SpringMVC 更新用户信息</h1>
    <hr>

    <form:form action="/admin/users/updateP" method="post" modelAttribute="userP" role="form">
        <div class="form-group">
            <label for="nickname">Nickname:</label>
            <input type="text" class="form-control" id="nickname" name="nickname" placeholder="Enter Nickname:" value="${user.nickname}">
        </div>
        <div class="form-group">
            <label for="firstName">FirstName:</label>
            <input type="text" class="form-control" id="firstName" name="firstName" placeholder="Enter FirstName:" value="${user.firstName}">
        </div>
        <div class="form-group">
            <label for="lastName">LastName:</label>
            <input type="text" class="form-control" id="lastName" name="lastName" placeholder="Enter LastName:" value="${user.lastName}">
        </div>
        <div class="form-group">
            <label for="password">Password:</label>
            <input type="text" class="form-control" id="password" name="password" placeholder="Enter Password:" value="${user.password}">
        </div>

        <%--把id一并写入userP当中--%>
        <input type="hidden" id="id" name="id" value="${user.id}">
        <div class="form-group">
            <button type="submit" class="btn btn-sm btn-success">提交</button>
        </div>
    </form:form>

</div>
</body>
</html>
