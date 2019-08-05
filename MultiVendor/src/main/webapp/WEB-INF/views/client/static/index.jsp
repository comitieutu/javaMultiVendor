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
            <li class="active">${contentstatic.title}</li>
        </ul>
    </div>
    <!-- End container -->
</div>
<c:if test="${contentstatic.code == 'ct'}">
    <div class="main-content">
        <div class="container">
            <div class="contact-content">
                <div class="col-md-9 contact-form contact-form-bg">
                    <form class="form-horizontal">
                        <div class="form-group col-md-6">
                            <label class=" control-label" for="inputName">Your name</label>
                            <input type="text" class="form-control" id="inputName" placeholder="Name">
                        </div>
                        <div class="form-group col-md-6">
                            <label class=" control-label" for="inputEmail">Your Mail</label>
                            <input type="text" class="form-control" id="inputEmail" placeholder="Email">
                        </div>
                        <div class="form-group col-md-12">
                            <label class=" control-label" for="inputsub">subject</label>
                            <input type="text" class="form-control" id="inputsub" placeholder="Subject">
                        </div>
                        <div class="form-group col-md-12">
                            <label class=" control-label" for="message">massage</label>
                            <textarea class="form-control" id="message" name="massage"></textarea>
                            <div class="checkbox space-10">
                            </div>
                            <button class="btn link-button" type="submit">Submit</button>
                        </div>
                    </form>
                </div>
                <!-- End col-md-9 -->
                <div class="col-md-3">
                    <div class="title-ver3">
                        <h3><span>G</span>et in Touch </h3>
                    </div>
                    <div class="infomation">
                        <p><i class="zmdi zmdi-pin"></i>1857 Alford Rapid Apt. 109.</p>
                        <p><i class="zmdi zmdi-phone"></i>+81 (2) 345 6789</p>
                        <p>+81 (2) 345 6789</p>
                        <p><a href="mailto:engotheme@gmail.com" title="email"><i class="zmdi zmdi-email"></i>engotheme@gmail.com</a></p>
                    </div>
                    <div class="title-ver3">
                        <h3><span>S</span>ocial networks </h3>
                    </div>
                    <div class="share">
                        <a class="facebook" href="#" title="facebook"><i class="zmdi zmdi-facebook"></i></a>
                        <a class="twitter" href="#" title="twitter"><i class="zmdi zmdi-twitter"></i></a>
                        <a class="instagram" href="#" title="instagram"><i class="zmdi zmdi-instagram"></i></a>
                        <a class="google" href="#" title="google"><i class="zmdi zmdi-google-glass"></i></a>
                    </div>
                </div>
                <!-- End col-md-3 -->
            </div>
        </div>
        <!-- End container -->
        <!-- End contact content -->
        <div id="googleMap"></div>
    </div>
</c:if>
<c:if test="${contentstatic.code == 'au'}">
    <div class="content-about">
        <div class="col-md-6">
            <img src="${pageContext.request.contextPath }/assets/images/about-content.jpg">
        </div>
        <div class="col-md-6" style="padding-left: 50px;">
            ${contentstatic.content}
        </div>
    </div>
</c:if>