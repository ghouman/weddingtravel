<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link media="all" href="css/css.css" type="text/css" rel="stylesheet" />
    <link href="css/side1.css" rel="stylesheet" />
    <script language="JavaScript" src="js/jquery.js"></script>
    <script src="js/main.js" type="text/javascript"></script>
    <script src="js/html5.js" type="text/javascript"></script>
 
	<title>婚礼案例-照片</title>

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
            	<div class="list_con2">
                	<div id="con2">
                        <ul id="tags2">
                            <li class="selectTag">
                            	<a onclick="selectTag('pic_con0',this)" href="javascript:void(0)">婚纱摄影样片</a>
                            </li>
                            <li>
                            	<a onclick="selectTag('pic_con1',this)" href="javascript:void(0)">婚纱摄影客片</a>
                            </li>
                        </ul>
                        <div id="pic_con">
                            <div class="pic_con selectTag" id="pic_con0">
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
                             <div class="pic_con" id="pic_con1">
                                  <ul class="pictlist4">
                                    <li>
                                    	<div class="pic_div yahei" onclick="location.href='weddingCase_pic.jsp'">
                                            <img src="images/01.jpg"/>
                                            <div>巴厘岛婚纱摄影套餐</div>
                                        </div>
                                    </li>
                                    <li>
                                    	<div class="pic_div yahei" onclick="location.href='weddingCase_pic.jsp'">
                                            <img src="images/01.jpg"/>
                                            <div>巴厘岛婚纱摄影套餐</div>
                                        </div>
                                    </li>
                                    <li>
                                    	<div class="pic_div yahei" onclick="location.href='weddingCase_pic.jsp'">
                                            <img src="images/01.jpg"/>
                                            <div>巴厘岛婚纱摄影套餐</div>
                                        </div>
                                    </li><li>
                                    	<div class="pic_div yahei" onclick="location.href='weddingCase_pic.jsp'">
                                            <img src="images/01.jpg"/>
                                            <div>巴厘岛婚纱摄影套餐</div>
                                        </div>
                                    </li><li>
                                    	<div class="pic_div yahei" onclick="location.href='weddingCase_pic.jsp'">
                                            <img src="images/01.jpg"/>
                                            <div>巴厘岛婚纱摄影套餐</div>
                                        </div>
                                    </li><li>
                                    	<div class="pic_div yahei" onclick="location.href='weddingCase_pic.jsp'">
                                            <img src="images/01.jpg"/>
                                            <div>巴厘岛婚纱摄影套餐</div>
                                        </div>
                                    </li><li>
                                    	<div class="pic_div yahei" onclick="location.href='weddingCase_pic.jsp'">
                                            <img src="images/01.jpg"/>
                                            <div>巴厘岛婚纱摄影套餐</div>
                                        </div>
                                    </li>
                                    <li>
                                    	<div class="pic_div yahei" onclick="location.href='weddingCase_pic.jsp'">
                                            <img src="images/01.jpg"/>
                                            <div>巴厘岛婚纱摄影套餐</div>
                                        </div>
                                    </li>
                                    <li>
                                    	<div class="pic_div yahei" onclick="location.href='weddingCase_pic.jsp'">
                                            <img src="images/01.jpg"/>
                                            <div>巴厘岛婚纱摄影套餐</div>
                                        </div>
                                    </li>
                                </ul>
                             </div>
                        </div>
                    </div>
                    <div class="clear"></div>
                    
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