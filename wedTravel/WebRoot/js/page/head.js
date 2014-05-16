$(function () {
    initHead();
    //initRecommendPic();
})

function initHead() {
    var data = WED.menu;
    if (data != null && data != undefined) {
        initMenu(data);
    } else {
        $.ajax({
            type: "post",
            url: "ajaxGetMenu_Ajax.json",
            data: {moduleId: 1},
            dataType: "json",
            success: function (data) {
                WED.menu = data;
                initMenu(data);
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert(errorThrown);
            }
        });
    }
}

function initMenu(obj) {
    var html_menu = "";
    for (var i = 0; i < obj.length; i++) {
        html_menu += '<li><a href="' + obj[i].menuUrl + '">' + obj[i].menuName + '</a></li>';
    }
    $("#nav").append(html_menu);
}

function initRecommendPic() {
    $.ajax({
        type: "post",
        url: "ajaxGet_Ajax.json",
        data: {moduleId: 1},
        dataType: "json",
        success: function (data) {
            var recHtml = '<div id="myCarousel" class="carousel slide"><div class="carousel-inner">';
            var len = data.length;
            for (var i = 0; i < len; i++) {
                recHtml += '<div class="active"><a href="' + data[i].linkUrl + '" target="blank">' +
                    '<img src="' + data[i].imgUrl + '" alt="' + data[i].title + '"></a></div>';
            }
            recHtml += ' </div><a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>' +
                '<a class="right carousel-control" href="#myCarousel" data-slide="next">&rsaquo;</a></div>';
            $(".wrapper").append(recHtml);
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            alert(errorThrown);
        }
    });
}