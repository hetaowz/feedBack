<%@ page contentType="text/html;charset=gb2312" language="java" %>
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

<div class="searchWidget" style="float: left ;">
    <form action="${pageContext.request.contextPath}/backend/tvchannelinfooverview.html" method="post">
            <span><label>频道名：</label><input type="text" placeholder="请输入..." name="filername"
                                           value="${paging.channelName}"></span>
        <input type="submit" value="" name="find" onclick="this.form.submit()" ;/>
    </form>
</div>
<div class="" style="float: right;">
    <a title="" href="${pageContext.request.contextPath}/backend/tvchannelform.html">
       <button class="editBtn bluewB">添加频道</button>
    </a>
</div>


<div class="widget">
    <div class="title"><img src="${pageContext.request.contextPath}/images/icons/dark/frames.png" alt="" class="titleIcon"/><h6>频道管理</h6>
    </div>
    <table width="100%" cellpadding="0" cellspacing="0" class="sTable">
        <thead>
        <td width="40%">&nbsp;&nbsp;序号</td>
        <td width="40%">频道名</td>
        <td width="20%">操作</td>
        </thead>
        <tbody>
        <c:set var="turns" value="true"/>
        <c:forEach items="${tvChannels}" var="tvChannel">
            <c:set var="color" value="${turns ? 'r1' :'r2'}"/>
            <tr class="${color}" onmouseover="this.className='over'" onmouseout="this.className='${color}'">
                <c:set var="turns" value="${!turns}"/>
                <td>&nbsp;&nbsp;${tvChannel.channelSequence}</td>
                <td>${tvChannel.tvChannelName} </td>
                <td>
                    <a href="${pageContext.request.contextPath}/backend/tvchannelform.html?tvChannelId=${tvChannel.id}&filername=${filername}&current=${current}"><button class="editBtn bluewB">编辑</button></a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>


            <div class="paging" style="float:right;>
                <ch:paging urlMapping="${pageContext.request.contextPath}/backend/tvchannelinfooverview.html" showGoTo="false" paging="${paging}"/>
            </div>

</body>
</html>