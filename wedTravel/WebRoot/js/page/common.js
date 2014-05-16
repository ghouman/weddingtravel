var WED={};

function getMenu(id) {
    var DataList ={};
    $.ajax({
        type: "post",
        url: "ajaxGetMenu_Ajax.json",
        data: {moduleId:id},
        dataType: "json",
        success: function (data) {
            WED.menu = data;
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            alert(errorThrown);
        }
    });
}

