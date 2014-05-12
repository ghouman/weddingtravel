<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ghm
  Date: 14-5-3
  Time: 下午8:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<div class="bottom m_t20">
        <div class="w_m">
            <div class="link_con">
                <div class="titles1 link_title">
                    <h2>
                        友情链接</h2>
                </div>
                <div class="link_m">
                    <ul>
                    <s:iterator value="#request.list5" status="u">
                            <li><a href="${linkUrl}" class="b_a">${title}</a>&nbsp;|&nbsp;</li>
                    </s:iterator>
                    </ul>
                </div>
            </div>
            <div class="contact_con m_t30">
                <div class="titles1 contact_title">
                    <h2>
                        联系我们</h2>
                </div>
                <div class="contact_c">
                    <h2>
                        ${company.tel}</h2>
                    <h3>
                        全国统一客服电话</h3>
                </div>
                <div class="contact_m">
                    <ul>
                        <li class="li1" title="QQ"></li>
                        <li class="li2" title="微博"></li>
                        <li class="li3" title="微信"></li>
                    </ul>
                </div>
            </div>
            <div class="address_con m_t15">
                <div class="titles1 addr_title">
                    <h2>
                        联系地址</h2>
                    <h2>
                        ${company.address}</h2>
                </div>
            </div>
        </div>
    </div>
</body>
</html>