<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2020/9/24
  Time: 10:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="/statics/js/jquery-1.12.4.js"></script>
</head>
<body>
<center>
    <form action="/insertBook" method="post">
        <table border="1px">
            <tr>
                <td colspan="2" align="center"><h2>增加图书</h2></td>
            </tr>
            <tr>
                <td>书名<span style="color: red;">(*)</span></td>
                <td><input type="text" name="name"></td>
            </tr>
            <tr>
                <td>作者<span style="color: red;">(*)</span></td>
                <td><input type="text" name="author"></td>
            </tr>
            <tr>
                <td>出版社<span style="color: red;">(*)</span></td>
                <td><input type="text" name="publish"></td>
            </tr>
            <tr>
                <td>出版日期<span style="color: red;">(*)</span></td>
                <td><input type="text" name="publishdate">(yyyy-MM-dd)</td>
            </tr>
            <tr>
                <td>页数</td>
                <td><input type="text" name="page"></td>
            </tr>
            <tr>
                <td>价格</td>
                <td><input type="text" name="price"></td>
            </tr>
            <tr>
                <td>内容摘要</td>
                <td><input type="text" name="content"></td>
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
