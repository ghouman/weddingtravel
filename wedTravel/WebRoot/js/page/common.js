var WED = {};

function getMenu(id) {
    var DataList = {};
    $.ajax({
        type: "post",
        url: "ajaxGetMenu_Ajax.json",
        data: {moduleId: id},
        dataType: "json",
        success: function (data) {
            WED.menu = data;
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            alert(errorThrown);
        }
    });
}

function showDZ() {
    if ($("#area").val() == "0") {
        alert("请选择您要去的地区。");
        return;
    }
    var goHtml = '婚礼地区：' + $("#area").find("option:selected").text() + '   ,婚礼国家：' + $("#country").val() +
        '   ,出发地：' + $("#where").val() + '   ,预算：' + $("#ys_money").val() +
        '   ,人数：' + $("#wd_personNum").val();
    $("#userContent").val(goHtml);
    show_popup(0);
}

function hideDZ() {
    $("#shade0").hide();
    $("#popup0").hide();
}

function sendMail() {
    var userName = $("#userName").val();
    var userQQ = $("#userQQ").val();
    var userPhone = $("#userPhone").val();
    var userEmail = $("#userEmail").val();
    var userContent = $("#userContent").val();
    if (userName == "") {
        alert("用户名不能为空");
        $("#userName").focus();
        return;
    }
    if (userQQ == "") {
        alert("QQ不能为空");
        $("#userQQ").focus();
        return;
    }
    if (userPhone == "") {
        alert("电话不能为空");
        $("#userPhone").focus();
        return;
    }
    if (userEmail == "") {
        alert("邮箱不能为空");
        $("#userEmail").focus();
        return;
    }
    var content = "预订内容：" + userContent;
    var subject = "客户：" + userName + ",电话：" + userPhone + ",QQ:" + userQQ + ",邮箱：" + userEmail
    $.post("recommend!ajaxSendMail.do",
        {
            content: content,
            subject: subject
        },
        function (data, status) {
            alert("客服已接收您的邮件，谢谢！");
            hideDZ();
        });
}


function initArea() {
    $.ajax({
        type: "post",
        url: "ajaxGetArea_AjaxArea.json",
        dataType: "json",
        success: function (data) {
            var areaHtml = "";
            var len = data.length;
            for (var i = 0; i < len; i++) {
                areaHtml += ' <option  value="' + data[i].id + '">' + data[i].name + '</option>';
            }
            $("#area").append(areaHtml);
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            alert(errorThrown);
        }
    });
}

function initCountry(id_value) {
    $.ajax({
        type: "post",
        url: "ajaxGetCountry_AjaxArea.json",
        data: {areaId: id_value},
        dataType: "json",
        success: function (data) {
            var countryHtml = '<option value="">请选择</option>';
            var len = data.length;
            for (var i = 0; i < len; i++) {
                countryHtml += ' <option value="' + data[i].country + '">' + data[i].country + '</option>';
            }
            $("#country").empty();
            $("#country").append(countryHtml);
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            alert(errorThrown);
        }
    });
}

