<%--
  Created by IntelliJ IDEA.
  User: zfr
  Date: 2018/6/13
  Time: 下午8:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">


    <title>jstl使用</title>
    <link rel="shortcut icon" href="../images/123.ico" type="image/x-icon" />
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
   <link rel="stylesheet" href="../css/userlist.css" type="text/css">
    <style>
        .table-head{
            height: 30px;
            color:#fdfcfc;
        }

    </style>

</head>
<body>

<table class="table-2" border="0" align="center" cellpadding="0" cellspacing="0" >
    <tr>
        <td class="table-1">
            <img src="../images/校徽.png" class="images-01" >用户管理平台
        </td>
    </tr>
    <tr class="table-head" border="1">
        <td class="leftmargin">会员管理  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;需求管理</td>
    </tr>
    <tr height="20"><td></td></tr>
    <tr>
        <td height="40">
            <input type="button" style="width: 80px" value="注册" class="btn btn-primary btn-sm active" onclick="btnAdd('${pageContext.request.contextPath}/toRegister')">
            <input type="button" style="width: 80px" value="修改" class="btn btn-primary btn-sm active" onclick="btnEdit('${pageContext.request.contextPath}/toEditUser')">btnEDi
            <input type="button" style="width: 80px" value="删除" class="btn btn-primary btn-sm active" onclick="benDelete('${pageContext.request.contextPath}/deleteUser')">


        </td>
    </tr>
    <tr height="10"><td></td></tr>
    <tr>
        <td>


            <form name="frm" method="post">
                <table width="100%" class="table table-striped table table-bordered table table-hover" >
                    <tr>
                        <td>选择</td>
                        <td>用户名</td>
                        <td>性别</td>
                        <td>邮箱</td>
                    </tr>
                    <c:forEach var="user" items="${user_list}">
                        <tr>
                            <td  class="radio-left"><input name="id" value="${user.id} "type="radio" /></td>

                            <td>${user.name}</td>
                            <c:set var="sex" value="${user.sex}"></c:set>
                            <td>
                                <c:if test="${sex=='0'}">
                                    <c:out value="男"></c:out>
                                </c:if>
                                <c:if test="${sex=='1'}"><c:out value="女"></c:out></c:if>
                            </td>
                            <td>${user.email}</td>
                        </tr>
                    </c:forEach>

                </table>
            </form>
        </td>
    </tr>

</table>
<footer>
    <div class="container">
        <p class="text-center">Copyright &copy; Your Website 2017. More Templates</a> - Collect from<br>版权所有：  张锋瑞<br> </p>
    </div>
</footer>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script language="JavaScript">
    function btnAdd(url) {
        window.location.replace(url);
    }

    function btnEdit(url) {
        document.frm.action=url;
        document.frm.submit();
    }

    function benDelete(url) {

        document.frm.action = url;
        document.frm.submit();
    }

</script>

</body>
</html>
