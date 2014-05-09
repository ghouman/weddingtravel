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
	<title>疑难解答</title>

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
            <div class="titles2 ynjd_title yahei">
                <h2>疑难解答
                </h2>
                <h3>
                    让您的婚礼与海岛的风景完美结合，在您的婚礼中与众不同</h3>
            </div>
            <div class="left_con">
                <jsp:include page="left.jsp"></jsp:include>
            </div>
            <div class="main_con2">
            	<div class="list_con4">
                	<div class="list_con6">
                    	 <h2 class="qa_title yahei">海外婚礼仪式前的疑问</h2>
                         <div class="qa_con">
                             <span class="question_info" onclick="show(1,1);" id="ques11">
                                Q1 我想在海外举办婚礼，请问具体流程应该怎么办？<img class="arrow" src="images/arrow_b.png"/>
                             </span>
                             <div class="answer_info" id="ans11">首先需要您决定好婚礼的日期，然后选择想要举办婚礼的地点以及场所，之后确认好没有问题的话，海外婚礼策划公司的职员会与你联系。之后进行签约，预付定金。随后预定机票或是酒店，如果前往的婚礼举办地需要签证的话，可以通过旅行社或是相关机构申请。	
                             </div>
                         </div>
                          <div class="qa_con">
                             <span class="question_info" onclick="show(1,2);" id="ques12">
                                Q2 委托举办海外婚礼，需要提前多长时间预定？<img class="arrow" src="images/arrow_l.png"/>
                             </span>
                             <div class="answer_info" style="display:none;" id="ans12">首先需要您决定好婚礼的日期，然后选择想要举办婚礼的地点以及场所，之后确认好没有问题的话，海外婚礼策划公司的职员会与你联系。之后进行签约，预付定金。随后预定机票或是酒店，如果前往的婚礼举办地需要签证的话，可以通过旅行社或是相关机构申请。	
                             </div>
                         </div>
                         <div class="qa_con">
                             <span class="question_info" onclick="show(1,3);" id="ques13">
                                Q3 请问婚礼套餐价格是否包括签证，机票，酒店费用呢？ <img class="arrow" src="images/arrow_l.png"/>
                             </span>
                             <div class="answer_info" style="display:none;" id="ans13">首先需要您决定好婚礼的日期，然后选择想要举办婚礼的地点以及场所，之后确认好没有问题的话，海外婚礼策划公司的职员会与你联系。之后进行签约，预付定金。随后预定机票或是酒店，如果前往的婚礼举办地需要签证的话，可以通过旅行社或是相关机构申请。	
                             </div>
                         </div>
                          <div class="qa_con">
                             <span class="question_info" onclick="show(1,4);" id="ques14">
                               Q4 婚礼套餐的婚纱礼服是到举办当地以后自由选择吗？<img class="arrow" src="images/arrow_l.png"/>
                             </span>
                             <div class="answer_info" style="display:none;" id="ans14">首先需要您决定好婚礼的日期，然后选择想要举办婚礼的地点以及场所，之后确认好没有问题的话，海外婚礼策划公司的职员会与你联系。之后进行签约，预付定金。随后预定机票或是酒店，如果前往的婚礼举办地需要签证的话，可以通过旅行社或是相关机构申请。	
                             </div>
                         </div>
                         <div class="qa_con">
                             <span class="question_info" onclick="show(1,5);" id="ques15">
                               Q5 海外婚礼的签证需要如何办理？ <img class="arrow" src="images/arrow_l.png"/>
                             </span>
                             <div class="answer_info" style="display:none;" id="ans15">首先需要您决定好婚礼的日期，然后选择想要举办婚礼的地点以及场所，之后确认好没有问题的话，海外婚礼策划公司的职员会与你联系。之后进行签约，预付定金。随后预定机票或是酒店，如果前往的婚礼举办地需要签证的话，可以通过旅行社或是相关机构申请。	
                             </div>
                         </div>
                    </div>
                    <div class="list_con6">
                    	 <h2 class="qa_title yahei">海外婚礼仪式中的疑问</h2>
                         <div class="qa_con">
                             <span class="question_info" onclick="show(2,1);" id="ques21">
                                Q1 我想在海外举办婚礼，请问具体流程应该怎么办？<img class="arrow" src="images/arrow_b.png"/>
                             </span>
                             <div class="answer_info" id="ans21" style="display:none;" >首先需要您决定好婚礼的日期，然后选择想要举办婚礼的地点以及场所，之后确认好没有问题的话，海外婚礼策划公司的职员会与你联系。之后进行签约，预付定金。随后预定机票或是酒店，如果前往的婚礼举办地需要签证的话，可以通过旅行社或是相关机构申请。	
                             </div>
                         </div>
                          <div class="qa_con">
                             <span class="question_info" onclick="show(2,2);" id="ques22">
                                Q2 委托举办海外婚礼，需要提前多长时间预定？<img class="arrow" src="images/arrow_l.png"/>
                             </span>
                             <div class="answer_info" style="display:none;" id="ans22">首先需要您决定好婚礼的日期，然后选择想要举办婚礼的地点以及场所，之后确认好没有问题的话，海外婚礼策划公司的职员会与你联系。之后进行签约，预付定金。随后预定机票或是酒店，如果前往的婚礼举办地需要签证的话，可以通过旅行社或是相关机构申请。	
                             </div>
                         </div>
                         <div class="qa_con">
                             <span class="question_info" onclick="show(2,3);" id="ques23">
                                Q3 请问婚礼套餐价格是否包括签证，机票，酒店费用呢？ <img class="arrow" src="images/arrow_l.png"/>
                             </span>
                             <div class="answer_info" style="display:none;" id="ans23">首先需要您决定好婚礼的日期，然后选择想要举办婚礼的地点以及场所，之后确认好没有问题的话，海外婚礼策划公司的职员会与你联系。之后进行签约，预付定金。随后预定机票或是酒店，如果前往的婚礼举办地需要签证的话，可以通过旅行社或是相关机构申请。	
                             </div>
                         </div>
                    </div>
                     <div class="list_con6">
                    	 <h2 class="qa_title yahei">其他的海外婚礼疑问</h2>
                         <div class="qa_con">
                             <span class="question_info" onclick="show(3,1);" id="ques31">
                                Q1 我想在海外举办婚礼，请问具体流程应该怎么办？<img class="arrow" src="images/arrow_b.png"/>
                             </span>
                             <div class="answer_info" id="ans31" style="display:none;" >首先需要您决定好婚礼的日期，然后选择想要举办婚礼的地点以及场所，之后确认好没有问题的话，海外婚礼策划公司的职员会与你联系。之后进行签约，预付定金。随后预定机票或是酒店，如果前往的婚礼举办地需要签证的话，可以通过旅行社或是相关机构申请。	
                             </div>
                         </div>
                          <div class="qa_con">
                             <span class="question_info" onclick="show(3,2);" id="ques32">
                                Q2 委托举办海外婚礼，需要提前多长时间预定？<img class="arrow" src="images/arrow_l.png"/>
                             </span>
                             <div class="answer_info" style="display:none;" id="ans32">首先需要您决定好婚礼的日期，然后选择想要举办婚礼的地点以及场所，之后确认好没有问题的话，海外婚礼策划公司的职员会与你联系。之后进行签约，预付定金。随后预定机票或是酒店，如果前往的婚礼举办地需要签证的话，可以通过旅行社或是相关机构申请。	
                             </div>
                         </div>
                         <div class="qa_con">
                             <span class="question_info" onclick="show(3,3);" id="ques33">
                                Q3 请问婚礼套餐价格是否包括签证，机票，酒店费用呢？ <img class="arrow" src="images/arrow_l.png"/>
                             </span>
                             <div class="answer_info" style="display:none;" id="ans33">首先需要您决定好婚礼的日期，然后选择想要举办婚礼的地点以及场所，之后确认好没有问题的话，海外婚礼策划公司的职员会与你联系。之后进行签约，预付定金。随后预定机票或是酒店，如果前往的婚礼举办地需要签证的话，可以通过旅行社或是相关机构申请。	
                             </div>
                         </div>
                    </div>
                    <div class="list_con6" style="margin-top:20px;">
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