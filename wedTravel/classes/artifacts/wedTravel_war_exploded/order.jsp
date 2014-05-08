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
	<title>订单区</title>

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
	
    </script>
</head>
<body>
<jsp:include page="head.jsp"></jsp:include>
    <div class="w_m page_dz">
        <div class="index_con_div in_con_div">
            <div class="titles2 ddys_title yahei">
                <h2>订单预算
                </h2>
                <h3>
                    让您的婚礼与海岛的风景完美结合，在您的婚礼中与众不同</h3>
            </div>
            <div class="left_con">
                <iframe src="left.htm" scrolling="no" width="100%" height="1860" frameborder="0"></iframe>
            </div>
            <div class="main_con2">
            	<div class="order_content">
                    <div class="order_con">
                      <div class="order_list">
                       <div class="order_list_con">
                       		<table width="100%" border="0" cellpadding="0" cellspacing="0" align="center">
                              <tr>
                                <th><img src="images/bule_img.jpg"/></th>
                                <td>
                                	<h4>婚礼套餐</h4>
                                    <p>婚礼场地</p>
                                    <p>婚礼策划公司</p>
                                    <p>婚礼套餐名称</p>
                                    <p>预算</p>
                                </td>
                              </tr>
                            </table>
                       </div>
                       <div class="order_list_con">
                       		<table width="100%" border="0" cellpadding="0" cellspacing="0" align="center">
                              <tr>
                                <th><img src="images/bule_img.jpg"/></th>
                                <td>
                                	<h4>婚礼套餐</h4>
                                    <p>婚礼场地</p>
                                    <p>婚礼策划公司</p>
                                    <p>婚礼套餐名称</p>
                                    <p>预算</p>
                                </td>
                              </tr>
                            </table>
                       </div>
                       <div class="order_list_con">
                       		<table width="100%" border="0" cellpadding="0" cellspacing="0" align="center">
                              <tr>
                                <th><img src="images/bule_img.jpg"/></th>
                                <td>
                                	<h4>婚礼套餐</h4>
                                    <p>婚礼场地</p>
                                    <p>婚礼策划公司</p>
                                    <p>婚礼套餐名称</p>
                                    <p>预算</p>
                                </td>
                              </tr>
                            </table>
                            <table width="100%" border="0" cellpadding="0" cellspacing="0" align="center">
                              <tr>
                                <th><img src="images/bule_img.jpg"/></th>
                                <td>
                                	<h4>婚礼套餐</h4>
                                    <p>婚礼场地</p>
                                    <p>婚礼策划公司</p>
                                    <p>婚礼套餐名称</p>
                                    <p>预算</p>
                                </td>
                              </tr>
                            </table>
                            <table width="100%" border="0" cellpadding="0" cellspacing="0" align="center">
                              <tr>
                                <th><img src="images/bule_img.jpg"/></th>
                                <td>
                                	<h4>婚礼套餐</h4>
                                    <p>婚礼场地</p>
                                    <p>婚礼策划公司</p>
                                    <p>婚礼套餐名称</p>
                                    <p>预算</p>
                                </td>
                              </tr>
                            </table>
                       </div>
                       <div class="order_list_con">
                       		<table width="100%" border="0" cellpadding="0" cellspacing="0" align="center">
                              <tr>
                                <th><img src="images/bule_img.jpg"/></th>
                                <td>
                                	<h4>婚礼套餐</h4>
                                    <p>婚礼场地</p>
                                    <p>婚礼策划公司</p>
                                    <p>婚礼套餐名称</p>
                                    <p>预算</p>
                                </td>
                              </tr>
                            </table>
                       </div>
                       </div>
                       <h2 class="h2_ys">您的预算：10000000<font>(RMB)</font></h2>
                       <div class="order_form">
                       		<table width="100%" border="0" cellpadding="0" cellspacing="0" align="center">
                              <tr>
                                <th>计划举办婚礼日期</th>
                                <td><input name="" type="text" class="input in_360"/>&nbsp;&nbsp;(必填)</td>
                              </tr>
                              <tr>
                                <th>新人姓名</th>
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
                                <td colspan="2" class="tool_td"><input name="" type="button" value="发   送" class="send_btn" onclick="show_popup(0);"/></td>
                             	</tr>
                          </table>
                       </div>
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