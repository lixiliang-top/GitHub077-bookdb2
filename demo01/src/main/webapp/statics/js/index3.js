$(document).ready(function () {
    $(".tijiao").click(function () {
        var id = $(".seat_id").text();
        var name = $(".name").val();
        var author = $(".author").val();
        var publish = $(".publish").val();
        var publishdate = $(".publishdate").val();
        var page = $(".page").val();
        var price = $(".price").val();
        var content = $(".content").val();


        var json = {
            method: "xiu",
            key_id: id,
            key_name: name,
            key_author: author,
            key_publish: publish,
            key_publishdate: publishdate,
            key_page: page,
            key_price: price,
            key_content: content
        }
        console.log(json);
        $.post("ChuanServlet", json, function (result) {
            if (result > 0) {
                alert("修改成功");
                location.href = "index2.jsp"
            } else {
                alert("修改失败");
            }
        });
    })
})
	
