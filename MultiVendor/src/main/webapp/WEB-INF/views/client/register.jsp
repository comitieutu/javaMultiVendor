<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags/client"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form" %>

<c:set var="path" value="${pageContext.request.contextPath }/resources/client"></c:set>
<header id="header" class="header-v3">
    <mt:topbar></mt:topbar>
    <mt:menu></mt:menu>
    
</header>

<div class="breadcrumb">
    <div class="container">
        <ul>
            <li><a href="http://localhost:9596">Home</a></li>
            <li class="active">Register</li>
        </ul>
    </div>
    <!-- End container -->
</div> 
  <div class="main-content">
         <div class="container">
            <div class="contact-content">
                <div class="col-md-9 contact-form contact-form-bg">
                    <s:form class="form-horizontal" action="${pageContext.request.contextPath }/signup" modelAttribute="user" method="post">
                        <div class="form-group col-md-6">
                            <s:label path="username" class=" control-label" for="inputName">Username</s:label>                            
                            <s:input path="username" type="text" class="form-control" placeholder="Username"/>         
                            <s:errors path="username"></s:errors>               
                        </div>
                        <div class="form-group col-md-6">
                            <s:label path="password" class=" control-label" for="inputPassword">Password</s:label>
                            <s:password path="password" class="form-control" placeholder="Password"/> 
                            <s:errors path="password" cssClass="error"></s:errors>                  
                        </div>
                        <div class="form-group col-md-6">
                            <s:label path="email" class=" control-label" for="inputEmail">Email</s:label>
                            <s:input path="email" class="form-control" placeholder="email"/>
                            <s:errors path="email" cssClass="error"></s:errors>
                        </div>
                        <div class="form-group col-md-6">
                            <s:label path="district" class=" control-label" for="inputEmail">District</s:label>
                            <s:input path="district" class="form-control" placeholder="district"/>
                            <s:errors path="district" cssClass="error"></s:errors>
                        </div>
                        <div class="form-group col-md-6">
                            <s:label path="firstname" class=" control-label" for="inputEmail">First name</s:label>
                            <s:input path="firstname" class="form-control" placeholder="firstname"/>
                            <s:errors path="firstname" cssClass="error"></s:errors>
                        </div>
                        <div class="form-group col-md-6">
                            <s:label path="lastname" class=" control-label" for="inputEmail">Last Name</s:label>
                            <s:input path="lastname" class="form-control" placeholder="lastname"/>
                            <s:errors path="lastname" cssClass="error"></s:errors>
                        </div>
                        <div class="form-group col-md-6">
                            <s:label path="gender" class=" control-label" for="inputEmail">Gender</s:label>
                            <s:select path="gender" class="form-control">
                                <s:option value="0">Male</s:option>
                                <s:option value="1">Female</s:option>
                            </s:select>
                        </div>
                        <div class="form-group col-md-6">
                            <s:label path="birthday" class=" control-label" for="inputEmail">Birthday</s:label>
                            <s:input type="date" path="birthday" class="form-control" placeholder="birthday"/>
                        </div>
                        <div class="form-group col-md-6">
                            <s:label path="address" class=" control-label" for="inputEmail">Address</s:label>
                            <s:input path="address" class="form-control" placeholder="address"/>
                            <s:errors path="address" cssClass="error"></s:errors>
                        </div>
                        <div class="form-group col-md-6">
                            <s:label path="street" class=" control-label" for="inputEmail">Street</s:label>
                            <s:input path="street" class="form-control" placeholder="street"/>
                            <s:errors path="street" cssClass="error"></s:errors>
                        </div>
                        <div class="form-group col-md-12 text-center">
                            <div class="checkbox space-10">
                            </div>
                            <button class="btn link-button" type="submit">Register</button>
                        </div>
                    </s:form>
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


