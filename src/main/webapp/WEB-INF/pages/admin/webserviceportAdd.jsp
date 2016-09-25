<%--
  Created by IntelliJ IDEA.
  User: shuxi
  Date: 2016-9-25
  Time: 15:39
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: shuxi
  Date: 2016-9-10
  Time: 17:40
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html lang="zh-CN">

<head>

    <meta charset="utf-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>添加接口</title>

    <script type="text/javascript">

        function beforeSubmit(form) {

            if (form.deptName.value == '') {

                alert("部门名称为空");

                form.deptName.focus();

                return false;
            }

            if (form.systemName.value == '') {

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

    <form:form name="form" action="/admin/wsport/addW" method="post" commandName="webserviceport" role="form"
               onsubmit="return beforeSubmit(this);">

        <div class="form-group">

            <label for="deptsysByDeptsysId.id">所属系统:</label>

            <select class="form-control" id="deptsysByDeptsysId.id" name="deptsysByDeptsysId.id">

                <c:forEach items="${deptsysList}" var="deptsystem">

                    <option value="${deptsystem.id}">${deptsystem.systemName}</option>

                </c:forEach>

            </select>

        </div>

        <div class="form-group">

            <label for="wsPort">接口:</label>

            <input type="text" class="form-control" id="wsPort" name="wsPort" placeholder="webservice接口"/>

        </div>


        <div class="form-group">

            <label for="wsDesc">事项名:</label>

            <input type="text" class="form-control" id="wsDesc" name="wsDesc" placeholder="事项名称"/>

        </div>

        <div class="form-group">

            <label for="wsName">表名称:</label>

            <input type="text" class="form-control" id="wsName" name="wsName" placeholder="表名称"/>

        </div>

        <div class="form-group">

            <label for="available">接口状态:</label>

            <select class="form-control" id="available" name="available">

                <option value="1" selected="selected">可用</option>

                <option value="0">不可用</option>

            </select>

        </div>

        <div class="form-group">

            <label for="wsNote">描述:</label>

            <textarea class="form-control" id="wsNote" name="wsNote" rows="3"

                      placeholder="接口描述信息"></textarea>
        </div>

        <div style="text-align: center" class="form-group">

            <button type="submit" class="btn btn-sm btn-success">提交</button>

            <button type="reset" class="btn btn-sm btn-primary">重置</button>

            <a href="/admin/wsport/returnW" type="button" class="btn btn-sm btn-warning">返回</a>

        </div>

    </form:form>

</div>

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

</body>

</html>

