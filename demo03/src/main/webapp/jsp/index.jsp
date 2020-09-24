<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2020/9/24
  Time: 9:49
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
    <h1><c:if test="${ sessionScope.user.usertype==1 }">图书系统管理员</c:if><c:if test="${ sessionScope.user.usertype==0 }">普通用户</c:if>欢迎您！</h1>
    <table border="1px">
        <tr>
            <td align="center" colspan="8">
                <h2>图书详细信息列表</h2>
            </td>
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
        <c:forEach items="${pageInfo.list}" var="list">
            <tr>
                <td>${list.name}</td>
                <td>${list.author}</td>
                <td>${list.publish}</td>
                <td><fmt:formatDate value="${list.publishdate}" pattern="yyyy-MM-dd"></fmt:formatDate></td>
                <td>${list.page}</td>
                <td>${list.price}</td>
                <td>${list.content}</td>
                <td><a href="/updLook?id=${list.id}">修改</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="/deleteBook?id=${list.id}">删除</a></td>
            </tr>
        </c:forEach>
        <tr>
            <form action="/BookList" method="post">
                <td colspan="8" align="center">
                    <input type="button" value="新增图书">
                    <span>共${ pageInfo.total }条记录，每页 <input type="text" value="${pageInfo.pageSize}" style="width: 50px"> 条，第${pageInfo.pageNum}页/共${pageInfo.pages}页
                        <a href="/BookList?pageIndex=${pageInfo.firstPage}">第一页</a>
                        <a href="/BookList?pageIndex=${pageInfo.prePage}">上一页</a>
                        <a href="/BookList?pageIndex=${pageInfo.nextPage}">下一页</a>
                        <a href="/BookList?pageIndex=${pageInfo.lastPage}">最后一页</a>
                        转到第 <input type="text" name="pageIndex" style="width: 50px"> 页
                        <input type="submit" value="go">
                    </span>
                </td>
            </form>
        </tr>
    </table>

</center>
<script type="text/javascript">
    $("[type='button']").click(function () {
        location.href="/add";
    })
</script>
</body>
</html>
