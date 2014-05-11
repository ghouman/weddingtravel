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
     <script src="js/jquery.min.js"></script>
<script src="js/jquery.quicksand.js"></script>
<script src="js/jquery.easing.js"></script>
<script src="js/lanrenzhijia.js"></script>
<script src="js/jquery.prettyPhoto.js"></script>
<link href="css/prettyPhoto.css" rel="stylesheet" type="text/css" />
	<title>婚礼案例</title>

    <script type="text/javascript">
		
function selectTag(showContent,selfObj){
	// 操作标签
	var tag = document.getElementById("tags3").getElementsByTagName("li");
	var taglength = tag.length;
	for(var i=0; i<taglength; i++){
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
            <div class="titles2 syyp_title yahei">
                <h2>摄影样片
                </h2>
                <h3>
                    让您的婚礼与海岛的风景完美结合，在您的婚礼中与众不同</h3>
            </div>
            <div class="left_con">
                <jsp:include page="left.jsp"></jsp:include>
            </div>
            <div class="main_con2">
            	 <div class="current_page">
                	<a href="index.jsp" class="cur_a">婚礼套餐</a>&nbsp;>>>&nbsp;
                    <a href="list1.jsp" class="cur_a">东南亚地区</a>&nbsp;>>>&nbsp;
                    巴厘岛
                </div>
            	<div class="list_con4">
                	<div class="list_con7">
                    	<img src="images/bule_img.jpg" class="picture"/>
                        <h2 class="package_title">巴厘岛婚纱摄影套餐</h2>
                        <div class="package_info">
                            <p>新&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;人：何刚&何刚</p>
                            <p>时&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;间：2013/10/19</p>
                            <p>套餐项目：</p>
                            <p>摄&nbsp;&nbsp;影&nbsp;&nbsp;师：</p>
                            <p>化&nbsp;&nbsp;妆&nbsp;&nbsp;品：</p>
                        </div>
                    </div>
                    <div class="list_con7">
                         <div class="message_title">照片缩影</div>
                         <table width="100%" border="0" cellspacing="1" cellpadding="0" class="glimpse_table">
                          <tr>
                            <td>
                            	<a class="image-zoom" href="images/big/b1.jpg" rel="prettyPhoto[gallery]" title="">
                                <img src="images/thumbs/1.jpg"/>
                                </a>
                            </td>
                            <td>
                            	<a class="image-zoom" href="images/big/b2.jpg" rel="prettyPhoto[gallery]" title="">
                                <img src="images/thumbs/2.jpg"/>
                                </a>
                            </td>
                            <td>
                            	<a class="image-zoom" href="images/big/b3.jpg" rel="prettyPhoto[gallery]" title="">
                                <img src="images/thumbs/3.jpg"/>
                                </a>
                            </td>
                            <td>
                            	<a class="image-zoom" href="images/big/b4.jpg" rel="prettyPhoto[gallery]" title="">
                                <img src="images/thumbs/4.jpg"/>
                                </a>
                            </td>
                            <td>
                            	<a class="image-zoom" href="images/big/b5.jpg" rel="prettyPhoto[gallery]" title="">
                                <img src="images/thumbs/5.jpg"/>
                                </a>
                            </td>
                            <td>
                            	<a class="image-zoom" href="images/big/b6.jpg" rel="prettyPhoto[gallery]" title="">
                                <img src="images/thumbs/6.jpg"/>
                                </a>
                            </td>
                            <td>
                            	<a class="image-zoom" href="images/big/b7.jpg" rel="prettyPhoto[gallery]" title="">
                                <img src="images/thumbs/7.jpg"/>
                                </a>
                            </td>
                            <td>
                            	<a class="image-zoom" href="images/big/b8.jpg" rel="prettyPhoto[gallery]" title="">
                                <img src="images/thumbs/8.jpg"/>
                                </a>
                            </td>
                          </tr>
                          <td>
                            	<a class="image-zoom" href="images/big/b9.jpg" rel="prettyPhoto[gallery]" title="">
                                <img src="images/thumbs/9.jpg"/>
                                </a>
                            </td>
                            <td>
                            	<a class="image-zoom" href="images/big/b10.jpg" rel="prettyPhoto[gallery]" title="">
                                <img src="images/thumbs/10.jpg"/>
                                </a>
                            </td>
                            <td>
                            	<a class="image-zoom" href="images/big/b11.jpg" rel="prettyPhoto[gallery]" title="">
                                <img src="images/thumbs/11.jpg"/>
                                </a>
                            </td>
                            <td>
                            	<a class="image-zoom" href="images/big/b12.jpg" rel="prettyPhoto[gallery]" title="">
                                <img src="images/thumbs/12.jpg"/>
                                </a>
                            </td>
                            <td>
                            	<a class="image-zoom" href="images/big/b1.jpg" rel="prettyPhoto[gallery]" title="">
                                <img src="images/thumbs/1.jpg"/>
                                </a>
                            </td>
                            <td>
                            	<a class="image-zoom" href="images/big/b2.jpg" rel="prettyPhoto[gallery]" title="">
                                <img src="images/thumbs/2.jpg"/>
                                </a>
                            </td>
                            <td>
                            	<a class="image-zoom" href="images/big/b3.jpg" rel="prettyPhoto[gallery]" title="">
                                <img src="images/thumbs/3.jpg"/>
                                </a>
                            </td>
                            <td>
                            	<a class="image-zoom" href="images/big/b4.jpg" rel="prettyPhoto[gallery]" title="">
                                <img src="images/thumbs/4.jpg"/>
                                </a>
                            </td>
                          </tr>
                        </table>

                    </div>
                    <div class="list_con6">
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