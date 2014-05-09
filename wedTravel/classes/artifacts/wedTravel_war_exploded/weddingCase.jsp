<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link media="all" href="css/css.css" type="text/css" rel="stylesheet" />
    <link href="css/side1.css" rel="stylesheet" />
    <script language="JavaScript" src="js/jquery.js"></script>
    <link media="all" href="css/scroll2.css" type="text/css" rel="stylesheet">
     <link rel="stylesheet" type="text/css" href="css/open.css">
    <script src="js/scroll2.js" type="text/javascript"></script>
    <script src="js/productlist_roll.js" type="text/javascript"></script>
    <script src="js/main.js" type="text/javascript"></script>
    <script src="js/html5.js" type="text/javascript"></script>
     <script type="text/javascript" src="js/popup-main.js"></script>
 
	<title>婚礼案例区</title>

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
$(document).ready(function() {
	 $("#popup_exit0").click(function () {
       	$("#shade0").hide();
        $("#popup0").hide();
     });
	  $("#send").click(function () {
       	$("#shade0").hide();
        $("#popup0").hide();
     });
});
	function show(type,num)
	{
		var answer;
		var question;
		if(type==1){
			answer="ans1"+num;
			question="ques1"+num;
		}
		else if(type==2){
			answer="ans2"+num;
			question="ques2"+num;
		}
		else if(type==3){
			answer="ans3"+num;
			question="ques3"+num;
		}
		$(".answer_info").hide();
		$("#"+answer).show();
		$(".question_info").find("img").attr("src","images/arrow_l.png");
		$("#"+question).find("img").attr("src","images/arrow_b.png");
	}
    </script>
</head>
<body>
    <jsp:include page="head.jsp"></jsp:include>
    <div class="w_m page_dz">
        <div class="index_con_div in_con_div">
            <div class="titles2 hlal_title yahei">
                <h2>婚礼案例
                </h2>
                <h3>
                    让您的婚礼与海岛的风景完美结合，在您的婚礼中与众不同</h3>
            </div>
            <div class="left_con">
                <jsp:include page="left.jsp"></jsp:include>
            </div>
            <div class="main_con2">
            	<div class="film_w">
                	<div class="titles6 yahei">
                    	<h2>最近婚礼视频影片</h2>
                        <span>
                        	<a href="#" class="b_a">东南亚地区</a>&nbsp;|&nbsp;
                        	<a href="#" class="b_a">亚洲地区</a>&nbsp;|&nbsp;
                            <a href="#" class="b_a">大西洋地区</a>&nbsp;|&nbsp;
                            <a href="#" class="b_a">地中海地区</a>&nbsp;
                        </span>
                    </div>
                	<div class="film_con blue_boder">
                    	<embed src="http://player.youku.com/player.php/sid/XNTYxODI1NjEy/v.swf" quality="high" width="100%" height="400" align="middle" allowScriptAccess="sameDomain" allowFullscreen="true" type="application/x-shockwave-flash"></embed>
                      </div>
                    <div class="film_2">
                        	<ul>
                            	<li onclick="location.href='weddingCase_video.jsp'">
                                	 <div></div>
                                	<img src="images/02.jpg"/>
                                </li>
                                <li onclick="location.href='weddingCase_video.jsp'">
                                    <div></div>
                                	<img src="images/02.jpg"/>
                                </li>
                                <li onclick="location.href='weddingCase_video.jsp'">
                                    <div></div>
                                	<img src="images/02.jpg"/>
                                </li>
                                <li onclick="location.href='weddingCase_video.jsp'">
                                    <div></div>
                                	<img src="images/02.jpg"/>
                                </li>
                            </ul>
                        </div>
                 </div>
                <div class="list_con2">        
                    <div class="titles6 yahei">
                    	<h2>最新婚纱套餐（基础套餐）</h2>
                        <span>
                        	<a href="#" class="b_a">东南亚地区</a>&nbsp;|&nbsp;
                        	<a href="#" class="b_a">亚洲地区</a>&nbsp;|&nbsp;
                            <a href="#" class="b_a">大西洋地区</a>&nbsp;|&nbsp;
                            <a href="#" class="b_a">地中海地区</a>&nbsp;
                        </span>
                    </div>
                    <ul class="pictlist4">
                                    <li>
                                    	<div class="pic_div yahei" onclick="location.href='weddingCase_pic.jsp'">
                                            <img src="images/02.jpg"/>
                                            <div>巴厘岛婚纱摄影套餐</div>
                                        </div>
                                    </li>
                                    <li>
                                    	<div class="pic_div yahei" onclick="location.href='weddingCase_pic.jsp'">
                                            <img src="images/02.jpg"/>
                                            <div>巴厘岛婚纱摄影套餐</div>
                                        </div>
                                    </li>
                                    <li>
                                    	<div class="pic_div yahei" onclick="location.href='weddingCase_pic.jsp'">
                                            <img src="images/02.jpg"/>
                                            <div>巴厘岛婚纱摄影套餐</div>
                                        </div>
                                    </li><li>
                                    	<div class="pic_div yahei" onclick="location.href='weddingCase_pic.jsp'">
                                            <img src="images/02.jpg"/>
                                            <div>巴厘岛婚纱摄影套餐</div>
                                        </div>
                                    </li><li>
                                    	<div class="pic_div yahei" onclick="location.href='weddingCase_pic.jsp'">
                                            <img src="images/02.jpg"/>
                                            <div>巴厘岛婚纱摄影套餐</div>
                                        </div>
                                    </li><li>
                                    	<div class="pic_div yahei" onclick="location.href='weddingCase_pic.jsp'">
                                            <img src="images/02.jpg"/>
                                            <div>巴厘岛婚纱摄影套餐</div>
                                        </div>
                                    </li><li>
                                    	<div class="pic_div yahei" onclick="location.href='weddingCase_pic.jsp'">
                                            <img src="images/02.jpg"/>
                                            <div>巴厘岛婚纱摄影套餐</div>
                                        </div>
                                    </li>
                                    <li>
                                    	<div class="pic_div yahei" onclick="location.href='weddingCase_pic.jsp'">
                                            <img src="images/02.jpg"/>
                                            <div>巴厘岛婚纱摄影套餐</div>
                                        </div>
                                    </li>
                                    <li>
                                    	<div class="pic_div yahei" onclick="location.href='weddingCase_pic.jsp'">
                                            <img src="images/02.jpg"/>
                                            <div>巴厘岛婚纱摄影套餐</div>
                                        </div>
                                    </li>
                                </ul>	
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
     <!--弹出框start-->
    <div id="shade0">
    </div>
    <div id="popup0" class="popup">
        <div class="center">
            <div class="content">
                <div id="popup_drag0" class="popup_drag">
                    <div class="title"></div>
                    <div class="popup_exit" id="popup_exit0" alt="关闭" title="关闭">
                    </div>
                </div>
                <div class="content1">
                    <div class="mainlist" id="mainlist">
                       <div class="order_form">
                       		<table width="100%" border="0" cellpadding="0" cellspacing="0" align="center">
                              <tr>
                                <th>新人姓名</th>
                                <td><input name="" type="text" class="input in_360"/>&nbsp;&nbsp;(必填)</td>
                              </tr>
                              <tr>
                                <th>手机号码</th>
                                <td><input name="" type="text" class="input in_360"/>&nbsp;&nbsp;(必填)</td>
                              </tr>
                              <tr>
                                <th>腾讯QQ</th>
                                <td><input name="" type="text" class="input in_360"/>&nbsp;&nbsp;(必填)</td>
                              </tr>
                              <tr>
                                <th>邮箱</th>
                                <td><input name="" type="text" class="input in_360"/>&nbsp;&nbsp;(必填)</td>
                              </tr>
                              <tr>
                                <th valign="top">咨询内容</th>
                                <td>
                                	<textarea name="" cols="" rows="" class="textarea in_360 area_200"></textarea>
                                </td>
                              </tr>
                               <tr>
                                <td colspan="2" class="tool_td"><input name="" type="button" id="send" value="发   送" class="send_btn" onclick="show_popup(0);"/></td>
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
    <!--弹出框end-->
</body>
</html>