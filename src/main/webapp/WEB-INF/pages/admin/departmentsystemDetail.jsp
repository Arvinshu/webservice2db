<%--
  Created by IntelliJ IDEA.
  User: shuxi
  Date: 2016-9-24
  Time: 12:46
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>

<!DOCTYPE html>

<html lang="zh-CN">

<head>

    <meta charset="utf-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>部门系统详情</title>

    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>

    <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

<div class="container">

    <h1>部门系统详情</h1>

    <hr/>

    <table class="table table-bordered table-striped">

        <tr>

            <th>ID</th>

            <td>${deptsys.id}</td>

        </tr>

        <tr>

            <th>部门名称</th>

            <td>${deptsys.deptName}</td>

        </tr>

        <tr>

            <th>系统名称</th>

            <td>${deptsys.systemName}</td>

        </tr>

        <tr>

            <th>更新时间</th>

            <td><fmt:formatDate pattern="yyyy:mm:dd HH:mm:ss" value="${deptsys.createTime}"></fmt:formatDate></td>

        </tr>

    </table>

</div>

<div class="container" style="text-align: center">

    <a href="/admin/deptsys/returnS" type="button" class="btn btn-warning btn-sm">返回</a>

</div>

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

</body>

</html>