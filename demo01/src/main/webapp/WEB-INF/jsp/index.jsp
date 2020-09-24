<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 2020/8/19
  Time: 8:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/doIndex" method="post">
<table border="1" align="center" width="400px">
    <tr><th colspan="2"><h1>登录图书管理系统</h1></th></tr>
    <tr>
        <td bgcolor="plum">用户名：</td>
        <td><input type="text" class="name" name="nickname" /></td>
    </tr>
    <tr>
        <td bgcolor="plum">密码：</td>
        <td><input type="text" class="password" name="password" /></td>
    </tr>
    <tr>
        <td colspan="2" align="center"><input type="submit" class="tijiao" value="登录" /></td>
    </tr>
    <tr hidden="hidden" class="sho">
        <td colspan="2"><span style="color: red;" class="span_wen"></span></td>
    </tr>
</table>
<span>${error }</span>
</form>
</body>
</html>
