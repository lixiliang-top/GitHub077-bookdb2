$(document).ready(function () {
	$(".tijiao").click(function () {
        var name = $(".name").val();
        var pass = $(".password").val();

        console.log(name+","+pass)

        if (name==""||pass=="") {
            alert("请输入完整信息");
            return;
        }

        var json = {
            method : "sel",
            key_name : name,
            key_password : pass
        }

        $.post("UserServlet",json,function(result){
            console.log(result)
            if (result>0) {
            	alert("登场")
                location.href="index2.jsp";
            }else{
                $(".sho").show();
                $(".span_wen").text("用户名或密码错误");
            }
        });
    })
})
	
	
