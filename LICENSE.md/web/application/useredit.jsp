<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: zfr
  Date: 2018/6/13
  Time: 上午10:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改用户信息</title>
    <link rel="shortcut icon" href="../images/123.ico" type="image/x-icon" />
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/useredit.css" type="text/css">
    <style>
        .table-head{
            height: 30px;
            color:#fdfcfc;
        }
    </style>
</head>
<body>

<table width="1000" align="center" cellpadding="0" cellspacing="0">
    <tr>

        <td class="table-1">
            <img src="../images/校徽.png" class="images-01" >用户管理平台
        </td>

    </tr>
    <tr class="table-head" border="1">
        <td class="leftmargin">会员管理  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;需求管理</td>
    </tr>
    <tr height="20px"><td>     </td></tr>


        <td>
            <form name="frm" method="post">
                <table width="100%" border="1" cellspacing="0" cellpadding="0" class="table table-striped table table-bordered table table-hover" >
                    <tr>
                        <td height="30" class="info">
                            用户信息修改
                        </td>
                    </tr>
                    <tr>
                        <td>
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 用户id :&nbsp;&nbsp;&nbsp;&nbsp;<input name="id" type="text"  size="10" value="${user.id}" readonly>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  姓名:&nbsp;&nbsp;&nbsp;&nbsp;<input name="name" type="text" size="10" value="${user.name}">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <c:set var="sex" value="${user.sex}"/>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  性别:&nbsp;&nbsp;&nbsp;&nbsp;<input name="sex" type="radio" size="10" value="0"
                                      <c:if test="${sex==0}"><c:out value="checked"></c:out></c:if>
                                >&nbsp;&nbsp;男&nbsp;&nbsp;
                            <input name="sex" type="radio" size="10" value="1"
                                  <c:if test="${sex==1}"><c:out value="checked"></c:out></c:if>

                            >&nbsp;&nbsp;女&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 邮箱:&nbsp;&nbsp;&nbsp;&nbsp;<input name="email" type="text" size="25" value="${user.email}">
                        </td>
                    </tr>
                </table>
            </form>
        </td>

    </tr>
    <tr>
        <td>
            <input type="button" style="width: 80px" value="提交" class="btn btn-primary btn-sm active" onclick="btnEdit('${pageContext.request.contextPath}/editUser')">
            <input type="reset" style="width: 80px" value="重置" class="btn btn-primary btn-sm active" onclick="btnRest('${pageContext.request.contextPath}/editUser?id=${user.id}')" >
            <input type="button" style="width: 80px" value="取消"  class="btn btn-primary btn-sm active" onclick="btnCancel('${pageContext.request.contextPath}/toUserList') ">
        </td>
    </tr>
</table>
<footer>
    <div class="container">
        <p class="text-center">Copyright &copy; Your Website 2017. More Templates</a> - Collect from<br>版权所有：  张锋瑞<br> </p>
    </div>
</footer>
<script language="JavaScript">
 function btnEdit(url) {
     document.frm.action=url;
     document.frm.submit();
 }
 function btnRest(url) {
     document.frm.reset();

 }
 function btnCancel(url) {
     //document.frm.action=url;
    // document.frm.submit();
     window.location.replace(url);
 }

</script>

</body>
</html>
