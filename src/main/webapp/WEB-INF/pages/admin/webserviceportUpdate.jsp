<%--
  Created by IntelliJ IDEA.
  User: shuxi
  Date: 2016-9-25
  Time: 10:48
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>

<html lang="zh-CN">

<head>

    <meta charset="utf-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>修改接口信息</title>

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

            str > 10 ? num = str : num = "0" + str;

            return num;

        }

    </script>

</head>

<body>

<div class="container">

    <h1>修改接口信息</h1>

    <hr/>

    <form:form action="/admin/wsport/updateW" method="post" commandName="wsportU" role="form">

        <div class="form-group">

            <label for="wsPort">接口:</label>

            <input type="text" class="form-control" id="wsPort" name="wsPort" placeholder="接口"
                   value="${wsport.wsPort}"/>

        </div>

        <div class="form-group">

            <label for="deptsysByDeptsysId.id">系统名称:</label>

            <select class="form-control" id="deptsysByDeptsysId.id" name="deptsysByDeptsysId.id">

                <c:forEach items="${deptsystems}" var="deptsystem">

                    <c:if test="${deptsystem.id==wsport.deptsysByDeptsysId.id}">

                        <option value="${deptsystem.id}" selected="selected">${deptsystem.systemName}</option>

                    </c:if>

                    <c:if test="${deptsystem.id!=wsport.deptsysByDeptsysId.id}">

                        <option value="${deptsystem.id}">${deptsystem.systemName}</option>

                    </c:if>

                </c:forEach>

            </select>

        </div>

        <div class="form-group">

            <label for="wsDesc">事项名:</label>

            <input type="text" class="form-control" id="wsDesc" name="wsDesc"
                   placeholder="接口事项名称" value="${wsport.wsDesc}"/>

        </div>

        <div class="form-group">

            <label for="wsName">表名称:</label>

            <input type="text" class="form-control" id="wsName" name="wsName"
                   placeholder="表名称" value="${wsport.wsName}"/>
        </div>

        <div class="form-group">

            <label for="available">接口状态:</label>

            <select class="form-control" id="available" name="available">

                <c:if test="${wsport.available==true}">

                    <option value="1" selected="selected">可用</option>

                    <option value="0">不可用</option>

                </c:if>

                <c:if test="${wsport.available==false}">

                    <option value="0" selected="selected">不可用</option>

                    <option value="1">可用</option>

                </c:if>

            </select>

        </div>

        <div class="form-group">

            <label for="wsNote">描述:</label>

            <textarea class="form-control" id="wsNote" name="wsNote" rows="3"

                      placeholder="Please Input Content">${wsport.wsNote}</textarea>
        </div>

        <!-- 把 id 一并写入 wsport 中 -->
        <input type="hidden" id="id" name="id" value="${wsport.id}"/>

        <div class="form-group" style="text-align: center">

            <button type="submit" class="btn btn-sm btn-success">提交</button>

            <a href="/admin/wsport/returnW" type="button" class="btn btn-warning btn-sm">返回</a>

        </div>

    </form:form>

</div>

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>
</html>
