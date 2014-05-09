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
    <script src="js/html5.js" type="text/javascript"></script>
	<title>婚礼套餐区</title>

    <script type="text/javascript">
		
function selectTag(showContent,selfObj){
	// 操作标签
	var tag = document.getElementById("tags3").getElementsByTagName("li");
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
                <jsp:include page="left.jsp"></jsp:include>
            </div>
            <div class="main_con2">
                <div class="current_page">
                	<a href="index.html" class="cur_a">婚礼套餐</a>&nbsp;>>>&nbsp;
                    <a href="list1.html" class="cur_a">东南亚地区</a>&nbsp;>>>&nbsp;
                    <a href="list2.jsp" class="cur_a">巴厘岛</a>&nbsp;>>>&nbsp;
                    巴厘岛婚礼套餐
                </div>
                <div class="list_con4">
                	<div class="titles4">巴厘岛婚礼套装</div>
                    <div class="jq_con">
                        <div class="left_info">
                        	<div class="info_int">
                            	<p class="p1">套餐价格：<span>￥</span><font class="f1">15000 - 18880</font></p>
                                <p class="p2">起/人</p>
                            	<p>支付方式：
                                	<a href="#" class="bank_a">支付宝</a>&nbsp;&nbsp;
                                    <a href="#" class="bank_a">工商银行</a>&nbsp;&nbsp;
                                </p>
                           		<p>套餐分系：
                                	<a href="#" class="package_a">套餐旺季</a>&nbsp;&nbsp;
                                    <a href="#" class="package_a">套餐淡季</a>&nbsp;&nbsp;
                                </p>
                                <p class="p3">
                                	<input name="" value="现在咨询我们" type="button" class="btn1" />
                                    <input name="" value="加入订单预算" type="button" class="btn1" style="margin-left:40px;" />
                                </p>
                            </div>
                            <div class="area_scroll2 clearfix">
                            	<p>最幸福的一天现在开始..........</p>
                                <div class="area_scroll2_inner" id="area_scroll21">
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
                                <span class="btn_l" id="area_btn_l21"></span>
                                <span class="btn_r" id="area_btn_r21"></span>
                            </div>

                            <script>
											<!--//--><![CDATA[//><!--
											var scrollPic_03 = new ScrollPic();
											scrollPic_03.scrollContId   = "area_scroll21"; //内容容器ID
											scrollPic_03.arrLeftId      = "area_btn_l21";//左箭头ID
											scrollPic_03.arrRightId     = "area_btn_r21"; //右箭头ID
											
											scrollPic_03.frameWidth     = 248;//显示框宽度
											scrollPic_03.pageWidth      = 62; //翻页宽度
											
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
                        </div>
                    </div>
                </div>
                <div class="list_con3">
                	<fieldset class="introduction_f">
                    	<legend>巴厘岛介绍</legend>
                        <div class="intro_con">
                        	<p>巴厘岛，行政上称为巴厘省，位于印度尼西亚，是著名的旅游胜地。省会设于岛上南部的丹帕沙，距印尼首都雅加达1000多公里，与爪哇岛之间仅有3.2公里宽海峡相隔，面积约5630平方公里，人口约315万。</p>
<p>巴厘岛是印尼唯一信奉印度教的地区。80%的人信奉印度教。通行印尼语和英语，普通话在景点及购物点一般也通行。
巴厘岛上大部分为山地，全岛山脉纵横，地势东高西低。岛上还有四五座完整的锥形火山峰，其中阿贡火山海拔3142米，是岛上的最高点。沙努尔、努沙-杜尔和库达等处的海滩，是岛上景色最美的海滨浴场，这里沙细滩阔、海水湛蓝清澈。每年来此游览的各国游客络绎不绝。 </p><p>由于巴厘岛万种风情，景物甚为绮丽。因此，它还享有多种别称，如“神明之岛”、“恶魔之岛”、“罗曼斯岛”、“绮丽之岛”、“天堂之岛”、“魔幻之岛”、“花之岛”等。</p>
                        </div>
                    </fieldset>
                </div>
                 <div class="clear"></div>
                <div class="album">
                	<div class="album_img">
                    	<img src="images/bule_img.jpg" id="album_img"/>
                    </div>
                    <div class="album_img1">
                    	<img src="images/01.jpg" onclick="document.getElementById('album_img').src='images/01.jpg';" id="album_img1"/>
                    </div>
                    <div class="album_img2">
                    	<img src="images/02.jpg" onclick="document.getElementById('album_img').src='images/02.jpg';"  id="album_img2"/>
                    </div>
                </div>
                <div class="list_con5">
                	<div id="con2" class="list_con3">
                        <ul id="tags3">
                            <li class="selectTag">
                            	<a onclick="selectTag('pic_con0',this)" href="javascript:void(0)">详细介绍</a>
                            </li>
                            <li>
                            	<a onclick="selectTag('pic_con1',this)" href="javascript:void(0)">客片留影</a>
                            </li>
                            <li>
                            	<a onclick="selectTag('pic_con2',this)" href="javascript:void(0)">咨询套餐</a>
                            </li>
                        </ul>
                        <div id="pic_con">
                            <div class="pic_con selectTag list_con6" id="pic_con0">
                                  	<!-- 代码 开始 -->
                                    <div class="history_con">
                                    <div class="history">
                                          <ul>
                                             <li>
                                              <h3>产品信息</h3>
                                              <dl>
                                                <dt>
                                                	巴厘岛，行政上称为巴厘省，位于印度尼西亚，是著名的旅游胜地。省会设于岛上南部的丹帕沙，距印尼首都雅加达1000多公里，与爪哇岛之间仅有3.2公里宽海峡相隔，面积约5630平方公里，人口约315万。
                                        		</dt>
                                              </dl>
                                            </li>
                                    
                                           <li>
                                             <h3>酒店详细内容</h3>
                                              <dl>
                                                <dt>巴厘岛，行政上称为巴厘省，位于印度尼西亚，是著名的旅游胜地。省会设于岛上南部的丹帕沙，距印尼首都雅加达1000多公里，与爪哇岛之间仅有3.2公里宽海峡相隔，面积约5630平方公里，人口约315万。
                                        </dt>
                                              </dl>
                                            </li>
                                    
                                             <li>
                                              <h3>酒店****</h3>
                                              <dl>
                                                <dt>巴厘岛，行政上称为巴厘省，位于印度尼西亚，是著名的旅游胜地。省会设于岛上南部的丹帕沙，距印尼首都雅加达1000多公里，与爪哇岛之间仅有3.2公里宽海峡相隔，面积约5630平方公里，人口约315万。
                                        </dt>
                                              </dl>
                                            </li>
                                          </ul>
                                    </div>
                                    </div>
                                    <!-- 代码 结束 -->
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
                                </ul>
                                  <!--<div class="pages">
                            <a href="#" class="page_a page_a_select">1</a> <a href="#" class="page_a">2</a> <a
                                href="#" class="page_a">3</a> <a href="#" class="page_a">4</a> <a href="#" class="page_a">
                                    5</a>
                        </div>-->
                             </div>
                             <div class="pic_con list_con6" id="pic_con2">
                                <div class="message_title">在线留言</div>
                                <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="message_table yahei">
                                  <tr>
                                    <td width="50">名称：</td>
                                    <td width="250"><input name="" type="text" class="input mc"/></td>
                                    <td width="60">验证码：</td>
                                    <td>
                                    	<input name="" type="text" class="input code"/>&nbsp;<img src="images/code.jpg" />&nbsp;
                                   	 	<a href="#" class="b_a">看不清换一个</a>
                                    </td>
                                  </tr>
                                  <tr>
                                    <td colspan="4">评论：</td>
                                    
                                  </tr>
                                  <tr>
                                    <td colspan="4">
                                    	<textarea name="" cols="" rows="" class="textarea"></textarea>
                                    </td>
                                  </tr>
                                   <tr>
                                <td colspan="4" class="tool_td" align="center"><input name="" type="button" value="发   送" class="send_btn"/></td>
                             	</tr>
                                </table>
								<div class="message_title">客户留言</div>
                              		<div class="message_div">
                                    	<div class="question">何刚：询问下为什么我叫何刚？    2014/2/6 14：14</div>
                                        <div class="answer">客服：这个问题需要问你爸爸！</div>
                                    </div>
                                    <div class="message_div">
                                    	<div class="question">何刚：询问下为什么我叫何刚？    2014/2/6 14：14</div>
                                        <div class="answer">客服：这个问题需要问你爸爸！</div>
                                    </div>
                                    <div class="message_div">
                                    	<div class="question">何刚：询问下为什么我叫何刚？    2014/2/6 14：14</div>
                                        <div class="answer">客服：这个问题需要问你爸爸！</div>
                                    </div>
                             </div>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
            	<div class="list_con3">
                	<div class="service m_t20">
                    	<div class="titles5 service_ti heiti">
                        	<span>海上殿堂提供的其他服务</span>
                        </div>
                        <div class="service_con">
                        	<div class="s_info fl">
                            	<h2>婚纱摄影</h2>
                                <p>
                                	海上殿堂也配备专业的摄影师为需要拍海岛婚纱摄影的新人提供很多的服务选择
                                </p>
                                <div class="sys_con">
                                	<img src="images/dy01.jpg"/>
                                    <h3>摄影师</h3>
                                    何刚
                                </div>
                                <div class="sys_con">
                                	<img src="images/dy01.jpg"/>
                                    <h3>摄影师</h3>
                                    何刚
                                </div>
                            </div>
                            <div class="s_img fl">
                            	<img src="images/bule_img.jpg"/>
                            </div>
                            <div class="clear"></div>
                        </div>
                         <div class="service_con">
                            <div class="s_img fl">
                            	<img src="images/bule_img.jpg"/>
                            </div>
                            <div class="s_info fl">
                            	<h2>悦榕庄酒店</h2>
                                <p>
                                	巴厘岛的悦榕庄落成２００９年，仅仅开业９个月，位置选在巴厘岛最南端的Uluwatu７０米高的悬崖上。巴厘岛顶级酒店之一。新落成的酒店都有个共同优点：设计理念比较新，硬件设施好，给人耳目一新的感觉。缺点是：因为来晚了，所以地段一般，要想风景好些的，基本前不着村后不着店。比较适合娱乐界名人、政界人士，平时抛头露面得频率太高，以至于怕光，希望低调的隐蔽起来享受两人世界，不被外界打扰。

                                </p>
                            </div>
                            <div class="clear"></div>
                        </div>
                         <div class="service_con">
                        	<div class="s_info fl">
                            	<h2>巴厘岛游玩</h2>
                                <p>
                                	海上殿堂也配备专业的摄影师为需要拍海岛婚纱摄影的新人提供很多的服务选择。
                                </p>
                            </div>
                            <div class="s_img fl">
                            	<img src="images/bule_img.jpg"/>
                            </div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="careful m_t20">
                    	<div class="titles5 careful_ti heiti">
                        	<span>套餐注意事项</span>
                        </div>
                        <div class="careful_con">
                        	<h4>婚礼套餐的特别说明：</h4>
<p>1、以上报价均为预定婚礼场地价格，即婚礼价格。不包括酒店、旅行费用及旷世奇缘公司拍摄团队（摄影师，录像师）的拍摄费用及后期制作。以上价格包括了2-3小时的婚礼场地租用，婚礼仪式，现场布置（西式婚礼布置，以玫瑰花及鸡蛋花为主，玫瑰有白色，粉色，红色系列，鸡蛋花均是浅黄色，因花开的季节等原因，如要更换花的品种及色系，预定时须提前与旷世奇缘客服沟通）。婚礼还包括了婚礼服务团队，化妆造型，婚礼秘书（中文、英文、马来语），司机，专车服务。（婚礼当日免费租用，女士婚纱，男士礼服，头纱，手套，项链，耳环，皇冠等饰品。）、私人助理，牧师，花童2位伞童2位，及现场婚礼乐队。 
</p><p>2、行程中所列的项目，如果不使用视为自动放弃，不退还费用。 </p>
<br /><br />
<h4>海外婚礼常见问题Q&A：</h4>
<p>Q:什么是海外婚礼？</p>
<p>A:时尚流行的海外婚礼不再局限于在国内举办的传统中式婚宴，跨越到国外甜蜜梦想之地，感受异域风情，体验西式浪漫，教堂婚礼、城堡婚礼、海滩婚礼、草坪婚礼、花园婚礼，个性特色的婚礼等待着您。可以只有两位新人出发，或是携带亲朋好友出行，都可以。您只需要准备好护照和签证，其他服务我们可以一站式提供。
</p>
<p>Q：海外婚礼就是大家说的旅游结婚吗？</p>
<p>A:不是的，IDO99提供的海外婚礼服务是真正的婚礼服务，包括主持人、婚礼场地、花艺布置、摄影摄像……总之您在国内婚礼上能看到想到的，我们都可以在您希望的目的地给您办到，当然我们的婚礼形式以西式婚礼为主，教堂、花园、沙滩、古堡……任您选择。</p>



                        </div>
                    </div>
                    <div class="m_t20">
                    	<fieldset class="introduction_f">
                    	<legend>最近浏览记录</legend>
                        <div class="intro_con">
                        	<ul class="pictlist2">
                                    <li><div class="pic_div" onclick="location.href='list3.html'">
                                            <img src="images/01.jpg"/>
                                            
                                        </div>
                                    </li>
                                    <li><div class="pic_div" onclick="location.href='list3.html'">
                                            <img src="images/01.jpg"/>
                                        </div>
                                    </li>
                                    <li><div class="pic_div" onclick="location.href='list3.html'">
                                            <img src="images/01.jpg"/>
                                           
                                        </div>
                                    </li>
                                    <li><div class="pic_div" onclick="location.href='list3.html'">
                                            <img src="images/01.jpg"/>
                                            
                                        </div>
                                    </li>
                                    <li><div class="pic_div" onclick="location.href='list3.html'">
                                            <img src="images/01.jpg"/>
                                            
                                        </div>
                                    </li>
                                </ul>
                        </div>
                    </fieldset>
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