<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags/client"%>
<c:set var="path" value="${pageContext.request.contextPath }/resources/client"></c:set>

<header id="header" class="header-v3">
    <mt:topbar></mt:topbar>
    <mt:menu></mt:menu>
</header>
<div class="breadcrumb">
    <div class="container">
        <ul>
            <li><a href="http://localhost:9596">Home</a></li>
            <li>${category.name}</li>
        </ul>
    </div>
    <!-- End container -->
</div>
<div class="content-about">
    <div class="col-md-6">
        <img src="assets/images/about-content.jpg" tppabs="http://landing.engocreative.com/html/dama/demo/assets/images/about-content.jpg" alt="About">
    </div>
    <div class="col-md-6">
        <div class="text-about">
            <div class="title-text title-about">
                <h3><span>A</span>bout</h3>
                <h4>us</h4>
            </div>
            <!-- End title -->
            <div class="col-md-6">
                <h4>the store</h4>
                <p>
                    Di Cantina Valpolicella Negrar  la storia di uomini e donne dediti alla creazio Nullam dui  lum ante ipsum primis in faucibus orci luctus et ultrices Nulla mattis enim ut sagittis Curalum ante ipsum primis in faucibus orci luctus
                </p>
                <p>rutrum. Sed molestie justo et turpis placerat, blandit molestie ex condimentum. Phasellus et laoreet lacus, sed</p>
            </div>
            <div class="col-md-6">
                <h4>Our mission</h4>
                <p>Valpolicella Negrar la storia di uomini e donne dediti alla creazio Nullam dui dolor, sagittis ut ante eget Aliquam hendrerit vitae urna ornare semper. Ut congue condimentum nisl. Nam eu nulla libero. Curabitur lum ante ipsum primis in faucibus orci luctus et ultrices Nulla mattis enim </p>
            </div>
        </div>
    </div>
</div>
${contentstatic.content}