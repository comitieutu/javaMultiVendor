<%@ tag language="java" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<div id="topbar">
    <div class="container">
        <div class="topbar-left">
        </div>
        <!-- End topBar-left -->
        <div class="topbar-right">
            <div class="wrap-sign-in cart dropdown">
            	<sec:authorize access="!isAuthenticated()">
            		<a class="sign-in" href="${pageContext.request.contextPath }/login" title="user"><i class="zmdi zmdi-account"></i>Login</a>
				</sec:authorize>
            	<sec:authorize access="isAuthenticated()">
            		<a href="${pageContext.request.contextPath }/admin">Welcome <sec:authentication property="name"/></a>
				    <a class="logout" href="${pageContext.request.contextPath }/logout">Logout</a>
				</sec:authorize>
                <sec:authorize access="hasRole('ROLE_ADMIN')">
				    <a href="${pageContext.request.contextPath }/admin">Admin</a>
				</sec:authorize>
            </div>
        </div>
    </div>
</div>