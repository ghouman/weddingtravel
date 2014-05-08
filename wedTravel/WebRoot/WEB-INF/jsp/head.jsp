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
    <script src="js/jquery-1.8.2.min.js"></script>
    <script src="js/common.js"></script>
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
</div>
</body>
</html>