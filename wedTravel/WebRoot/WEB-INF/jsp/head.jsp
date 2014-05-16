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
    <link href="css/side1.css" rel="stylesheet"/>
    <link href="css/bootstrap.css" rel="stylesheet"/>
    <script src="js/jquery-1.8.2.min.js"></script>
    <script src="js/bootstrap/bootstrap.js"></script>
    <script src="js/common.js"></script>
    <script src="js/page/common.js"></script>
    <script src="js/page/head.js"></script>
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

        <script type="text/javascript">
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
            window.onload = menuFix;

        </script>

        <ul id="nav">

        </ul>
    </div>
</div>
<div class="banner">
    <div class="wrapper">
        <%--<div id="myCarousel" class="carousel slide">
            <div class="carousel-inner">
                <s:iterator value="#request.listRecommend1">
                    <div class="active item">
                                        <a href="${linkUrl}" target="blank"><img src="${imgUrl}" alt=""></a>
                                    </div>
                </s:iterator>
            </div>
            <a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next">&rsaquo;</a>
        </div>   --%>
        <div id="slideshow" class="box_skitter fn-clear">
            <ul>
                <li >
                    <input type="hidden" name="re_title" value="巴厘岛">
                    <input type="hidden" name="re_date" value="2014/6">
                    <input type="hidden" name="re_price" value="20000">
                    <input type="hidden" name="re_desc" value="2014年6月巴厘岛">
                    <a onclick="showTip(this)" href="#"><img onclick="showTip(this)" alt="01" class="cubeRandom" src="images/index_side1.jpg"/></a>
                </li>
                <li>
                    <input type="hidden" name="re_title" value="巴厘岛22">
                    <input type="hidden" name="re_date" value="2014/6">
                    <input type="hidden" name="re_price" value="20000">
                    <input type="hidden" name="re_desc" value="2014年6月巴厘岛22">
                    <a onclick="showTip(this)" href="#"><img onclick="showTip(this)" alt="02" class="cubeRandom" src="images/index_side2.jpg"/></a>
                </li>
                <li>
                    <input type="hidden" name="re_title" value="巴厘岛33">
                    <input type="hidden" name="re_date" value="2014/6">
                    <input type="hidden" name="re_price" value="20000">
                    <input type="hidden" name="re_desc" value="2014年6月巴厘岛33">
                    <a onclick="showTip(this)" href="#"><img onclick="showTip(this)" alt="03" class="cubeRandom" src="images/index_side3.jpg"/></a>
                </li>
            </ul>
        </div>
        <script type="text/javascript" src="js/side1.js"></script>
    </div>
</div>
<div class="new_hot" onclick="location.href='list2.html'" style="display:none">
    <div class="hot_con">
        <h1>巴厘岛<span>2014/6</span></h1>
        <h2>2014年6月开始巴厘岛悦榕庄豪华酒店</h2>
        <div class="price1">￥<span>18888</span></div>
        <div class="price2">起/人</div>
    </div>
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
                        婚礼国家
                        <select name="">
                            <option value="0">请选择</option>
                        </select>
                    </h2>
                </li>
                <li>
                    <h5>
                        您希望去的</h5>

                    <h2>
                        婚礼地区
                        <select name="">
                            <option value="0">请选择</option>
                        </select>
                    </h2>
                </li>
                <li>
                    <h5>
                        您从国内的</h5>

                    <h2>
                        何地出发
                        <select name="">
                            <option value="0">请选择</option>
                        </select>
                    </h2>
                </li>
                <li>
                    <h5>
                        您筹备的</h5>

                    <h2>
                        婚礼预算
                        <select name="">
                            <option value="0">请选择</option>
                        </select>
                    </h2>
                </li>
                <li>
                    <h5>
                        您预计的</h5>

                    <h2>
                        婚礼人数
                        <select name="">
                            <option value="0">请选择</option>
                        </select>
                    </h2>
                </li>
                <li class="ok_li">
                    <input name="" type="button" value="确定" class="index_ok_btn"/>
                </li>
            </ul>
        </div>
    </div>
</div>
</div>
</body>
<script type="text/javascript">
    function showTip(obj){
        alert("****:"+re_title);
        var re_title =  $(obj).find(input[name='re_title']).val();

        var re_date =  $(obj).find(input[name='re_date']).val();
        var re_price =  $(obj).find(input[name='re_price']).val();
        var re_desc =  $(obj).find(input[name='re_desc']).val();
        var inner_Html = "<h1>"+re_title+"<span>"+re_date+"</span></h1>" +
                "<h2>"+re_desc+"</h2>" +
                "<div class='price1'>￥<span>"+re_desc+"</span></div>" +
        "<div class='price2'>起/人</div>";
        $(".hot_con").empty();
        $(".hot_con").append(inner_Html);
        $(".new_hot").show();
    }


</script>
</html>