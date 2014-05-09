<%--
  Created by IntelliJ IDEA.
  User: ghm
  Date: 14-5-3
  Time: 下午8:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link media=all href="css/css.css" type="text/css" rel="stylesheet"/>

    <title>婚庆网站首页</title>
</head>
<body>
<jsp:include page="head_index.jsp"></jsp:include>
<div class="w_m">
    <div class="index_con_div">
        <div class="index_zx_left">
            <div class="titles2 zx_title"><h2></h2><span title="查看更多" onclick="location.href='list1.html'"><img
                    src="images/more.gif"/></span></div>
            <div class="con_div zx_con_div">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="160" valign="middle">
                            <img src="images/xz_nr.png"/>
                        </td>
                        <td valign="top">
                            <ul>
                                <s:iterator value="#request.list3" status="u">
                                    <c:set value="${u.index}" var='l'></c:set>
                                    <c:if test="${l<4}">
                                        <li>
                                            <a href="" class="grey_a"><s:property value="title"/></a>
                                            <c:if test="${imgUrl!=null}">
                                                <span><img src="${imgUrl}"/><s:property value="createTime"/></span>
                                            </c:if>
                                            <c:if test="${imgUrl==null}">
                                                <span><s:property value="createTime"/></span>
                                            </c:if>
                                        </li>
                                    </c:if>

                                </s:iterator>
                                <!--
                                <li>
                                    <a href="" class="grey_a">马尔代夫婚礼现场..</a>
                                    <span><img src="images/new.png"/>14/01/22</span>
                                </li>
                                <li>
                                    <a href="" class="grey_a">马尔代夫婚礼现场..</a>
                                    <span>14/01/22</span>
                                </li>
                                <li>
                                    <a href="" class="grey_a">马尔代夫婚礼现场..</a>
                                    <span>14/01/22</span>
                                </li>
                                <li>
                                    <a href="" class="grey_a">马尔代夫婚礼现场..</a>
                                    <span>14/01/22</span>
                                </li> -->
                            </ul>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="index_zx_right">
            <div class="titles2 zx_title"><h2></h2><span title="查看更多" onclick="location.href='list1.html'"><img
                    src="images/more.gif"/></span></div>
            <div class="con_div zx_con_div">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="160" valign="middle">
                            <img src="images/xz_nr.png"/>
                        </td>
                        <td valign="top">
                            <ul>
                                <s:iterator value="#request.list3" status="u">
                                    <c:set value="${u.index}" var='l'></c:set>
                                    <c:if test="${l>3&&l<9}">
                                        <li>
                                            <a href="" class="grey_a"><s:property value="title"/></a>
                                                                            <c:if test="${imgUrl!=null}">
                                                                                <span><img src="${imgUrl}"/><s:property
                                                                                value="createTime"/></span>
                                            </c:if>
                                            <c:if test="${imgUrl==null}">
                                                <span><s:property value="createTime"/></span>
                                            </c:if>
                                        </li>
                                    </c:if>

                                </s:iterator>
                            </ul>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    <div class="index_con_div m_t20 show_pics">
        <div class="show_pics_l">
        </div>
        <div class="show_pics_m">
            <ul>
                <s:iterator value="#request.list4" status="u">
                    <c:set value="${u.index}" var='l'></c:set>
                    <c:if test="${l<8}">
                        <c:if test="${l==3}">
                            <li class="lim">
                                <div class="lim_left" onclick="csleft()"></div>
                                <div class="lim_m">
                                    <img src='<s:property value="imgUrl"/>'/>
                                    <!--<span>塞班岛的婚礼策划</span>-->
                                </div>
                                <div class="lim_right" onclick="csright()"></div>
                            </li>
                        </c:if>
                        <c:if test="${l!=3}">
                            <li><img src='<s:property value="imgUrl"/>'/></li>
                        </c:if>
                    </c:if>
                    <!--<li><img src='<s:property value="imgUrl"/>'/></li> -->
                </s:iterator>

                <!--
				<li>
					<img src="images/01.jpg"/>
				</li>
				<li>
					<img src="images/02.jpg"/>
				</li>
				<li>
					<img src="images/01.jpg"/>
				</li>
				<li class="lim">
					<div class="lim_left" onclick="csleft()"></div>
					<div class="lim_m">
						<img src="images/02.jpg"/>
						<span>塞班岛的婚礼策划</span>
					</div>
					<div class="lim_right" onclick="csright()"></div>
				</li>
				<li>
					<img src="images/01.jpg"/>
				</li>
				<li>
					<img src="images/02.jpg"/>
				</li>
				<li>
					<img src="images/01.jpg"/>
				</li>
				-->
            </ul>
        </div>
        <div class="show_pics_r">
        </div>
    </div>
</div>
<jsp:include page="bottom.jsp"></jsp:include>
</body>
</html>