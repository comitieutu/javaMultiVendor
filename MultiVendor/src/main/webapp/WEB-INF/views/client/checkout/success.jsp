<%@ page import="org.hibernate.Session" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags/client" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<c:set var="path" value="${pageContext.request.contextPath }/resources/client"></c:set>



<header id="header" class="header-v3">

    <mt:topbar></mt:topbar>

</header>

<div style="text-align: center;">
    <h2 style="margin: 50px; color: green">Success payment !!!</h2>
    <h3>Your order is on delivery process</h3>
    <a href="${pageContext.request.contextPath }/" style="margin: 50px;" class="btn btn-success">
        Go To Home Page
    </a>
</div>


