<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: shuxi
  Date: 2016-9-24
  Time: 13:29
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>

<html lang="zh-CN">

<head>

    <meta charset="utf-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>更新系统信息</title>

    <script type="text/javascript">

        function beforeSubmit(form) {

            if (form.deptName.value == '') {

                alert('部门名称为空 ！');

                form.deptname.focus();

                return false;
            }

            if (form.systemName.value == '') {

                alert('系统名称为空 ！');

                form.deptname.focus();

                return false;
            }

            return true;
        }

    </script>

    <%
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");

        String date = format.format(new Date());
    %>

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

    <h1>更新系统信息</h1>

    <hr/>

    <form:form action="/admin/deptsys/updateS" method="post" commandName="deptsysU" role="form" name="form"
               onSubmit="return beforeSubmit(this);">

        <div class="form-group">

            <label for="deptName">部门名称:</label>

            <input type="text" class="form-control" id="deptName" name="deptName" placeholder="输入部门名称"
                   value="${deptsys.deptName}"/>

        </div>

        <div class="form-group">

            <label for="systemName">系统名称:</label>

            <input type="text" class="form-control" id="systemName" name="systemName" placeholder="输入系统名称"
                   value="${deptsys.systemName}"/>

        </div>

        <div class="form-group">

            <label for="createTime">登记时间:</label>

            <input type="datetime" class="form-control" id="createTime" name="createTime" value="<fmt:formatDate value="${deptsys.createTime}" pattern="yyyy-MM-dd hh:mm:ss"/>"/>

        </div>

        <!-- 把 id 一并写入 deptsys 中 -->
        <input type="hidden" id="id" name="id" value="${deptsys.id}"/>

        <div class="form-group" style="text-align: center">

            <button type="submit" class="btn btn-sm btn-success">提交</button>

            <a href="/admin/deptsys/returnS" type="button" class="btn btn-warning btn-sm">返回</a>

        </div>

    </form:form>

</div>

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>
</html>
