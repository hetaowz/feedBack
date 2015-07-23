<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="ch" uri="http://www.chanhong.com" %>
<div class="topNav">
    <div class="wrapper">

        <div class="userNav">
            <ul>
                <li>
                    <a href="#" title=""><img src="${pageContext.request.contextPath}/images/userPic.png" alt=""/>
                    </a><span><ch:user/></span>
                </li>
                <li><a href="${pageContext.request.contextPath}/backend/userchangepassword.html" title=""><img
                        src="${pageContext.request.contextPath}/images/icons/topnav/settings.png"
                        alt=""/><span>修改密码</span></a></li>
                <li><a href="${pageContext.request.contextPath}/j_spring_security_logout" title=""><img
                        src="${pageContext.request.contextPath}/images/icons/topnav/logout.png" alt=""/><span>退出</span></a>
                </li>
            </ul>
        </div>
    </div>
</div>
