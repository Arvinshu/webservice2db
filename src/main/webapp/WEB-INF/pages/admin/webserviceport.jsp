<%--
  Created by IntelliJ IDEA.
  User: shuxi
  Date: 2016-9-10
  Time: 15:00
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html lang="zh-CN">

<head>

    <meta charset="utf-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>数据接口管理</title>

    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>

    <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <style type="text/css">

        td {

            white-space: nowrap;

            overflow: hidden;

            text-overflow: ellipsis;
        }
        table{

            table-layout:fixed;
        }
        td:hover
        {
            text-overflow:inherit;

            overflow:visible;
        }
    </style>

</head>

<body>

<div class="container">

    <!--用户管理为超链接，点击后返回 / ，该返回将会被捕获和处理-->
    <h1><a href="/">首页</a></h1>

    <hr/>

    <h3>所有接口</h3>

    <!-- 如果用户列表为空 -->
    <c:if test="${empty wsportList}">

        <div class="alert alert-warning" role="alert">

            <span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span>接口列表为空，请<a href="/admin/wsport/add" type="button" class="btn btn-primary btn-sm">添加</a>

        </div>

    </c:if>

    <!-- 如果用户列表非空 -->
    <c:if test="${!empty wsportList}">

        <table class="table table-bordered table-striped" >

            <tr>

                <th style="text-align: center">所属单位</th>

                <th style="text-align: center">所属系统</th>

                <th style="text-align: center">接口</th>

                <th style="text-align: center">事项名</th>

                <th style="text-align: center">表名称</th>

                <th style="text-align: center">接口状态</th>

                <th style="text-align: center">操作</th>

            </tr>

            <c:forEach items="${wsportList}" var="wsport">

                <tr>

                    <td>${wsport.deptsysByDeptsysId.deptName}</td>

                    <td>${wsport.deptsysByDeptsysId.systemName}</td>

                    <td style="text-align: center">${wsport.wsPort}</td>

                    <td >${wsport.wsDesc}</td>

                    <td >${wsport.wsName}</td>

                    <td style="text-align: center">${wsport.available}</td>

                    <td style="text-align: center">

                        <a href="/admin/wsport/show/${wsport.id}" type="button" class="btn btn-sm btn-success">查看</a>

                        <a href="/admin/wsport/update/${wsport.id}" type="button" class="btn btn-sm btn-warning">修改</a>

                        <a onclick="deleteDeptsys(${wsport.id})" data-toggle="modal" type="button" class="btn btn-sm btn-danger"> 删除</a>

                    </td>

                </tr>

            </c:forEach>

        </table>

        <h3 style="text-align: center;"><a href="/admin/wsport/add" type="button" class="btn btn-primary btn-sm">添加</a></h3>

    </c:if>

</div>

<div class="modal fade" id="ConfirmModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">

    <div class="modal-dialog" role="document">

        <div class="modal-content">

            <div class="modal-header">

                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>

                <h4 class="modal-title" id="myModalLabel">删除确认</h4>

            </div>

            <div class="modal-body">

                <p>确定删除该记录? </p>

            </div>

            <div class="modal-footer">

                <a class="btn btn-default" data-dismiss="modal">取消</a>

                <a id="comfirm_del" class="btn btn-sm btn-danger">确认</a> <!-- 跳转 -->

            </div>

        </div>

    </div>

</div>

<script language="javascript">

    function deleteDeptsys(id) {

        $('#comfirm_del').attr('href','/admin/wsport/delete/'+id);

        $("#ConfirmModal").modal('show');
    }

</script>

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

</body>

</html>