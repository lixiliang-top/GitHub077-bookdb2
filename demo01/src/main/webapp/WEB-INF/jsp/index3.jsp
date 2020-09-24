<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 2020/8/19
  Time: 9:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/doIndex5" method="post">
    <table border="1" align="center" width="500px">
        <input hidden="hidden" type="text" class="name" name="id" value="${book.id }" />
        <tr><th colspan="2" bgcolor="yellow"><h1>编辑图书</h1></th></tr>
        <tr>
            <td>书名<span style="color: red;">(*)</span>：</td>
            <td><input type="text" class="name" name="name" value="${book.name}" /></td>
        </tr>
        <tr>
            <td>作者<span style="color: red;">(*)</span>：</td>
            <td><input type="text" class="author" name="author" value="${book.author}" /></td>
        </tr>
        <tr>
            <td>出版社<span style="color: red;">(*)</span>：</td>
            <td><input type="text" class="publish" name="publish" value="${book.publish}" /></td>
        </tr>
        <tr>
            <td>出版时间<span style="color: red;">(*)</span>：</td>
            <td><input type="text" class="publishdate" name="publishdate" value="${publishdate2}" />(yyyy-MM-dd)</td>
        </tr>
        <tr>
            <td>页数：</td>
            <td><input type="text" class="page" name="page" value="${book.page}" /></td>
        </tr>
        <tr>
            <td>价格：</td>
            <td><input type="text" class="price" name="price" value="${book.price}" /></td>
        </tr>
        <tr>
            <td>内容摘要：</td>
            <td><input type="text" class="content" name="content" value="${book.content}" /></td>
        </tr>
        <tr>
            <td colspan="2" align="center"><input type="submit" class="tijiao" value="提交" />&nbsp;&nbsp;&nbsp;<input type="submit" class="fanhui" value="返回" /></td>
        </tr>
    </table>
</form>
</body>
</html>
