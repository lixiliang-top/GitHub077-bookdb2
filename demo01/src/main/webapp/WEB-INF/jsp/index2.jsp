<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 2020/8/19
  Time: 9:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table class="table-fenye" width="800" border="1" align="center">
    <tr>
        <td colspan="8" align="center"><h1>图书详细信息列表</h1></td>
    </tr>
    <tr align="center">
        <td>书名</td>
        <td>作者</td>
        <td>出版社</td>
        <td>出版日期</td>
        <td>页数</td>
        <td>价格</td>
        <td>内容摘要</td>
        <td>操作</td>
    </tr>
</table>
<p></p>
<table class="table" width="500" border="1" align="center">
    <tr align="center">
        <td><input type="button" class="tijiao" value="新增图书" /></td>
        <td>共<span class="zong"></span>条数据</td>
        <td><a href="javascript:void(0)" class="shou">第一页</a></td>
        <td><a href="javascript:void(0)" class="shang">上一页</a></td>
        <td class="ye">1/1</td>
        <td><a href="javascript:void(0)" class="xia">下一页</a></td>
        <td><a href="javascript:void(0)" class="wei">最后一页</a></td>
    </tr>
</table>
<script type="text/javascript" src="/statics/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="/statics/js/index2.js"></script>
</body>
</html>
