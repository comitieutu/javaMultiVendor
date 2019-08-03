<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags/client"%>

<c:set var="path" value="${pageContext.request.contextPath }/resources/client"></c:set>
<header id="header" class="header-v3">
    <mt:topbar></mt:topbar>
    <mt:menu></mt:menu>
    
</header>

<div class="breadcrumb">
    <div class="container">
        <ul>
            <li><a href="#">Home</a></li>
            <li class="active">Login</li>
        </ul>
    </div>
    <!-- End container -->
</div> 
  <div class="main-content">
         <div class="container">
            <div class="contact-content">
                <div class="col-md-9 contact-form contact-form-bg">
                    <form class="form-horizontal" action="${pageContext.request.contextPath }/process-login" method="post">
                        <div class="form-group col-md-6">
                            <label class=" control-label" for="inputName">Username</label>                            
                            <input type="text" class="form-control" name="username" id="inputName" placeholder="Name"/>                        
                        </div>
                        <div class="form-group col-md-6">
                            <label class=" control-label" for="inputEmail">Password</label>                            
                            <input type="password" class="form-control" name="password" placeholder="Password"/>                   
                        </div>
                        <div class="form-group col-md-12 text-center">
                            <div class="checkbox space-10">
                            </div>
                            <button class="btn link-button" type="submit">Login</button>
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
  <!-- End MainContent -->
  <div class="newsletter">
      <div class="container">
        <h3><a href="#" title="sign up">sign up</a> to newsletter</h3>
        <p>and receilve $20 coupon for first shopping</p>
            <form action="#" method="get" accept-charset="utf-8">
                <input type="text" onblur="if (this.value == '') {this.value = 'Enter your email';}" onfocus="if(this.value != '') {this.value = '';}" value="Enter your emaill" class="input-text required-entry validate-email" title="Sign up for our newsletter" id="newsletter" name="email">
                <button class="button button1" title="Subscribe" type="submit"></button>
            </form>
      </div>
      <!-- End container -->
  </div>


