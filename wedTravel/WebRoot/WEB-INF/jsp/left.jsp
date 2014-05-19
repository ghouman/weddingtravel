<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link media="all" href="css/css.css" type="text/css" rel="stylesheet" />
<title>内页left</title>
<script type="text/javascript">
			
	function opendiv(vd){
	var ob=document.getElementById(vd);
  	if(ob.style.display=="block" || ob.style.display=="")
  	{
     	ob.style.display="none";
  	}
  	else
  	{
    	ob.style.display="block";
 	 }
	}						
</script>
</head>

<body class="">
	<div class="left_cons">
                <div class="titles3 mlsy">
                </div>
                <div class="content mlsy_con">
                <c:forEach items="${areaList}" var="area" >
                <h2>${area.name}</h2>
                <ul>
                
                	<c:forEach items="${islandList}" var="island" varStatus="s" >
                		
                		<c:if test="${area.id ==island.areaId}">
                		 <ul >
                         <li>
                            <div>
                                <a onclick="opendiv('dy${s.index }')" class="b_a">${island.name }</a>
                           </div>
                            <ul style="display:none;" id ='dy${s.index }'>
                            <c:forEach items="${islandPackageList}" var="islandPackage" >
                			<c:if test="${island.id==islandPackage.islandId}">
                			 <li><a href="" class="grey_a">${islandPackage.title }</a> </li>
                			</c:if>
                			</c:forEach>
                            </ul>
                        </li>
                        </ul>
                		</c:if>
                		
                	</c:forEach>
                	
                	</ul>
                </c:forEach>
                <!--  
                    <h2>
                        东南亚地区</h2>
                    <ul>
                        <li>
                            <div>
                                <a href="" class="b_a">巴厘岛</a></div>
                            <ul>
                                <li><a href="" class="grey_a">教堂婚礼</a> </li>
                                <li><a href="" class="grey_a">水中婚礼</a> </li>
                                <li><a href="" class="grey_a">酒店婚礼</a> </li>
                            </ul>
                        </li>
                        <li>
                            <div>
                                <a href="" class="b_a">马尔代夫</a></div>
                            <ul>
                                <li><a href="" class="grey_a">教堂婚礼</a> </li>
                            </ul>
                        </li>
                        <li>
                            <div>
                                <a href="" class="b_a">斯里兰卡</a></div>
                        </li>
                        <li>
                            <div>
                                <a href="" class="b_a">长滩</a></div>
                        </li>
                        <li>
                            <div>
                                <a href="" class="b_a">普吉岛</a></div>
                        </li>
                        <li>
                            <div>
                                <a href="" class="b_a">兰卡威</a></div>
                        </li>
                        <li>
                            <div>
                                <a href="" class="b_a">沙巴</a></div>
                        </li>
                    </ul>
                    <h2>
                        亚洲地区</h2>
                    <ul>
                        <li>
                            <div>
                                <a href="" class="b_a">济州岛</a></div>
                        </li>
                        <li>
                            <div>
                                <a href="" class="b_a">冲绳</a></div>
                        </li>
                    </ul>
                    <h2>
                        大洋洲地区</h2>
                    <ul>
                        <li>
                            <div>
                                <a href="" class="b_a">斐济</a></div>
                        </li>
                        <li>
                            <div>
                                <a href="" class="b_a">大溪地</a></div>
                        </li>
                        <li>
                            <div>
                                <a href="" class="b_a">毛里求斯</a></div>
                        </li>
                        <li>
                            <div>
                                <a href="" class="b_a">塞舌尔</a></div>
                        </li>
                        <li>
                            <div>
                                <a href="" class="b_a">关岛</a></div>
                        </li>
                        <li>
                            <div>
                                <a href="" class="b_a">塞班</a></div>
                        </li>
                        <li>
                            <div>
                                <a href="" class="b_a">夏威夷</a></div>
                        </li>
                    </ul>
                    <h2>
                        地中海地区</h2>
                    <ul>
                        <li>
                            <div>
                                <a href="" class="b_a">圣托里尼</a></div>
                        </li>
                    </ul>
                      -->
                </div>
               
                <div class="titles3 fwbj">
                </div>
                <div class="content fwbj_con">
                    <ul>
                        <c:forEach items="${recommendListHL}" var="hltc">
                            <li onclick="">
                                <dl>
                                    <dt>
                                        <img src="${hltc.smallImgUrl}" /></dt>
                                    <dd>
                                        <h3>
                                                ${hltc.title}>>></h3>
                                        <h2>
                                                ${hltc.price}</h2>
                                        <h5>
                                            起</h5>
                                    </dd>
                                </dl>
                            </li>
                        </c:forEach>

<!--
                        <li onclick="">
                            <dl>
                                <dt>
                                    <img src="../images/01.jpg" /></dt>
                                <dd>
                                    <h3>
                                        海上殿堂>>></h3>
                                    <h2>
                                        69989</h2>
                                    <h5>
                                        起</h5>
                                </dd>
                            </dl>
                        </li>
                        <li onclick="">
                            <dl>
                                <dt>
                                    <img src="../images/01.jpg" /></dt>
                                <dd>
                                    <h3>
                                        海上殿堂>>></h3>
                                    <h2>
                                        69989</h2>
                                    <h5>
                                        起</h5>
                                </dd>
                            </dl>
                        </li>
                        -->
                    </ul>
                   
                </div>
                <div class="titles3 zp">
                </div>
                <div class="content zp_con">
                    <ul>
                        <c:forEach items="${recommendListSY}" var="sytc" >
                            <li onclick="">
                                <img src="${sytc.smallImgUrl}" />
                                <p>
                                    TIME：${sytc.createTime}</p>
                                <h2>${sytc.title}</h2>
                            </li>
                        </c:forEach>
        <!--
                        <li onclick="">
                            <img src="../images/01.jpg" />
                            <p>
                                TIME：2014-5-20</p>
                            <h2>
                                巴里岛摄影</h2>
                        </li>
                        -->
                    </ul>

                </div>
                <div class="titles3 zx">
                </div>
                <div class="content zx_con">
                    <ul>
                        <c:forEach items="${recommendListZX}" var="zx">
                            <li><a href="" class="blue_a">${zx.title}</a></li>
                        </c:forEach>
                        <!--
                        <li><a href="" class="blue_a">巴厘岛悦榕庄婚礼套餐</a></li>
                        <li><a href="" class="blue_a">巴厘岛悦榕庄婚礼套餐</a></li>
                        <li><a href="" class="blue_a">巴厘岛悦榕庄婚礼套餐</a></li>
                        <li><a href="" class="blue_a">巴厘岛悦榕庄婚礼套餐</a></li>
                        <li><a href="" class="blue_a">巴厘岛悦榕庄婚礼套餐</a></li>
                        <li><a href="" class="blue_a">巴厘岛悦榕庄婚礼套餐</a></li>
                        -->
                    </ul>
                </div>
                <div class="titles3 lxwm">
                </div>
                <div class="content lxwm_con">
                    <ul>
                        <li class="lxwm_p1">13564829537</li>
                        <li class="lxwm_p2">FAX:021-62784878</li>
                        <li class="lxwm_p3">
                            <img src="../images/lxxx.png" /></li>
                        <li class="lxwm_p4">
                            <div class="wx_icon" title="微信">
                            </div>
                            <div class="wb_icon" title="微博">
                            </div>
                            <div class="qq_icon" title="QQ">
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
</body>
</html>
