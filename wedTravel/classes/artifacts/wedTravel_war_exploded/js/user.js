
function strToJson(str){   
    var json = eval('(' + str + ')');   
    return json;   
}  

function getUserList() {

    //加载产品下拉列表
    $.ajax({
        type: "POST",
        url: "user.action",
        data: "",
        contentType: "application/x-www-form-urlencoded; charset=utf-8",
        dataType: "json",
        success: function (obj) {
            var data =  ('['+obj.responseText+']');
            var onepiece=strToJson(data);
            return  onepiece;
        }
    });
}
