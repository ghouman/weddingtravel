<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link media="all" href="css/css.css" type="text/css" rel="stylesheet" />
    <link href="css/side1.css" rel="stylesheet" />

    <script language="JavaScript" src="js/jquery.js"></script>

    <link media="all" href="css/scroll2.css" type="text/css" rel="stylesheet">

    <script src="js/scroll2.js" type="text/javascript"></script>

    <script src="js/productlist_roll.js" type="text/javascript"></script>
    
    <script src="js/main.js" type="text/javascript"></script>
	<title>婚礼套餐区</title>

    <script type="text/javascript">
		
function selectTag(showContent,selfObj){
	// 操作标签
	var tag = document.getElementById("tags2").getElementsByTagName("li");
	var taglength = tag.length;
	for(i=0; i<taglength; i++){
		tag[i].className = "";
	}
	selfObj.parentNode.className = "selectTag";
	// 操作内容
	for(i=0; j=document.getElementById("pic_con"+i); i++){
		j.style.display = "none";
	}
	document.getElementById(showContent).style.display = "block";
	
	
}
    </script>

</head>
<body>
<jsp:include page="head.jsp"></jsp:include>
    <div class="w_m page_dz">
        <div class="index_con_div in_con_div">
            <div class="titles2 hltc_title yahei">
                <h2>婚礼套餐
                </h2>
                <h3>
                    让您的婚礼与海岛的风景完美结合，在您的婚礼中与众不同</h3>
            </div>
            <div class="left_con">
                <iframe src="left.htm" scrolling="no" width="100%" height="1860" frameborder="0"></iframe>
            </div>
            <div class="main_con2">
                <div class="current_page">
                	<a href="index.html" class="cur_a">婚礼套餐</a>&nbsp;>>>&nbsp;
                    <a href="list1.html" class="cur_a">东南亚地区</a>&nbsp;>>>&nbsp;
                    巴厘岛
                </div>
                <div class="map_con">
                	 <div class="map_scroll clearfix">
                                            <div class="map_scroll_inner" id="map_scroll0">
                                                <ul>
                                                    <li class="pic">
                                                        <img src="images/dy01.jpg" alt="" />
                                                        <div class="map_img">
                                                        	<img src="images/map1.png" alt="" />
                                                        </div>
                                                    </li>
                                                    <li class="pic">
                                                        <img src="images/dy01.jpg" alt="" />
                                                        <img src="images/map1.png" alt="" />
                                                    </li>
                                                    <li class="pic">
                                                        <img src="images/dy01.jpg" alt="" />
                                                        <img src="images/map1.png" alt="" />
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="clearboth">
                                            </div>
                                            <span class="btn_l" id="mbtn_l0"></span><span class="btn_r" id="mbtn_r0"></span>
                                        </div>

                                        <script>
											<!--//--><![CDATA[//><!--
											var scrollPic_03 = new ScrollPic();
											scrollPic_03.scrollContId   = "map_scroll0"; //内容容器ID
											scrollPic_03.arrLeftId      = "mbtn_l0";//左箭头ID
											scrollPic_03.arrRightId     = "mbtn_r0"; //右箭头ID
											
											scrollPic_03.frameWidth     = 700;//显示框宽度
											scrollPic_03.pageWidth      = 700; //翻页宽度
											
											scrollPic_03.speed          = 10; //移动速度(单位毫秒，越小越快)
											scrollPic_03.space          = 10; //每次移动像素(单位px，越大越快)
											scrollPic_03.autoPlay       = true; //自动播放
											scrollPic_03.autoPlayTime   = 3; //自动播放间隔时间(秒)
											
											scrollPic_03.initialize(); //初始化
																		
													//--><!]]>
                                        </script>
                </div>
                <div class="list_con2">
                	<div id="con2">
                        <ul id="tags2">
                            <li class="selectTag">
                            	<a onclick="selectTag('pic_con0',this)" href="javascript:void(0)">全部</a>
                            </li>
                            <li>
                            	<a onclick="selectTag('pic_con1',this)" href="javascript:void(0)">海上婚礼</a>
                            </li>
                            <li>
                            	<a onclick="selectTag('pic_con2',this)" href="javascript:void(0)">酒店婚礼</a>
                            </li>
                            <li>
                            	<a onclick="selectTag('pic_con3',this)" href="javascript:void(0)">教堂婚礼</a>
                            </li>
                        </ul>
                        <div id="pic_con">
                            <div class="pic_con selectTag" id="pic_con0">
                                  <ul class="pictlist">
                                    <li>
                                    	<div class="pic_div" onclick="location.href='list3.html'">
                                            <img src="images/02.jpg"/>
                                            <div>
                                                <p class="info_name">
                                                    巴厘岛港丽无限教堂
                                                </p>
                                                <p class="info_price">
                                                    ￥10000
                                                </p>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                    	<div class="pic_div" onclick="location.href='list3.html'">
                                            <img src="images/02.jpg"/>
                                            <div>
                                                <p class="info_name">巴厘岛港丽无限教堂
                                                </p>
                                                <p class="info_price">
                                                    ￥10000
                                                </p>
                                            </div>
                                        </div>
                                    </li>
                                    <li><div class="pic_div" onclick="location.href='list3.html'">
                                            <img src="images/02.jpg"/>
                                            <div>
                                                <p class="info_name">巴厘岛港丽无限教堂
                                                </p>
                                                <p class="info_price">
                                                    ￥10000
                                                </p>
                                            </div>
                                        </div>
                                    </li>
                                    <li><div class="pic_div" onclick="location.href='list3.html'">
                                            <img src="images/02.jpg"/>
                                            <div>
                                                <p class="info_name">巴厘岛港丽无限教堂
                                                </p>
                                                <p class="info_price">
                                                    ￥10000
                                                </p>
                                            </div>
                                        </div>
                                    </li>
                                    <li><div class="pic_div" onclick="location.href='list3.html'">
                                            <img src="images/02.jpg"/>
                                            <div>
                                                <p class="info_name">巴厘岛港丽无限教堂
                                                </p>
                                                <p class="info_price">
                                                    ￥10000
                                                </p>
                                            </div>
                                        </div>
                                    </li>
                                    <li><div class="pic_div" onclick="location.href='list3.html'">
                                            <img src="images/02.jpg"/>
                                            <div>
                                                <p class="info_name">巴厘岛港丽无限教堂
                                                </p>
                                                <p class="info_price">
                                                    ￥10000
                                                </p>
                                            </div>
                                        </div>
                                    </li>
                                     <li><div class="pic_div" onclick="location.href='list3.html'">
                                            <img src="images/02.jpg"/>
                                            <div>
                                                <p class="info_name">巴厘岛港丽无限教堂
                                                </p>
                                                <p class="info_price">
                                                    ￥10000
                                                </p>
                                            </div>
                                        </div>
                                    </li>
                                    <li><div class="pic_div" onclick="location.href='list3.html'">
                                            <img src="images/02.jpg"/>
                                            <div>
                                                <p class="info_name">巴厘岛港丽无限教堂
                                                </p>
                                                <p class="info_price">
                                                    ￥10000
                                                </p>
                                            </div>
                                        </div>
                                    </li>
                                    <li><div class="pic_div" onclick="location.href='list3.html'">
                                            <img src="images/02.jpg"/>
                                            <div>
                                                <p class="info_name">巴厘岛港丽无限教堂
                                                </p>
                                                <p class="info_price">
                                                    ￥10000
                                                </p>
                                            </div>
                                        </div>
                                    </li>
                                </ul>	
                             </div>
                             <div class="pic_con" id="pic_con1">
                                  <ul class="pictlist">
                                    <li><div class="pic_div" onclick="location.href='list3.html'">
                                            <img src="images/01.jpg"/>
                                            <div>
                                                <p class="info_name">巴厘岛港丽无限教堂
                                                </p>
                                                <p class="info_price">
                                                    ￥10000
                                                </p>
                                            </div>
                                        </div>
                                    </li>
                                    <li><div class="pic_div" onclick="location.href='list3.html'">
                                            <img src="images/01.jpg"/>
                                            <div>
                                                <p class="info_name">巴厘岛港丽无限教堂
                                                </p>
                                                <p class="info_price">
                                                    ￥10000
                                                </p>
                                            </div>
                                        </div>
                                    </li>
                                    <li><div class="pic_div" onclick="location.href='list3.html'">
                                            <img src="images/01.jpg"/>
                                            <div>
                                                <p class="info_name">巴厘岛港丽无限教堂
                                                </p>
                                                <p class="info_price">
                                                    ￥10000
                                                </p>
                                            </div>
                                        </div>
                                    </li>
                                    <li><div class="pic_div" onclick="location.href='list3.html'">
                                            <img src="images/01.jpg"/>
                                            <div>
                                                <p class="info_name">巴厘岛港丽无限教堂
                                                </p>
                                                <p class="info_price">
                                                    ￥10000
                                                </p>
                                            </div>
                                        </div>
                                    </li>
                                    <li><div class="pic_div" onclick="location.href='list3.html'">
                                            <img src="images/01.jpg"/>
                                            <div>
                                                <p class="info_name">巴厘岛港丽无限教堂
                                                </p>
                                                <p class="info_price">
                                                    ￥10000
                                                </p>
                                            </div>
                                        </div>
                                    </li>
                                    <li><div class="pic_div" onclick="location.href='list3.html'">
                                            <img src="images/01.jpg"/>
                                            <div>
                                                <p class="info_name">巴厘岛港丽无限教堂
                                                </p>
                                                <p class="info_price">
                                                    ￥10000
                                                </p>
                                            </div>
                                        </div>
                                    </li>
                                     <li><div class="pic_div" onclick="location.href='list3.html'">
                                            <img src="images/01.jpg"/>
                                            <div>
                                                <p class="info_name">巴厘岛港丽无限教堂
                                                </p>
                                                <p class="info_price">
                                                    ￥10000
                                                </p>
                                            </div>
                                        </div>
                                    </li>
                                    <li><div class="pic_div" onclick="location.href='list3.html'">
                                            <img src="images/01.jpg"/>
                                            <div>
                                                <p class="info_name">巴厘岛港丽无限教堂
                                                </p>
                                                <p class="info_price">
                                                    ￥10000
                                                </p>
                                            </div>
                                        </div>
                                    </li>
                                    <li><div class="pic_div" onclick="location.href='list3.html'">
                                            <img src="images/01.jpg"/>
                                            <div>
                                                <p class="info_name">巴厘岛港丽无限教堂
                                                </p>
                                                <p class="info_price">
                                                    ￥10000
                                                </p>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                             </div>
                             <div class="pic_con" id="pic_con2">
                                  <ul class="pictlist">
                                    <li><div class="pic_div" onclick="location.href='list3.html'">
                                            <img src="images/02.jpg"/>
                                            <div>
                                                <p class="info_name">巴厘岛港丽无限教堂
                                                </p>
                                                <p class="info_price">
                                                    ￥10000
                                                </p>
                                            </div>
                                        </div>
                                    </li>
                                    <li><div class="pic_div" onclick="location.href='list3.html'">
                                            <img src="images/02.jpg"/>
                                            <div>
                                                <p class="info_name">巴厘岛港丽无限教堂
                                                </p>
                                                <p class="info_price">
                                                    ￥10000
                                                </p>
                                            </div>
                                        </div>
                                    </li>
                                    <li><div class="pic_div" onclick="location.href='list3.html'">
                                            <img src="images/02.jpg"/>
                                            <div>
                                                <p class="info_name">巴厘岛港丽无限教堂
                                                </p>
                                                <p class="info_price">
                                                    ￥10000
                                                </p>
                                            </div>
                                        </div>
                                    </li>
                                    <li><div class="pic_div" onclick="location.href='list3.html'">
                                            <img src="images/02.jpg"/>
                                            <div>
                                                <p class="info_name">巴厘岛港丽无限教堂
                                                </p>
                                                <p class="info_price">
                                                    ￥10000
                                                </p>
                                            </div>
                                        </div>
                                    </li>
                                    <li><div class="pic_div" onclick="location.href='list3.html'">
                                            <img src="images/02.jpg"/>
                                            <div>
                                                <p class="info_name">巴厘岛港丽无限教堂
                                                </p>
                                                <p class="info_price">
                                                    ￥10000
                                                </p>
                                            </div>
                                        </div>
                                    </li>
                                    <li><div class="pic_div" onclick="location.href='list3.html'">
                                            <img src="images/02.jpg"/>
                                            <div>
                                                <p class="info_name">巴厘岛港丽无限教堂
                                                </p>
                                                <p class="info_price">
                                                    ￥10000
                                                </p>
                                            </div>
                                        </div>
                                    </li>
                                     <li><div class="pic_div" onclick="location.href='list3.html'">
                                            <img src="images/02.jpg"/>
                                            <div>
                                                <p class="info_name">巴厘岛港丽无限教堂
                                                </p>
                                                <p class="info_price">
                                                    ￥10000
                                                </p>
                                            </div>
                                        </div>
                                    </li>
                                    <li><div class="pic_div" onclick="location.href='list3.html'">
                                            <img src="images/02.jpg"/>
                                            <div>
                                                <p class="info_name">巴厘岛港丽无限教堂
                                                </p>
                                                <p class="info_price">
                                                    ￥10000
                                                </p>
                                            </div>
                                        </div>
                                    </li>
                                    <li><div class="pic_div" onclick="location.href='list3.html'">
                                            <img src="images/02.jpg"/>
                                            <div>
                                                <p class="info_name">巴厘岛港丽无限教堂
                                                </p>
                                                <p class="info_price">
                                                    ￥10000
                                                </p>
                                            </div>
                                        </div>
                                    </li>
                                </ul>  
                             </div>
                             <div class="pic_con" id="pic_con3">
                             	  <ul class="pictlist">
                                    <li><div class="pic_div" onclick="location.href='list3.html'">
                                            <img src="images/01.jpg"/>
                                            <div>
                                                <p class="info_name">巴厘岛港丽无限教堂
                                                </p>
                                                <p class="info_price">
                                                    ￥10000
                                                </p>
                                            </div>
                                        </div>
                                    </li>
                                    <li><div class="pic_div" onclick="location.href='list3.html'">
                                            <img src="images/01.jpg"/>
                                            <div>
                                                <p class="info_name">巴厘岛港丽无限教堂
                                                </p>
                                                <p class="info_price">
                                                    ￥10000
                                                </p>
                                            </div>
                                        </div>
                                    </li>
                                    <li><div class="pic_div" onclick="location.href='list3.html'">
                                            <img src="images/01.jpg"/>
                                            <div>
                                                <p class="info_name">巴厘岛港丽无限教堂
                                                </p>
                                                <p class="info_price">
                                                    ￥10000
                                                </p>
                                            </div>
                                        </div>
                                    </li>
                                    <li><div class="pic_div" onclick="location.href='list3.html'">
                                            <img src="images/01.jpg"/>
                                            <div>
                                                <p class="info_name">巴厘岛港丽无限教堂
                                                </p>
                                                <p class="info_price">
                                                    ￥10000
                                                </p>
                                            </div>
                                        </div>
                                    </li>
                                    <li><div class="pic_div" onclick="location.href='list3.html'">
                                            <img src="images/01.jpg"/>
                                            <div>
                                                <p class="info_name">巴厘岛港丽无限教堂
                                                </p>
                                                <p class="info_price">
                                                    ￥10000
                                                </p>
                                            </div>
                                        </div>
                                    </li>
                                    <li><div class="pic_div" onclick="location.href='list3.html'">
                                            <img src="images/01.jpg"/>
                                            <div>
                                                <p class="info_name">巴厘岛港丽无限教堂
                                                </p>
                                                <p class="info_price">
                                                    ￥10000
                                                </p>
                                            </div>
                                        </div>
                                    </li>
                                     <li><div class="pic_div" onclick="location.href='list3.html'">
                                            <img src="images/01.jpg"/>
                                            <div>
                                                <p class="info_name">巴厘岛港丽无限教堂
                                                </p>
                                                <p class="info_price">
                                                    ￥10000
                                                </p>
                                            </div>
                                        </div>
                                    </li>
                                    <li><div class="pic_div" onclick="location.href='list3.html'">
                                            <img src="images/01.jpg"/>
                                            <div>
                                                <p class="info_name">巴厘岛港丽无限教堂
                                                </p>
                                                <p class="info_price">
                                                    ￥10000
                                                </p>
                                            </div>
                                        </div>
                                    </li>
                                    <li><div class="pic_div" onclick="location.href='list3.html'">
                                            <img src="images/02.jpg"/>
                                            <div>
                                                <p class="info_name">巴厘岛港丽无限教堂
                                                </p>
                                                <p class="info_price">
                                                    ￥10000
                                                </p>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                             </div>
                        </div>
                    </div>
                    <div class="clear"></div>
                    <div class="pages">
                        <a href="#" class="page_a page_a_select">1</a> <a href="#" class="page_a">2</a> <a
                            href="#" class="page_a">3</a> <a href="#" class="page_a">4</a> <a href="#" class="page_a">
                                5</a>
                    </div>
                </div>
            </div>
            <div class="clear">
            </div>
        </div>
    </div>
    <iframe src="bottom.htm" scrolling="no" width="100%" height="240" frameborder="0"></iframe>
    <!--侧边广告-->
    <div id="buoy" style="position: fixed; top: 150px;">
        <iframe id="cproIframe1" src="side1.jsp" width="102" height="380" align="center,center"
            marginwidth="0" marginheight="0" scrolling="no" frameborder="0" allowtransparency="true">
        </iframe>
    </div>
    <!--侧边广告 end-->
</body>
</html>