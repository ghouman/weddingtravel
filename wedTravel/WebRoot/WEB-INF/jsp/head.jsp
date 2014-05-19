<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: ghm
  Date: 14-5-3
  Time: 下午8:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>内页top</title>
    <link media="all" href="css/css.css" type="text/css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="css/open.css">
    <link href="css/side1.css" rel="stylesheet"/>
    <script src="js/jquery-1.8.2.min.js"></script>
    <script src="js/common.js"></script>
    <script src="js/page/common.js"></script>
    <script src="js/page/head.js"></script>
    <script src="js/popup-main.js"></script>
</head>
<body>
<div class="header">
    <div class="w_m top_con">
        <div class="logo" onclick="location.href='index.html'" title="返回首页">
        </div>
        <div class="search_con">
            <div class="search_box">
                <span class="left l_bg"></span>
                <span class="right r_bg"></span>

                <div class="search">
                    <form name=search_form onSubmit="return bottomForm(this);" target="_blank" method=post>
                        <div id="pt1" class="select">
                            <a id="s0">婚礼套餐</a>

                            <div style="display:none;" id="pt2" class="part">
                                <p>
                                    <a id="s1">婚礼套餐一</a>
                                    <a id="s2">婚礼套餐二</a>
                                    <a id="s3">婚礼套餐三</a>
                                </p>
                            </div>
                        </div>
                        <input id="catid" name="catid" type="hidden" value="7">
                        <input id="q" class="enter" name="infos">
                        <input class="sb" name="Input" type="submit" value="">
                    </form>
                </div>
            </div>
        </div>
        <!-- <div class="search_con">
             <select name="">
                 <option value="0">婚礼套餐</option>
             </select>
             <input name="" type="text" class="search_input" />
             <input name="" type="button" class="search_btn" title="点击查询" />
         </div>-->
        <div class="clear">
        </div>
        <div class="menus">
            <ul id="nav">
            </ul>
        </div>
    </div>
    <div class="banner">
        <div class="wrapper">
            <div id="slideshow" class="box_skitter fn-clear">
                <ul>
                    <li>
                        <input type="hidden" name="re_title" value="巴厘岛">
                        <input type="hidden" name="re_date" value="2014/6">
                        <input type="hidden" name="re_price" value="20000">
                        <input type="hidden" name="re_desc" value="2014年6月巴厘岛11">
                        <a onclick="showTip(this)" href="#"><img onclick="showTip(this)" alt="01" class="cubeRandom"
                                                                 src="images/index_side1.jpg"/></a>
                    </li>
                    <li>
                        <input type="hidden" name="re_title" value="巴厘岛22">
                        <input type="hidden" name="re_date" value="2014/6">
                        <input type="hidden" name="re_price" value="20000">
                        <input type="hidden" name="re_desc" value="2014年6月巴厘岛22">
                        <a onclick="showTip(this)" href="#"><img onclick="showTip(this)" alt="02" class="cubeRandom"
                                                                 src="images/index_side2.jpg"/></a>
                    </li>
                    <li>
                        <input type="hidden" name="re_title" value="巴厘岛33">
                        <input type="hidden" name="re_date" value="2014/6">
                        <input type="hidden" name="re_price" value="20000">
                        <input type="hidden" name="re_desc" value="2014年6月巴厘岛33">
                        <a onclick="showTip(this)" href="#"><img onclick="showTip(this)" alt="03" class="cubeRandom"
                                                                 src="images/index_side3.jpg"/></a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="new_hot" onclick="location.href='list2.html'" style="">

    </div>
    <div class="w_m page_dz page_dzs">
        <div class="index_con_div">
            <div class="titles2 dz_title">
                <h2>
                </h2>

                <h3>
                    一对一的服务，让你满意...</h3>
            </div>
            <div class="con_div dz_con_div">
                <ul>
                    <li>
                        <h5>
                            您希望去的</h5>

                        <h2>
                            婚礼地区
                            <select onchange="initCountry(this.value)" name="area" id="area" style="width: 70px;">
                                <option value="0">请选择</option>
                            </select>
                        </h2>
                    </li>
                    <li>
                        <h5>
                            您希望去的</h5>

                        <h2>
                            婚礼国家
                            <select name="country" id="country" style="width: 70px;">
                                <option value="">请选择</option>
                            </select>
                        </h2>
                    </li>

                    <li>
                        <h5>
                            您从国内的</h5>

                        <h2>
                            何地出发
                            <select name="" id="where" style="width: 70px;">
                                <option value="0">请选择</option>
                                <option value="北京">北京</option>
                                <option value="上海">上海</option>
                                <option value="广州">广州</option>
                                <option value="深圳">深圳</option>
                                <option value="南京">南京</option>
                                <option value="杭州">南京</option>
                                <option value="其他">其他</option>
                            </select>
                        </h2>
                    </li>
                    <li>
                        <h5>
                            您筹备的</h5>

                        <h2>
                            婚礼预算
                            <input type="text" id="ys_money" style="width: 60px;">
                        </h2>
                    </li>
                    <li>
                        <h5>
                            您预计的</h5>

                        <h2>
                            婚礼人数
                            <input type="text" id="wd_personNum" style="width: 60px;">
                        </h2>
                    </li>
                    <li class="ok_li">
                        <input name="" type="button" value="确定" class="index_ok_btn" onclick="showDZ()"/>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!--发送客服邮件页-->
<div id="shade0">
</div>
<div id="popup0" class="popup">
    <div class="center">
        <div class="content">
            <div id="popup_drag0" class="popup_drag">
                <div class="title"></div>
                <div class="popup_exit" id="popup_exit0" alt="关闭" title="关闭" onclick="hideDZ();">
                </div>
            </div>
            <div class="content1">
                <div class="mainlist" id="mainlist">
                    <div class="order_form">
                        <table width="100%" border="0" cellpadding="0" cellspacing="0" align="center">
                            <tr>
                                <th>新人姓名</th>
                                <td><input name="" id="userName" type="text" class="input in_360"/>&nbsp;&nbsp;(必填)</td>
                            </tr>
                            <tr>
                                <th>手机号码</th>
                                <td><input name="" id="userPhone" type="text" class="input in_360"/>&nbsp;&nbsp;(必填)
                                </td>
                            </tr>
                            <tr>
                                <th>腾讯QQ</th>
                                <td><input name="" id="userQQ" type="text" class="input in_360"/>&nbsp;&nbsp;(必填)</td>
                            </tr>
                            <tr>
                                <th>邮箱</th>
                                <td><input name="" id="userEmail" type="text" class="input in_360"/>&nbsp;&nbsp;(必填)
                                </td>
                            </tr>
                            <tr>
                                <th valign="top">咨询内容</th>
                                <td>
                                    <textarea name="" id="userContent" cols="" rows=""
                                              class="textarea in_360 area_200"></textarea>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" class="tool_td">
                                    <input name="" type="button" id="send" value="发   送" style="width: 70px"
                                           class="send_btn" onclick="sendMail();"/>
                                    <input name="" type="button" id="return" value="返   回" style="width: 70px"
                                           class="send_btn" onclick="hideDZ();"/></td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div style="clear: both;">
                </div>
                <div class="erro">
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
<script type="text/javascript" src="js/common/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="js/common/jquery.skitter.js"></script>
<script type="text/javascript">
    $(function () {
        menuFix();
        jQuery.noConflict();
        jQuery('#slideshow').skitter({ width: 980, height: 318, animation: 'random', structure: '<a href="#" class="prev_button">prev</a>' + '<a href="#" class="next_button">next</a>' + '<span class="info_slide" style="display: none"></span>' + '<div class="container_skitter">' + '<div class="image">' + '<a target="_blank" href="/"><img class="image_main" /></a>' + '<div class="label_skitter"></div>' + '</div>' + '</div>', velocity: 1.3, interval: 3500, thumb_width: '70px', thumb_height: '40px', caption: 'bottom', caption_width: '250', navigation: 1, fullscreen: false,
            imageSwitched: function (image_i, self) {
                initNewHot(image_i);
            }
        });
        initNewHot(0);
    });
    function initNewHot(i){
        var obj = $("#slideshow");
        var retitle = obj.find('input[name="re_title"]')[i].value;
        var redate = obj.find('input[name="re_date"]')[i].value;
        var reprice = obj.find('input[name="re_price"]')[i].value;
        var redesc = obj.find('input[name="re_desc"]')[i].value;
        var hotHtml = '<div class="hot_con"><h1>'+retitle+'<span>'+redate+'</span></h1><h2>'+redesc+'</h2><div class="price1">￥<span>'+reprice+'</span></div><div class="price2">起/人</div></div>'
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
</script>