$(document).ready(function () {
    cha();
    $(".shou").click(function () {
        pageIndex = data.firstPage;
        cha()
    })
    $(".shang").click(function () {
        pageIndex = data.prePage;
        cha()
    })
    $(".xia").click(function () {
        pageIndex = data.nextPage;
        cha()
    })
    $(".wei").click(function () {
        pageIndex = data.lastPage;
        cha()
    })

    $(".tijiao").click(function () {
        location.href="/doIndex6";
    });

})

var pageIndex = 1;
var pageSize = 2;

var data;

function cha() {

    $(".table-fenye tr:gt(1)").remove();
    var json = {
        pageSize: pageSize,
        pageIndex: pageIndex
    }
    $.post("/doIndex2", json, function (resoult) {
        data = resoult.data;
        console.log(resoult.data)
        $(".ye").text(resoult.data.pageNum + "/" + resoult.data.pages);
        $(".zong").text(resoult.data.total);
        $.each(resoult.data.list, function (i, v) {
            console.log(v)
            var $tr = $("<tr class='tia'><td hidden>" + v.id + "</td><td>" + v.name + "</td><td>" + v.author + "</td><td>" + v.publish + "</td><td>" + v.publishdate + "</td><td>" + v.page + "</td><td>" + v.price + "</td><td>" + v.content + "</td><td><a href='/doIndex3' class='xiu'>修改</a>|||<a href='javascript:void(0)' class='shan'>删除</a></td></tr>");
            console.log($tr)
            $(".table-fenye").append($tr);
        })

        $(".shan").click(function () {
            var id = $(this).parent().prev().prev().prev().prev().prev().prev().prev().prev().text();
            var json2 = {
                id: id
            }
            $.post("/doIndex8", json2, function (result) {
                if (result.status=="true") {
                    alert("删除成功");
                    cha();
                } else {
                    alert("删除失败")
                }
            },"json")
        });

        $(".xiu").click(function () {
            var id = $(this).parent().prev().prev().prev().prev().prev().prev().prev().prev().text();
            var name = $(this).parent().prev().prev().prev().prev().prev().prev().prev().text();
            var author = $(this).parent().prev().prev().prev().prev().prev().prev().text();
            var publish = $(this).parent().prev().prev().prev().prev().prev().text();
            var publishdate = $(this).parent().prev().prev().prev().prev().text();
            var page = $(this).parent().prev().prev().prev().text();
            var price = $(this).parent().prev().prev().text();
            var content = $(this).parent().prev().text();

            var json3 = {
                id: id,
                name: name,
                author: author,
                publish: publish,
                publishdate: publishdate,
                page: page,
                price: price,
                content: content
            }
            $.post("doIndex4", json3, function () {
            })
        });
    }, "json");
}