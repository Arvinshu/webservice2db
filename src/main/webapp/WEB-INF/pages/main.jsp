<%--
  Created by IntelliJ IDEA.
  User: Arvin
  Date: 2016/5/7
  Time: 18:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>接口管理系统</title>

    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script>

        window.onload = function () {

//定时器每秒调用一次fnDate()

            setInterval(function () {

                fnDate();

            }, 1000);

        }

        //js 获取当前时间

        function fnDate() {

            var oDiv = document.getElementById("showCurrentTime");

            var date = new Date();

            var year = date.getFullYear();//当前年份

            var month = date.getMonth();//当前月份

            var data = date.getDate();//天

            var hours = date.getHours();//小时

            var minute = date.getMinutes();//分

            var second = date.getSeconds();//秒

            var time = year + "-" + fnW((month + 1)) + "-" + fnW(data) + " " + fnW(hours) + ":" + fnW(minute) + ":" + fnW(second);

            oDiv.innerHTML = time;

        }

        //补位 当某个字段不是两位数时补0

        function fnW(str) {

            var num;

            str >= 10 ? num = str : num = "0" + str;

            return num;

        }

    </script>

</head>

<body>

<h1 style="text-align: center">webservice接口管理系统</h1>

<h3 style="text-align: center"></h3>

<div style="text-align: center" class="alert alert-success" role="alert">

    <a href="/admin/deptsys"><strong>部门系统管理</strong></a> -访问部门系统管理页面.

</div>

<div style="text-align: center" class="alert alert-info" role= "alert">

    <a href="/admin/wsport"><strong>数据接口管理</strong></a> -访问数据接口管理页面.

</div>

<div style="text-align: center" id="showCurrentTime"></div>

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

</body>

</html>
