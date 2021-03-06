<%--
  Created by IntelliJ IDEA.
  User: shuxi
  Date: 2016-9-10
  Time: 17:40
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
    <title>添加系统</title>

    <script type="text/javascript">

        function beforeSubmit(form) {

            if(form.deptName.value=='') {

                alert("部门名称为空");

                form.deptName.focus();

                return false;
            }

            if(form.systemName.value=='') {

                alert("系统名称为空");

                form.systemName.focus();

                return false;
            }

            return true;
        }

    </script>

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

    <h1>添加新系统</h1>

    <hr/>

    <form:form name="form" action="/admin/deptsys/addS" method="post" commandName="deptsys" role="form" onsubmit="return beforeSubmit(this);">

        <div class="form-group">

            <label for="deptName">部门名称:</label>

            <input type="text" class="form-control" id="deptName" name="deptName" placeholder="输入部门名称:"/>

        </div>

        <div class="form-group">

            <label for="systemName">系统名称:</label>

            <input type="text" class="form-control" id="systemName" name="systemName" placeholder="输入系统名称:"/>

        </div>

        <div style="text-align: center" class="form-group">

            <button type="submit" class="btn btn-sm btn-success">提交</button>

            <button type="reset" class="btn btn-sm btn-primary">重置</button>

            <a href="/admin/deptsys/returnS" type="button" class="btn btn-sm btn-warning">返回</a>

        </div>

    </form:form>

</div>

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

</body>

</html>
