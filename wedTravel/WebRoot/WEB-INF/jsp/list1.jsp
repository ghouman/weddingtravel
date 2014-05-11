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
	var tag = document.getElementById("tags").getElementsByTagName("li");
	var taglength = tag.length;
	for(i=0; i<taglength; i++){
		tag[i].className = "";
	}
	selfObj.parentNode.className = "selectTag";
	// 操作内容
	for(i=0; j=document.getElementById("tagContent"+i); i++){
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
                <!--<iframe src="left.htm" scrolling="no" width="100%" height="1860" frameborder="0"></iframe>-->
                 <jsp:include page="left.jsp"></jsp:include>
            </div>
            <div class="main_con">
                <div class="best_con">
                    <div id="con">
                        <h2>
                            人气最旺岛屿选择</h2>
                        <ul id="tags">
                            <li><a onclick="selectTag('tagContent5',this)" href="javascript:void(0)">沙巴</a>
                            </li>
                            <li><a onclick="selectTag('tagContent4',this)" href="javascript:void(0)">兰卡威</a>
                            </li>
                            <li><a onclick="selectTag('tagContent3',this)" href="javascript:void(0)">长滩</a>
                            </li>
                            <li><a onclick="selectTag('tagContent2',this)" href="javascript:void(0)">马尔代夫</a>
                            </li>
                            <li><a onclick="selectTag('tagContent1',this)" href="javascript:void(0)">巴厘岛</a>
                            </li>
                            <li class="selectTag"><a onclick="selectTag('tagContent0',this)" href="javascript:void(0)">
                                塞班岛</a> </li>
                        </ul>
                        <div id="tagContent">
                            <div class="tag_con_top">
                                <div class="top_left tag_l">
                                </div>
                                <div class="top_right tag_r">
                                </div>
                            </div>
                            <div class="clear">
                            </div>
                            <div class="tag_con_middle">
                                <div class="tag_lm middle_left">
                                </div>
                                <div class="middle_m">
                                    <div class="tagContent selectTag" id="tagContent0">
                                        <div class="tag_scroll clearfix">
                                            <div class="tag_scroll_inner" id="tag_scroll0">
                                                <ul>
                                                    <li class="pic">
                                                        <img src="images/02.jpg" alt="" />
                                                        <p class="piclist_p1">
                                                            塞班游艇婚礼
                                                        </p>
                                                        <p class="piclist_p2">
                                                            Jade Lady 小型油轮
                                                        </p>
                                                    </li>
                                                    <li class="pic">
                                                        <img src="images/02.jpg" alt="" />
                                                        <p class="piclist_p1">
                                                            塞班游艇婚礼
                                                        </p>
                                                        <p class="piclist_p2">
                                                            Jade Lady 小型油轮
                                                        </p>
                                                    </li>
                                                    <li class="pic">
                                                        <img src="images/02.jpg" alt="" />
                                                        <p class="piclist_p1">
                                                            塞班游艇婚礼
                                                        </p>
                                                        <p class="piclist_p2">
                                                            Jade Lady 小型油轮
                                                        </p>
                                                    </li>
                                                    <li class="pic">
                                                        <img src="images/02.jpg" alt="" />
                                                        <p class="piclist_p1">
                                                            塞班游艇婚礼
                                                        </p>
                                                        <p class="piclist_p2">
                                                            Jade Lady 小型油轮
                                                        </p>
                                                    </li>
                                                    <li class="pic">
                                                        <img src="images/02.jpg" alt="" />
                                                        <p class="piclist_p1">
                                                            塞班游艇婚礼
                                                        </p>
                                                        <p class="piclist_p2">
                                                            Jade Lady 小型油轮
                                                        </p>
                                                    </li>
                                                    <li class="pic">
                                                        <img src="images/02.jpg" alt="" />
                                                        <p class="piclist_p1">
                                                            塞班游艇婚礼
                                                        </p>
                                                        <p class="piclist_p2">
                                                            Jade Lady 小型油轮
                                                        </p>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="clearboth">
                                            </div>
                                            <span class="btn_l" id="btn_l0"></span><span class="btn_r" id="btn_r0"></span>
                                        </div>

                                        <script>
											<!--//--><![CDATA[//><!--
											var scrollPic_03 = new ScrollPic();
											scrollPic_03.scrollContId   = "tag_scroll0"; //内容容器ID
											scrollPic_03.arrLeftId      = "btn_l0";//左箭头ID
											scrollPic_03.arrRightId     = "btn_r0"; //右箭头ID
											
											scrollPic_03.frameWidth     = 700;//显示框宽度
											scrollPic_03.pageWidth      = 175; //翻页宽度
											
											scrollPic_03.speed          = 10; //移动速度(单位毫秒，越小越快)
											scrollPic_03.space          = 10; //每次移动像素(单位px，越大越快)
											scrollPic_03.autoPlay       = true; //自动播放
											scrollPic_03.autoPlayTime   = 3; //自动播放间隔时间(秒)
											
											scrollPic_03.initialize(); //初始化
																		
													//--><!]]>
                                        </script>

                                    </div>
                                    <div class="tagContent" id="tagContent1">
                                        <div class="tag_scroll clearfix">
                                            <div class="tag_scroll_inner" id="tag_scroll1">
                                                <ul>
                                                    <li class="pic">
                                                        <img src="images/02.jpg" alt="" />
                                                        <p class="piclist_p1">
                                                            塞班游艇婚礼
                                                        </p>
                                                        <p class="piclist_p2">
                                                            Jade Lady 小型油轮
                                                        </p>
                                                    </li>
                                                    <li class="pic">
                                                        <img src="images/02.jpg" alt="" />
                                                        <p class="piclist_p1">
                                                            塞班游艇婚礼
                                                        </p>
                                                        <p class="piclist_p2">
                                                            Jade Lady 小型油轮
                                                        </p>
                                                    </li>
                                                    <li class="pic">
                                                        <img src="images/02.jpg" alt="" />
                                                        <p class="piclist_p1">
                                                            塞班游艇婚礼
                                                        </p>
                                                        <p class="piclist_p2">
                                                            Jade Lady 小型油轮
                                                        </p>
                                                    </li>
                                                    <li class="pic">
                                                        <img src="images/02.jpg" alt="" />
                                                        <p class="piclist_p1">
                                                            塞班游艇婚礼
                                                        </p>
                                                        <p class="piclist_p2">
                                                            Jade Lady 小型油轮
                                                        </p>
                                                    </li>
                                                    <li class="pic">
                                                        <img src="images/02.jpg" alt="" />
                                                        <p class="piclist_p1">
                                                            塞班游艇婚礼
                                                        </p>
                                                        <p class="piclist_p2">
                                                            Jade Lady 小型油轮
                                                        </p>
                                                    </li>
                                                    <li class="pic">
                                                        <img src="images/02.jpg" alt="" />
                                                        <p class="piclist_p1">
                                                            塞班游艇婚礼
                                                        </p>
                                                        <p class="piclist_p2">
                                                            Jade Lady 小型油轮
                                                        </p>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="clearboth">
                                            </div>
                                            <span class="btn_l" id="btn_l1"></span><span class="btn_r" id="btn_r1"></span>
                                        </div>

                                        <script>
											<!--//--><![CDATA[//><!--
											var scrollPic_03 = new ScrollPic();
											scrollPic_03.scrollContId   = "tag_scroll1"; //内容容器ID
											scrollPic_03.arrLeftId      = "btn_l1";//左箭头ID
											scrollPic_03.arrRightId     = "btn_r1"; //右箭头ID
											
											scrollPic_03.frameWidth     = 700;//显示框宽度
											scrollPic_03.pageWidth      = 175; //翻页宽度
											
											scrollPic_03.speed          = 10; //移动速度(单位毫秒，越小越快)
											scrollPic_03.space          = 10; //每次移动像素(单位px，越大越快)
											scrollPic_03.autoPlay       = true; //自动播放
											scrollPic_03.autoPlayTime   = 3; //自动播放间隔时间(秒)
											
											scrollPic_03.initialize(); //初始化
																		
													//--><!]]>
                                        </script>

                                    </div>
                                    <div class="tagContent" id="tagContent2">
                                        <div class="tag_scroll clearfix">
                                            <div class="tag_scroll_inner" id="tag_scroll2">
                                                <ul>
                                                    <li class="pic">
                                                        <img src="images/02.jpg" alt="" />
                                                        <p class="piclist_p1">
                                                            塞班游艇婚礼
                                                        </p>
                                                        <p class="piclist_p2">
                                                            Jade Lady 小型油轮
                                                        </p>
                                                    </li>
                                                    <li class="pic">
                                                        <img src="images/02.jpg" alt="" />
                                                        <p class="piclist_p1">
                                                            塞班游艇婚礼
                                                        </p>
                                                        <p class="piclist_p2">
                                                            Jade Lady 小型油轮
                                                        </p>
                                                    </li>
                                                    <li class="pic">
                                                        <img src="images/02.jpg" alt="" />
                                                        <p class="piclist_p1">
                                                            塞班游艇婚礼
                                                        </p>
                                                        <p class="piclist_p2">
                                                            Jade Lady 小型油轮
                                                        </p>
                                                    </li>
                                                    <li class="pic">
                                                        <img src="images/02.jpg" alt="" />
                                                        <p class="piclist_p1">
                                                            塞班游艇婚礼
                                                        </p>
                                                        <p class="piclist_p2">
                                                            Jade Lady 小型油轮
                                                        </p>
                                                    </li>
                                                    <li class="pic">
                                                        <img src="images/02.jpg" alt="" />
                                                        <p class="piclist_p1">
                                                            塞班游艇婚礼
                                                        </p>
                                                        <p class="piclist_p2">
                                                            Jade Lady 小型油轮
                                                        </p>
                                                    </li>
                                                    <li class="pic">
                                                        <img src="images/02.jpg" alt="" />
                                                        <p class="piclist_p1">
                                                            塞班游艇婚礼
                                                        </p>
                                                        <p class="piclist_p2">
                                                            Jade Lady 小型油轮
                                                        </p>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="clearboth">
                                            </div>
                                            <span class="btn_l" id="btn_l2"></span><span class="btn_r" id="btn_r2"></span>
                                        </div>

                                        <script>
											<!--//--><![CDATA[//><!--
											var scrollPic_03 = new ScrollPic();
											scrollPic_03.scrollContId   = "tag_scroll2"; //内容容器ID
											scrollPic_03.arrLeftId      = "btn_l2";//左箭头ID
											scrollPic_03.arrRightId     = "btn_r2"; //右箭头ID
											
											scrollPic_03.frameWidth     = 700;//显示框宽度
											scrollPic_03.pageWidth      = 175; //翻页宽度
											
											scrollPic_03.speed          = 10; //移动速度(单位毫秒，越小越快)
											scrollPic_03.space          = 10; //每次移动像素(单位px，越大越快)
											scrollPic_03.autoPlay       = true; //自动播放
											scrollPic_03.autoPlayTime   = 3; //自动播放间隔时间(秒)
											
											scrollPic_03.initialize(); //初始化
																		
													//--><!]]>
                                        </script>

                                    </div>
                                    <div class="tagContent" id="tagContent3">
                                        <div class="tag_scroll clearfix">
                                            <div class="tag_scroll_inner" id="tag_scroll3">
                                                <ul>
                                                    <li class="pic">
                                                        <img src="images/02.jpg" alt="" />
                                                        <p class="piclist_p1">
                                                            塞班游艇婚礼
                                                        </p>
                                                        <p class="piclist_p2">
                                                            Jade Lady 小型油轮
                                                        </p>
                                                    </li>
                                                    <li class="pic">
                                                        <img src="images/02.jpg" alt="" />
                                                        <p class="piclist_p1">
                                                            塞班游艇婚礼
                                                        </p>
                                                        <p class="piclist_p2">
                                                            Jade Lady 小型油轮
                                                        </p>
                                                    </li>
                                                    <li class="pic">
                                                        <img src="images/02.jpg" alt="" />
                                                        <p class="piclist_p1">
                                                            塞班游艇婚礼
                                                        </p>
                                                        <p class="piclist_p2">
                                                            Jade Lady 小型油轮
                                                        </p>
                                                    </li>
                                                    <li class="pic">
                                                        <img src="images/02.jpg" alt="" />
                                                        <p class="piclist_p1">
                                                            塞班游艇婚礼
                                                        </p>
                                                        <p class="piclist_p2">
                                                            Jade Lady 小型油轮
                                                        </p>
                                                    </li>
                                                    <li class="pic">
                                                        <img src="images/02.jpg" alt="" />
                                                        <p class="piclist_p1">
                                                            塞班游艇婚礼
                                                        </p>
                                                        <p class="piclist_p2">
                                                            Jade Lady 小型油轮
                                                        </p>
                                                    </li>
                                                    <li class="pic">
                                                        <img src="images/02.jpg" alt="" />
                                                        <p class="piclist_p1">
                                                            塞班游艇婚礼
                                                        </p>
                                                        <p class="piclist_p2">
                                                            Jade Lady 小型油轮
                                                        </p>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="clearboth">
                                            </div>
                                            <span class="btn_l" id="btn_l3"></span><span class="btn_r" id="btn_r3"></span>
                                        </div>

                                        <script>
											<!--//--><![CDATA[//><!--
											var scrollPic_03 = new ScrollPic();
											scrollPic_03.scrollContId   = "tag_scroll3"; //内容容器ID
											scrollPic_03.arrLeftId      = "btn_l3";//左箭头ID
											scrollPic_03.arrRightId     = "btn_r3"; //右箭头ID
											
											scrollPic_03.frameWidth     = 700;//显示框宽度
											scrollPic_03.pageWidth      = 175; //翻页宽度
											
											scrollPic_03.speed          = 10; //移动速度(单位毫秒，越小越快)
											scrollPic_03.space          = 10; //每次移动像素(单位px，越大越快)
											scrollPic_03.autoPlay       = true; //自动播放
											scrollPic_03.autoPlayTime   = 3; //自动播放间隔时间(秒)
											
											scrollPic_03.initialize(); //初始化
																		
													//--><!]]>
                                        </script>

                                    </div>
                                    <div class="tagContent" id="tagContent4">
                                        <div class="tag_scroll clearfix">
                                            <div class="tag_scroll_inner" id="tag_scroll4">
                                                <ul>
                                                    <li class="pic">
                                                        <img src="images/02.jpg" alt="" />
                                                        <p class="piclist_p1">
                                                            塞班游艇婚礼
                                                        </p>
                                                        <p class="piclist_p2">
                                                            Jade Lady 小型油轮
                                                        </p>
                                                    </li>
                                                    <li class="pic">
                                                        <img src="images/02.jpg" alt="" />
                                                        <p class="piclist_p1">
                                                            塞班游艇婚礼
                                                        </p>
                                                        <p class="piclist_p2">
                                                            Jade Lady 小型油轮
                                                        </p>
                                                    </li>
                                                    <li class="pic">
                                                        <img src="images/02.jpg" alt="" />
                                                        <p class="piclist_p1">
                                                            塞班游艇婚礼
                                                        </p>
                                                        <p class="piclist_p2">
                                                            Jade Lady 小型油轮
                                                        </p>
                                                    </li>
                                                    <li class="pic">
                                                        <img src="images/02.jpg" alt="" />
                                                        <p class="piclist_p1">
                                                            塞班游艇婚礼
                                                        </p>
                                                        <p class="piclist_p2">
                                                            Jade Lady 小型油轮
                                                        </p>
                                                    </li>
                                                    <li class="pic">
                                                        <img src="images/02.jpg" alt="" />
                                                        <p class="piclist_p1">
                                                            塞班游艇婚礼
                                                        </p>
                                                        <p class="piclist_p2">
                                                            Jade Lady 小型油轮
                                                        </p>
                                                    </li>
                                                    <li class="pic">
                                                        <img src="images/02.jpg" alt="" />
                                                        <p class="piclist_p1">
                                                            塞班游艇婚礼
                                                        </p>
                                                        <p class="piclist_p2">
                                                            Jade Lady 小型油轮
                                                        </p>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="clearboth">
                                            </div>
                                            <span class="btn_l" id="btn_l4"></span><span class="btn_r" id="btn_r4"></span>
                                        </div>

                                        <script>
											<!--//--><![CDATA[//><!--
											var scrollPic_03 = new ScrollPic();
											scrollPic_03.scrollContId   = "tag_scroll4"; //内容容器ID
											scrollPic_03.arrLeftId      = "btn_l4";//左箭头ID
											scrollPic_03.arrRightId     = "btn_r4"; //右箭头ID
											
											scrollPic_03.frameWidth     = 700;//显示框宽度
											scrollPic_03.pageWidth      = 175; //翻页宽度
											
											scrollPic_03.speed          = 10; //移动速度(单位毫秒，越小越快)
											scrollPic_03.space          = 10; //每次移动像素(单位px，越大越快)
											scrollPic_03.autoPlay       = true; //自动播放
											scrollPic_03.autoPlayTime   = 3; //自动播放间隔时间(秒)
											
											scrollPic_03.initialize(); //初始化
																		
													//--><!]]>
                                        </script>

                                    </div>
                                    <div class="tagContent" id="tagContent5">
                                        <div class="tag_scroll clearfix">
                                            <div class="tag_scroll_inner" id="tag_scroll5">
                                                <ul>
                                                    <li class="pic">
                                                        <img src="images/02.jpg" alt="" />
                                                        <p class="piclist_p1">
                                                            塞班游艇婚礼
                                                        </p>
                                                        <p class="piclist_p2">
                                                            Jade Lady 小型油轮
                                                        </p>
                                                    </li>
                                                    <li class="pic">
                                                        <img src="images/02.jpg" alt="" />
                                                        <p class="piclist_p1">
                                                            塞班游艇婚礼
                                                        </p>
                                                        <p class="piclist_p2">
                                                            Jade Lady 小型油轮
                                                        </p>
                                                    </li>
                                                    <li class="pic">
                                                        <img src="images/02.jpg" alt="" />
                                                        <p class="piclist_p1">
                                                            塞班游艇婚礼
                                                        </p>
                                                        <p class="piclist_p2">
                                                            Jade Lady 小型油轮
                                                        </p>
                                                    </li>
                                                    <li class="pic">
                                                        <img src="images/02.jpg" alt="" />
                                                        <p class="piclist_p1">
                                                            塞班游艇婚礼
                                                        </p>
                                                        <p class="piclist_p2">
                                                            Jade Lady 小型油轮
                                                        </p>
                                                    </li>
                                                    <li class="pic">
                                                        <img src="images/02.jpg" alt="" />
                                                        <p class="piclist_p1">
                                                            塞班游艇婚礼
                                                        </p>
                                                        <p class="piclist_p2">
                                                            Jade Lady 小型油轮
                                                        </p>
                                                    </li>
                                                    <li class="pic">
                                                        <img src="images/02.jpg" alt="" />
                                                        <p class="piclist_p1">
                                                            塞班游艇婚礼
                                                        </p>
                                                        <p class="piclist_p2">
                                                            Jade Lady 小型油轮
                                                        </p>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="clearboth">
                                            </div>
                                            <span class="btn_l" id="btn_l5"></span><span class="btn_r" id="btn_r5"></span>
                                        </div>

                                        <script>
											<!--//--><![CDATA[//><!--
											var scrollPic_03 = new ScrollPic();
											scrollPic_03.scrollContId   = "tag_scroll5"; //内容容器ID
											scrollPic_03.arrLeftId      = "btn_l5";//左箭头ID
											scrollPic_03.arrRightId     = "btn_r5"; //右箭头ID
											
											scrollPic_03.frameWidth     = 700;//显示框宽度
											scrollPic_03.pageWidth      = 175; //翻页宽度
											
											scrollPic_03.speed          = 10; //移动速度(单位毫秒，越小越快)
											scrollPic_03.space          = 10; //每次移动像素(单位px，越大越快)
											scrollPic_03.autoPlay       = true; //自动播放
											scrollPic_03.autoPlayTime   = 3; //自动播放间隔时间(秒)
											
											scrollPic_03.initialize(); //初始化
																		
													//--><!]]>
                                        </script>

                                    </div>
                                </div>
                                <div class="tag_rm middle_right">
                                </div>
                            </div>
                            <div class="clear">
                            </div>
                            <div class="tag_con_bottom">
                                <div class="bottom_left tag_l">
                                </div>
                                <div class="bottom_right tag_r">
                                </div>
                            </div>
                            <div class="clear">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="list_con1">
                    <div class="jq_con">
                        <div class="left_info">
                            <h1>东南亚地区</h1>
                            <div class="xdq">
                                <a href="" class="w_a">济州岛</a>&nbsp;|&nbsp; <a href="" class="w_a">冲绳</a>
                            </div>
                            <p class="jj_p">
                                这家DUSIT酒店属于豪华5*国际酒店的级别了，低调奢华。酒店跟悦春一个区域，同属于LAGUNA酒店区域。
                            </p>
                            <table width="100%" class="price_table" align="left" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td>
                                        酒店旺季价格
                                    </td>
                                    <td align="right">
                                        ￥3000元起
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        酒店旺季价格
                                    </td>
                                    <td align="right">
                                        ￥3000元起
                                    </td>
                                </tr>
                            </table>
                            <div class="area_scroll clearfix">
                                <div class="area_scroll_inner" id="area_scroll1">
                                    <ul>
                                        <li class="pic">
                                        	<a href="javascript:void(0)" onclick="document.getElementById('right_img1').src='images/02.jpg'; return false;">
                                            	<img src="images/02.jpg" alt="" />
                                            </a>
                                        </li>
                                       <li class="pic">
                                        	<a href="javascript:void(0)" onclick="document.getElementById('right_img1').src='images/01.jpg'; return false;">
                                            	<img src="images/01.jpg" alt="" />
                                            </a>
                                        </li>
                                        <li class="pic">
                                        	<a href="javascript:void(0)" onclick="document.getElementById('right_img1').src='images/02.jpg'; return false;">
                                            	<img src="images/02.jpg" alt="" />
                                            </a>
                                        </li>
                                        <li class="pic">
                                        	<a href="javascript:void(0)" onclick="document.getElementById('right_img1').src='images/01.jpg'; return false;">
                                            	<img src="images/01.jpg" alt="" />
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="clearboth">
                                </div>
                                <span class="btn_l" id="area_btn_l1"></span>
                                <span class="btn_r" id="area_btn_r1"></span>
                            </div>

                            <script>
											<!--//--><![CDATA[//><!--
											var scrollPic_03 = new ScrollPic();
											scrollPic_03.scrollContId   = "area_scroll1"; //内容容器ID
											scrollPic_03.arrLeftId      = "area_btn_l1";//左箭头ID
											scrollPic_03.arrRightId     = "area_btn_r1"; //右箭头ID
											
											scrollPic_03.frameWidth     = 261;//显示框宽度
											scrollPic_03.pageWidth      = 87; //翻页宽度
											
											scrollPic_03.speed          = 10; //移动速度(单位毫秒，越小越快)
											scrollPic_03.space          = 10; //每次移动像素(单位px，越大越快)
											scrollPic_03.autoPlay       = false; //自动播放
											scrollPic_03.autoPlayTime   = 3; //自动播放间隔时间(秒)
											
											scrollPic_03.initialize(); //初始化
																		
													//--><!]]>
                            </script>

                        </div>
                        <div class="right_img">
                            <img src="images/02.jpg" id="right_img1"/>
                            <p>
                                普吉岛Phuket杜斯特塔尼拉沽那</p>
                        </div>
                    </div>
                    <div class="jq_con">
                        <div class="left_info">
                            <h1>东南亚地区</h1>
                            <div class="xdq">
                                <a href="" class="w_a">济州岛</a>&nbsp;|&nbsp; <a href="" class="w_a">冲绳</a>
                            </div>
                            <p class="jj_p">
                                这家DUSIT酒店属于豪华5*国际酒店的级别了，低调奢华。酒店跟悦春一个区域，同属于LAGUNA酒店区域。
                            </p>
                            <table width="100%" class="price_table" align="left" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td>
                                        酒店旺季价格
                                    </td>
                                    <td align="right">
                                        ￥3000元起
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        酒店旺季价格
                                    </td>
                                    <td align="right">
                                        ￥3000元起
                                    </td>
                                </tr>
                            </table>
                            <div class="area_scroll clearfix">
                                <div class="area_scroll_inner" id="area_scroll2">
                                    <ul>
                                         <li class="pic">
                                        	<a href="javascript:void(0)" onclick="document.getElementById('right_img2').src='images/02.jpg'; return false;">
                                            	<img src="images/02.jpg" alt="" />
                                            </a>
                                        </li>
                                       <li class="pic">
                                        	<a href="javascript:void(0)" onclick="document.getElementById('right_img2').src='images/01.jpg'; return false;">
                                            	<img src="images/01.jpg" alt="" />
                                            </a>
                                        </li>
                                        <li class="pic">
                                        	<a href="javascript:void(0)" onclick="document.getElementById('right_img2').src='images/02.jpg'; return false;">
                                            	<img src="images/02.jpg" alt="" />
                                            </a>
                                        </li>
                                        <li class="pic">
                                        	<a href="javascript:void(0)" onclick="document.getElementById('right_img2').src='images/01.jpg'; return false;">
                                            	<img src="images/01.jpg" alt="" />
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="clearboth">
                                </div>
                                <span class="btn_l" id="area_btn_l2"></span>
                                <span class="btn_r" id="area_btn_r2"></span>
                            </div>

                            <script>
											<!--//--><![CDATA[//><!--
											var scrollPic_03 = new ScrollPic();
											scrollPic_03.scrollContId   = "area_scroll2"; //内容容器ID
											scrollPic_03.arrLeftId      = "area_btn_l2";//左箭头ID
											scrollPic_03.arrRightId     = "area_btn_r2"; //右箭头ID
											
											scrollPic_03.frameWidth     = 261;//显示框宽度
											scrollPic_03.pageWidth      = 87; //翻页宽度
											
											scrollPic_03.speed          = 10; //移动速度(单位毫秒，越小越快)
											scrollPic_03.space          = 10; //每次移动像素(单位px，越大越快)
											scrollPic_03.autoPlay       = false; //自动播放
											scrollPic_03.autoPlayTime   = 3; //自动播放间隔时间(秒)
											
											scrollPic_03.initialize(); //初始化
																		
													//--><!]]>
                            </script>

                        </div>
                        <div class="right_img">
                            <img src="images/02.jpg" id="right_img2"/>
                            <p>
                                普吉岛Phuket杜斯特塔尼拉沽那</p>
                        </div>
                    </div>
                    <div class="jq_con">
                        <div class="left_info">
                            <h1>东南亚地区</h1>
                            <div class="xdq">
                                <a href="" class="w_a">济州岛</a>&nbsp;|&nbsp; <a href="" class="w_a">冲绳</a>
                            </div>
                            <p class="jj_p">
                                这家DUSIT酒店属于豪华5*国际酒店的级别了，低调奢华。酒店跟悦春一个区域，同属于LAGUNA酒店区域。
                            </p>
                            <table width="100%" class="price_table" align="left" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td>
                                        酒店旺季价格
                                    </td>
                                    <td align="right">
                                        ￥3000元起
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        酒店旺季价格
                                    </td>
                                    <td align="right">
                                        ￥3000元起
                                    </td>
                                </tr>
                            </table>
                            <div class="area_scroll clearfix">
                                <div class="area_scroll_inner" id="area_scroll3">
                                    <ul>
                                        <li class="pic">
                                        	<a href="javascript:void(0)" onclick="document.getElementById('right_img3').src='images/02.jpg'; return false;">
                                            	<img src="images/02.jpg" alt="" />
                                            </a>
                                        </li>
                                       <li class="pic">
                                        	<a href="javascript:void(0)" onclick="document.getElementById('right_img3').src='images/01.jpg'; return false;">
                                            	<img src="images/01.jpg" alt="" />
                                            </a>
                                        </li>
                                        <li class="pic">
                                        	<a href="javascript:void(0)" onclick="document.getElementById('right_img3').src='images/02.jpg'; return false;">
                                            	<img src="images/02.jpg" alt="" />
                                            </a>
                                        </li>
                                        <li class="pic">
                                        	<a href="javascript:void(0)" onclick="document.getElementById('right_img3').src='images/01.jpg'; return false;">
                                            	<img src="images/01.jpg" alt="" />
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="clearboth">
                                </div>
                                <span class="btn_l" id="area_btn_l3"></span>
                                <span class="btn_r" id="area_btn_r3"></span>
                            </div>

                            <script>
											<!--//--><![CDATA[//><!--
											var scrollPic_03 = new ScrollPic();
											scrollPic_03.scrollContId   = "area_scroll3"; //内容容器ID
											scrollPic_03.arrLeftId      = "area_btn_l3";//左箭头ID
											scrollPic_03.arrRightId     = "area_btn_r3"; //右箭头ID
											
											scrollPic_03.frameWidth     = 261;//显示框宽度
											scrollPic_03.pageWidth      = 87; //翻页宽度
											
											scrollPic_03.speed          = 10; //移动速度(单位毫秒，越小越快)
											scrollPic_03.space          = 10; //每次移动像素(单位px，越大越快)
											scrollPic_03.autoPlay       = false; //自动播放
											scrollPic_03.autoPlayTime   = 3; //自动播放间隔时间(秒)
											
											scrollPic_03.initialize(); //初始化
																		
													//--><!]]>
                            </script>

                        </div>
                        <div class="right_img">
                            <img src="images/02.jpg" id="right_img3"/>
                            <p>
                                普吉岛Phuket杜斯特塔尼拉沽那</p>
                        </div>
                    </div>
                    <div class="jq_con">
                        <div class="left_info">
                            <h1>东南亚地区</h1>
                            <div class="xdq">
                                <a href="" class="w_a">济州岛</a>&nbsp;|&nbsp; <a href="" class="w_a">冲绳</a>
                            </div>
                            <p class="jj_p">
                                这家DUSIT酒店属于豪华5*国际酒店的级别了，低调奢华。酒店跟悦春一个区域，同属于LAGUNA酒店区域。
                            </p>
                            <table width="100%" class="price_table" align="left" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td>
                                        酒店旺季价格
                                    </td>
                                    <td align="right">
                                        ￥3000元起
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        酒店旺季价格
                                    </td>
                                    <td align="right">
                                        ￥3000元起
                                    </td>
                                </tr>
                            </table>
                            <div class="area_scroll clearfix">
                                <div class="area_scroll_inner" id="area_scroll4">
                                    <ul>
                                         <li class="pic">
                                        	<a href="javascript:void(0)" onclick="document.getElementById('right_img4').src='images/02.jpg'; return false;">
                                            	<img src="images/02.jpg" alt="" />
                                            </a>
                                        </li>
                                       <li class="pic">
                                        	<a href="javascript:void(0)" onclick="document.getElementById('right_img4').src='images/01.jpg'; return false;">
                                            	<img src="images/01.jpg" alt="" />
                                            </a>
                                        </li>
                                        <li class="pic">
                                        	<a href="javascript:void(0)" onclick="document.getElementById('right_img4').src='images/02.jpg'; return false;">
                                            	<img src="images/02.jpg" alt="" />
                                            </a>
                                        </li>
                                        <li class="pic">
                                        	<a href="javascript:void(0)" onclick="document.getElementById('right_img4').src='images/01.jpg'; return false;">
                                            	<img src="images/01.jpg" alt="" />
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="clearboth">
                                </div>
                                <span class="btn_l" id="area_btn_l4"></span>
                                <span class="btn_r" id="area_btn_r4"></span>
                            </div>

                            <script>
											<!--//--><![CDATA[//><!--
											var scrollPic_03 = new ScrollPic();
											scrollPic_03.scrollContId   = "area_scroll4"; //内容容器ID
											scrollPic_03.arrLeftId      = "area_btn_l4";//左箭头ID
											scrollPic_03.arrRightId     = "area_btn_r4"; //右箭头ID
											
											scrollPic_03.frameWidth     = 261;//显示框宽度
											scrollPic_03.pageWidth      = 87; //翻页宽度
											
											scrollPic_03.speed          = 10; //移动速度(单位毫秒，越小越快)
											scrollPic_03.space          = 10; //每次移动像素(单位px，越大越快)
											scrollPic_03.autoPlay       = false; //自动播放
											scrollPic_03.autoPlayTime   = 3; //自动播放间隔时间(秒)
											
											scrollPic_03.initialize(); //初始化
																		
													//--><!]]>
                            </script>

                        </div>
                        <div class="right_img">
                            <img src="images/02.jpg" id="right_img4"/>
                            <p>
                                普吉岛Phuket杜斯特塔尼拉沽那</p>
                        </div>
                    </div>
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

<jsp:include page="bottom.jsp"></jsp:include>
    <!--侧边广告-->
    <div id="buoy" style="position: fixed; top: 150px;">
       <jsp:include page="side1.jsp"></jsp:include>
    </div>
    <!--侧边广告 end-->
</body>
</html>