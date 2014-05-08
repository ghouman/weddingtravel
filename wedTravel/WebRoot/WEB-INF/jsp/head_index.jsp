<%--
  Created by IntelliJ IDEA.
  User: ghm
  Date: 14-5-3
  Time: 下午8:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>首页</title>
    <link media="all" href="css/css.css" type="text/css" rel="stylesheet"/>
    <link href="css/side1.css" rel="stylesheet"/>
    <script src="js/jquery-1.8.2.min.js"></script>
    <script src="js/common.js"></script>

    <script type="text/javascript" src="js/index.js" charset="utf-8"></script>
</head>
<body>
<div class="index_header">
<div class="w_m top_con">
    <div class="logo" onclick="location.href='remommend.action'" title="返回首页"></div>
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
    <div class="clear"></div>
    <div class="menus">
        <script type=text/javascript>
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
            <li><a href="recommend.action">网站首页</a></li>
            <li><a href="list1.jsp">海岛婚礼套餐</a>
                <ul>
                    <li class="li_t"></li>
                    <li>
                        <a href="list1.jsp">东南亚地区</a>
                    </li>
                    <li>
                        <a href="list1.jsp">地中海地区</a>
                    </li>
                    <li class="li_b"></li>
                </ul>
            </li>
            <li>
                <a href="list2.jsp">婚礼婚纱照摄影</a>
                <ul>
                    <li class="li_t"></li>
                    <li>
                        <a href="list2.jsp">东南亚地区</a>
                    </li>
                    <li>
                        <a href="list2.jsp">地中海地区</a>
                    </li>
                    <li class="li_b"></li>
                </ul>
            </li>
            <li>
                <a href="">岛屿自助酒店</a>
                <ul>
                    <li class="li_t"></li>
                    <li>
                        <a href="#">东南亚地区</a>
                    </li>
                    <li>
                        <a href="#">地中海地区</a>
                    </li>
                    <li class="li_b"></li>
                </ul>
            </li>
            <li>
                <a href="">婚礼蜜月自助</a>
                <ul>
                    <li class="li_t"></li>
                    <li>
                        <a href="#">东南亚地区</a>
                    </li>
                    <li>
                        <a href="#">地中海地区</a>
                    </li>
                    <li class="li_b"></li>
                </ul>
            </li>
            <li>
                <a href="">婚礼案例</a>
                <ul>
                    <li class="li_t"></li>
                    <li>
                        <a href="#">东南亚地区</a>
                    </li>
                    <li>
                        <a href="#">地中海地区</a>
                    </li>
                    <li class="li_b"></li>
                </ul>
            </li>
            <li>
                <a href="help.jsp">疑难答案</a>
            </li>
            <li>
                <a href="company.jsp">公司介绍</a>
            </li>
            <li class="no_bg">
                <a href="order.jsp">订单购物车</a>
            </li>
        </ul>
    </div>
</div>
<div class="w_m2">
    <div class="banner_l">
        <div class="ranking_div">
            <ul>
                <s:iterator value="#request.list2" status="u">
                    <c:set value="${u.index}" var='l'></c:set>
                        <li onclick="" class="li${l+1}"><img src='<s:property value="imgUrl"/>' onmouseover="this.src='<s:property value="bigImgUrl"/>'" onmouseout="this.src='<s:property value="imgUrl"/>'"/></li>
                    <!--<li><img src='<s:property value="imgUrl"/>'/></li> -->
                </s:iterator>
                <!--
                <li onclick="" class="li1">
                    <img src="images/popular/01.png" onmouseover="this.src='images/popular/01_h.png'" onmouseout="this.src='images/popular/01.png'"/>
                </li>
                <li onclick="" class="li2">
                    <img src="images/popular/02.png" onmouseover="this.src='images/popular/02_h.png'" onmouseout="this.src='images/popular/02.png'"/>
                </li>
                <li onclick="" class="li3">
                    <img src="images/popular/03.png" onmouseover="this.src='images/popular/03_h.png'" onmouseout="this.src='images/popular/03.png'"/>
                </li>
                <li onclick="" class="li4">
                    <img src="images/popular/04.png" onmouseover="this.src='images/popular/04_h.png'" onmouseout="this.src='images/popular/04.png'"/>
                </li>
                <li onclick="" class="li5">
                    <img src="images/popular/05.png" onmouseover="this.src='images/popular/05_h.png'" onmouseout="this.src='images/popular/05.png'"/>
                </li> -->
            </ul>

            <div class="more_div" onclick="" title="查看更多">
                <img src="images/popular/more.png"/>
            </div>
        </div>
    </div>
    <div class="banner_r">
        <div class="wrapper">
            <div id="slideshow" class="box_skitter fn-clear">
                <ul>
                    <s:iterator value="#request.list1">
                        <li><a href='<s:property value="linkUrl"/>'><img alt="01" class="cubeRandom"
                                                                         src='<s:property value="imgUrl"/>'/></a></li>
                    </s:iterator>
                    <!--
                <li><a href="list2.jsp"><img alt="01" class="cubeRandom" src="images/index_side1.jpg" /></a></li>
                <li><a href="list2.jsp"><img alt="02" class="cubeRandom" src="images/index_side2.jpg" /></a></li>
                <li><a href="list2.jsp"><img alt="03" class="cubeRandom" src="images/index_side3.jpg" /></a></li>
                    -->
                </ul>
            </div>

        </div>
    </div>
</div>
<div class="w_m">
    <div class="index_con_div">
        <div class="titles2 dz_title"><h2></h2>

            <h3>一对一的服务，让你满意...</h3></div>
        <div class="con_div dz_con_div">
            <ul>
                <li>
                    <h5>您希望去的</h5>

                    <h2>婚礼国家
                        <select name="">
                            <option value="0">请选择</option>
                        </select>
                    </h2>
                </li>
                <li>
                    <h5>您希望去的</h5>

                    <h2>婚礼地区
                        <select name="">
                            <option value="0">请选择</option>
                        </select>
                    </h2>
                </li>
                <li>
                    <h5>您从国内的</h5>

                    <h2>何地出发
                        <select name="">
                            <option value="0">请选择</option>
                        </select>
                    </h2>
                </li>
                <li>
                    <h5>您筹备的</h5>

                    <h2>婚礼预算
                        <select name="">
                            <option value="0">请选择</option>
                        </select>
                    </h2>
                </li>
                <li>
                    <h5>您预计的</h5>

                    <h2>婚礼人数
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
</html>
<script type="text/javascript" src="js/side1.js"></script>