<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2020/9/24
  Time: 10:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="/statics/js/jquery-1.12.4.js"></script>
</head>
<body>
<center>
    <form action="/updateBook" method="post">
        <table border="1px">
            <tr>
                <td colspan="2" align="center"><h2>编辑图书</h2></td>
            </tr>
            <<input type="hidden" name="id" value="${book.id}">
            <tr>
                <td>书名<span style="color: red;">(*)</span></td>
                <td><input type="text" name="name" value="${book.name}"></td>
            </tr>
            <tr>
                <td>作者<span style="color: red;">(*)</span></td>
                <td><input type="text" name="author" value="${book.author}"></td>
            </tr>
            <tr>
                <td>出版社<span style="color: red;">(*)</span></td>
                <td><input type="text" name="publish" value="${book.publish}"></td>
            </tr>
            <tr>
                <td>出版日期<span style="color: red;">(*)</span></td>
                <td><input type="text" name="publishdate" value="<fmt:formatDate value="${book.publishdate}" pattern="yyyy-MM-dd"></fmt:formatDate>">(yyyy-MM-dd)</td>
            </tr>
            <tr>
                <td>页数</td>
                <td><input type="text" name="page" value="${book.page}"></td>
            </tr>
            <tr>
                <td>价格</td>
                <td><input type="text" name="price" value="${book.price}"></td>
            </tr>
            <tr>
                <td>内容摘要</td>
                <td><input type="text" name="content" value="${book.content}"></td>
            </tr>
            <tr>
                <td colspan="2" align="center"><input type="submit" value="提交"><input type="button" value="返回"></td>
            </tr>
        </table>
    </form>
</center>
<script type="text/javascript">
    $("[type='button']").click(function () {
        location.href="/BookList";
    })
</script>
</body>
</html>
