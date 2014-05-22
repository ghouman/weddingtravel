$(function () {
    initHead();

    $("#popup_exit0").click(function () {
        hideDZ();
    });
    menuFix();

})

function initHead() {
    initMenu();
    initArea();
}

function initNewHot(i) {
    var obj = $("#slideshow");
    var retitle = obj.find('input[name="re_title"]')[i].value;
    var redate = obj.find('input[name="re_date"]')[i].value;
    var reprice = obj.find('input[name="re_price"]')[i].value;
    var redesc = obj.find('input[name="re_desc"]')[i].value;
    var hotHtml = '<div class="hot_con"><h1>' + retitle + '<span>' + redate + '</span></h1><h2>' + redesc + '</h2><div class="price1">￥<span>' + reprice + '</span></div><div class="price2">起/人</div></div>'
    //$(".new_hot").slideUp();
    $(".new_hot").empty();
    $(".new_hot").append(hotHtml);
    //$(".new_hot").slideDown();
}
function menuFix() {
    var sfEls = document.getElementById("nav").getElementsByTagName("li");
    for (var i = 0; i < sfEls.length; i++) {
        sfEls[i].onmouseover = function () {
            this.className += (this.className.length > 0 ? " " : "") + "sfhover";
        }
        sfEls[i].onMouseDown = function () {
            this.className += (this.className.length > 0 ? " " : "") + "sfhover";
        }
        sfEls[i].onMouseUp = function () {
            this.className += (this.className.length > 0 ? " " : "") + "sfhover";
        }
        sfEls[i].onmouseout = function () {
            this.className = this.className.replace(new RegExp("( ?|^)sfhover\\b"),

                "");
        }
    }
}

function initMenu() {
    var obj = WED.menu;
    var html_menu = "";
    if (obj == null || obj == undefined || obj == "undefined") {
        $.ajax({
            type: "post",
            url: "ajaxGetMenu_Ajax.json",
            data: {moduleId: 1},
            dataType: "json",
            success: function (data) {
                for (var i = 0; i < data.length; i++) {
                    html_menu += '<li><a href="' + data[i].menuUrl + '">' + data[i].menuName + '</a></li>';
                }
                $("#nav").append(html_menu);
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert(errorThrown);
            }
        });
    } else {
        for (var i = 0; i < obj.length; i++) {
            html_menu += '<li><a href="' + obj[i].menuUrl + '">' + obj[i].menuName + '</a></li>';
        }
        $("#nav").append(html_menu);
    }

}

function initRecommendPic() {
    $.ajax({
        type: "post",
        url: "ajaxGet_Ajax.json",
        data: {moduleId: 1},
        dataType: "json",
        success: function (data) {
            var recHtml = '';
            var len = data.length;
            for (var i = 0; i < len; i++) {
                recHtml += ' <li> <input type = "hidden" name = "re_title" value = "' + data[i].title + '" >' +
                    '<input type="hidden" name="re_date" value="' + data[i].updTime + '">' +
                    '<input type="hidden" name="re_price" value="' + data[i].price + '">' +
                    '<input type="hidden" name="re_desc" value="' + data[i].recommendDesc + '">' +
                    '<a  href="' + data[i].linkUrl + '">' +
                    '<img  alt="01" class="cubeRandom" src="' + data[i].imgUrl + '"/></a></li>';
            }
            $("#slideshow ul").append(recHtml);
            jQuery.noConflict();
            jQuery('#slideshow').skitter({ width: 980, height: 318, animation: 'random', structure: '<a href="#" class="prev_button">prev</a>' + '<a href="#" class="next_button">next</a>' + '<span class="info_slide" style="display: none"></span>' + '<div class="container_skitter">' + '<div class="image">' + '<a target="_blank" href="/"><img class="image_main" /></a>' + '<div class="label_skitter"></div>' + '</div>' + '</div>', velocity: 1.3, interval: 3500, thumb_width: '70px', thumb_height: '40px', caption: 'bottom', caption_width: '250', navigation: 1, fullscreen: false, numbers: false,
                imageSwitched: function (image_i, self) {
                    initNewHot(image_i);
                }
            });
            $(".info_slide").hide();
            initNewHot(0);
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            alert(errorThrown);
        }
    });
}