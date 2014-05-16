$(function () {
    initBottom();
    //initRecommendPic();
})

function initBottom() {
    initFriendLink();
    initCompany();
}

function initFriendLink() {
    $.ajax({
        type: "post",
        url: "ajaxGet_Ajax.json",
        data: {moduleId: 5},
        dataType: "json",
        success: function (data) {
            var flink_html = "";
            var len = data.length;
            for(var i=0;i<len;i++){
                flink_html += '<li><a href="'+data[i].linkUrl+'" class="b_a">'+data[i].title+'</a>&nbsp;|&nbsp;</li>';
            }
            $(".link_m").append(flink_html);
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            alert(errorThrown);
        }
    });
}

function initCompany() {
    $.ajax({
        type: "post",
        url: "ajaxGetCompany_Ajax.json",
        data: {moduleId: 5},
        dataType: "json",
        success: function (data) {
            $("#tel").append(data[0].tel);
            $("#address").append(data[0].address);
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            alert(errorThrown);
        }
    });
}