<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;"/>
    <title>用户反馈信息平台</title>
    <link href="${pageContext.request.contextPath}/css/main.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script type="text/javascript">
    $(document).ready(function () {
        $('li.forms a ').click(function (e) {
            var dropDown = $(this).parent().next();
            $('.sub').not(dropDown).slideUp('slow');
            dropDown.slideToggle('slow');
            e.preventDefault();
        })
        $('li.tables a ').click(function (e) {
            var dropDown = $(this).parent().next();
            $('.sub').not(dropDown).slideUp('slow');
            dropDown.slideToggle('slow');
            e.preventDefault();
        })
    });
</script>
    <decorator:head/>

</head>

<body>

<div id="leftSide">
    <div class="logo"><a href="${pageContext.request.contextPath}/backend/dashboard.html"><img src="${pageContext.request.contextPath}/images/logo.png" alt=""/></a>
    </div>

    <div class="sidebarSep"></div>

    <!-- Left navigation -->
    <ul class="nav">
        <li class="dash"><a href="${pageContext.request.contextPath}/backend/dashboard.html" title=""><span>首页</span></a></li>

        <li class="forms"><a href="${pageContext.request.contextPath}/backend/clientuserfeedbackoverview.html" title=""><span>用户反馈</span><strong>2</strong></a>
        </li>
        <ul class="sub">
            <li><a href="${pageContext.request.contextPath}/backend/clientuserfeedbackoverview.html"
                   title="">反馈信息</a></li>
            <li><a href="${pageContext.request.contextPath}/backend/clientuserfeedback.html" title="">反馈统计</a></li>
        </ul>

        <li class="charts"><a href="${pageContext.request.contextPath}/backend/clientusercollector.html" title=""><span>收视统计</span></a>
        </li>
        <li class="ui"><a href="${pageContext.request.contextPath}/backend/clientlocationoverview.html" title=""><span>用户定位</span></a>
        </li>

        <li class="tables"><a href="${pageContext.request.contextPath}/backend/useroverview.html"
                             title=""><span>系统设置</span><strong>3</strong></a></li>
        <ul class="sub">
            <li><a href="${pageContext.request.contextPath}/backend/useroverview.html" title="">用户管理</a></li>
            <li><a href="${pageContext.request.contextPath}/backend/appoverview.html" title="">应用管理</a></li>
            <li><a href="${pageContext.request.contextPath}/backend/tvchannelinfooverview.html" title="">频道管理</a>
            </li>
        </ul>
    </ul>

</div>

<!-- Right side -->
<div id="rightSide">
    <jsp:include page="/WEB-INF/decorators/header.jsp"></jsp:include>
    <decorator:body/>


</div>


</body>
</html>