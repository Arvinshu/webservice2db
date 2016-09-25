<%--
  Created by IntelliJ IDEA.
  User: shuxi
  Date: 2016-9-25
  Time: 09:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html lang="zh-CN">

<head>

    <meta charset="utf-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>接口详情</title>

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

    <h1>接口详情</h1>

    <hr/>

    <table class="table table-bordered table-striped">

        <tr>
            <th>主键</th>
            <td>${wsport.id}</td>
        </tr>

        <tr>
            <th>部门名称</th>
            <td>${wsport.deptsysByDeptsysId.deptName}</td>
        </tr>

        <tr>
            <th>系统名称</th>
            <td>${wsport.deptsysByDeptsysId.systemName}</td>
        </tr>

        <tr>
            <th>接口</th>
            <td>${wsport.wsPort}</td>
        </tr>

        <tr>
            <th>事项名</th>
            <td>${wsport.wsDesc}</td>
        </tr>

        <tr>
            <th>表名称</th>
            <td>${wsport.wsName}</td>
        </tr>

        <tr>
            <th>接口状态</th>
            <c:if test="${wsport.available==true}">

                <td style="color: green">正常</td>

            </c:if>

            <c:if test="${wsport.available==false}">

                <td style="color:red;">不可用</td>

            </c:if>

        </tr>

        <tr>
            <th>接口描述</th>
            <td>${wsport.wsNote}</td>
        </tr>

        <tr>
            <th>更新时间</th>
            <td><fmt:formatDate pattern="yyyy:mm:dd HH:mm:ss" value="${wsport.pubDate}"></fmt:formatDate></td>
        </tr>

    </table>

    <div class="container" style="text-align: center">

        <a href="/admin/wsport/returnW" type="button" class="btn btn-primary btn-sm">返回</a>

    </div>

</div>

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>


<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

</body>

</html>