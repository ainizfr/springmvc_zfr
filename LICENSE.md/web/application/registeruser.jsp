<%--
  Created by IntelliJ IDEA.
  User: zfr
  Date: 2018/6/7
  Time: 下午2:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户注册</title>
    <link rel="shortcut icon" href="../images/123.ico" type="image/x-icon" />
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/registeruser.css" type="text/css">
    <style>
        .table-head{
            height: 30px;
            color:#fdfcfc;
        }
    </style>
</head>
<body>
        <table width="1000"  align="center" cellpadding="0" cellspacing="0">
            <tr>

                <td class="table-1">
                    <img src="../images/校徽.png" class="images-01" >用户管理平台
                </td>

            </tr>
            <tr class="table-head" border="1">
                <td class="leftmargin">会员管理  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;需求管理</td>
            </tr>
            <tr height="20px"><td>     </td></tr>
            <tr>

                <td>
                    <form name="frm" method="post">
                        <table width="80%" border="1" cellspacing="0" cellpadding="0"   class="table table-striped table table-bordered table table-hover"   >
                            <tr class="info" height="40px">
                                <td  >
                                    用户注册
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;姓名:<input name="name" type="text" size="10">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 性别:<input name="sex" type="radio" value="0">男&nbsp;&nbsp;
                                    <input name="sex" type="radio" value="1">女&nbsp;&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 邮箱:<input name="email" type="text" size="10">
                                </td>
                            </tr>
                        </table>
                    </form>
                </td>

            </tr>
            <tr>
                <td>
                    <input type="button" style="width: 80px" value="提交" class="btn btn-primary btn-sm active" onclick="btnAdd('${pageContext.request.contextPath}/registerUser')">
                    <input type="button" style="width: 80px" value="重置" class="btn btn-primary btn-sm active" onclick="btnRest()">
                    <input type="button" style="width: 80px" value="取消" class="btn btn-primary btn-sm active" onclick="btnCancel('${pageContext.request.contextPath}/toUserList')">
                </td>
            </tr>
        </table>
        <br><br><br>

        <footer>
            <div class="container">
                <p class="text-center">Copyright &copy; Your Website 2017. More Templates</a> - Collect from<br>版权所有：  张锋瑞<br> </p>
            </div>
        </footer>
        <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        <script language="JavaScript">
            function btnAdd(url) {

                document.frm.action=url;
                document.frm.submit();
            }
            function btnCancel(url) {
                //document.frm.action=url;
                // document.frm.submit();
                window.location.replace(url);
            }
            function btnRest(url) {
                //document.frm.action=url;
                document.frm.reset();
               // window.location.replace(url);
            }
        </script>
</body>
</html>
