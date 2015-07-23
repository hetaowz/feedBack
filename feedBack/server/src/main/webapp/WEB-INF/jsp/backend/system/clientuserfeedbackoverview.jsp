<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="ch" uri="http://www.chanhong.com" %>
<html>
<head>
    <title>后台管理平台</title>
</head>
<body>
<div class="action" style="margin-top: 50px;">
    &nbsp;
</div>
<div class="widget">
    <div class="title"><img src="${pageContext.request.contextPath}/images/icons/dark/frames.png" alt="" class="titleIcon"/><h6>用户反馈信息</h6>
    </div>
    <table width="100%" cellpadding="0" cellspacing="0" class="sTable">
        <thead>
        <td width="5%">&nbsp;&nbsp;编号</td>
        <td width="30%">反馈内容</td>
        <td width="15%">反馈时间</td>
        <td width="10%">用户</td>
        <td width="15%">MAC地址</td>
        <td width="15%">状态</td>
        <td>操作</td>
        </thead>
        <tbody>
        <c:set var="turns" value="true"/>
        <c:forEach items="${feedbacks}" var="feedback">
            <c:set var="color" value="${turns ? 'r1' :'r2'}"/>
            <tr class="${color}" onmouseover="this.className='over'" onmouseout="this.className='${color}'">
                <c:set var="turns" value="${!turns}"/>
                <td>&nbsp;&nbsp;${feedback.id}</td>
                <td>${feedback.content}</td>
                <td>${feedback.dateTime}</td>
                <td>${feedback.username} </td>
                <td>${feedback.usermac}</td>
                <td>
                    <c:if test="${feedback.status=='1'}">
                        已处理
                    </c:if>
                    <c:if test="${feedback.status=='0'}">
                        未处理
                    </c:if>
                </td>

                <td>

                    <a href="${pageContext.request.contextPath}/backend/clientuserfeedbackchangestatus.html?feedbackId=${feedback.id}&&current=${current}" onclick=""><button class="editBtn bluewB">审查</button></a>

                </td>

            </tr>
        </c:forEach>
        </tbody>
    </table>

</div>

            <div class="paging" style="float:right;">
                <ch:paging urlMapping="${pageContext.request.contextPath}/backend/clientuserfeedbackoverview.html" showGoTo="false" paging="${paging}"/>
            </div>

</body>
</html>