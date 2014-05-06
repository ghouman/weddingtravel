(function () {
    initPage();
})();

function initPage(){
     //initPic();
}

function initPic(){
    var picSrcList = [];
    /*$.ajax({
            type: "POST",
            url: "/actions/Category.action?getAllCategory=",
            data: "plate=" + plate,
            contentType: "application/x-www-form-urlencoded; charset=utf-8",
            dataType: "json",
            beforeSend: function () {
                $("#addProdLine").css("disabled", "true");
            },
            success: function (obj) {
                var categoryList = obj.categoryList;
                var option_ca = "<option value=''>请选择</option>";
                $("#category").children().remove();
                $(categoryList).each(function () {
                    var that = this;
                    option_ca = option_ca + "<option value='" + that.uid + "' >" + that.category + "</option>";
                });

                $("#category").append(option_ca);
                $("#addProdLine").css("disabled", "false");
            },
            complete: function () {

            }
        });*/
   /* var   picObj1={},picObj2={},picObj3={};
        var picObj1["url"]="images/index_side1.jpg";
        var picObj2["url"]="images/index_side2.jpg";
        var picObj3["url"]="images/index_side3.jpg";
        picSrcList.push(picObj1);
        picSrcList.push(picObj2);
        picSrcList.push(picObj3);*/

    var htmlLi = '';

    //for(var i=0;i<picSrcList.length;i++){
        htmlLi += '<ul><li><a href="list2.html"><img alt="01" class="cubeRandom" src="images/index_side1.jpg" /></a></li>' +
            '<li><a href="list2.html"><img alt="01" class="cubeRandom" src="images/index_side2.jpg" /></a></li>' +
            '<li><a href="list2.html"><img alt="01" class="cubeRandom" src="images/index_side3.jpg" /></a></li></ul>'
    //}
    $("#slideshow").append(htmlLi);
}

function csright() {
    var objImgList = $(".show_pics_m li");
    for(var i = 0;i<objImgList.length;i++){
        if(i == objImgList.length-1){
            $(objImgList[i]).find("img").attr("src",$(objImgList[0]).find("img").attr("src"));
        } else {
            $(objImgList[i]).find("img").attr("src",$(objImgList[i+1]).find("img").attr("src"));
        }
    }
}
function csleft() {
    var objImgList = $(".show_pics_m li");
    for(var i = objImgList.length-1;i>=0;i--){
        if(i == 0){
            $(objImgList[0]).find("img").attr("src",$(objImgList[objImgList.length-1]).find("img").attr("src"));
        } else {
            $(objImgList[i]).find("img").attr("src",$(objImgList[i-1]).find("img").attr("src"));
        }
    }
}