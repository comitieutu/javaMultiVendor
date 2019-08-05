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
<div class="listing-ver4">
    <div class="container">
        <div id="primary" class="col-xs-12 col-md-12">
            <!-- End Banner Grid -->
            <div class="products grid_full grid_sidebar">
                <c:forEach items="${productsByCategory}" var="item" varStatus="loop">
                    <div class="item-inner">
                    <div class="product">
                        <p class="product-title">
                            <a style="font-family: 'Open Sans';font-size: 16px;color: #3a3a3a;line-height: 34px;font-weight: 700;text-transform: capitalize;" href="${pageContext.request.contextPath }/product/detail/${item.id}">${item.name }</a>
                        </p>
                        <p class="product-price"><span>price: </span>$ ${item.unitprice}</p>
                        <a class="product-images" href="${pageContext.request.contextPath }/product/detail/${item.id}">
                            <c:import url="${pageContext.request.contextPath }/assets/images/${item.productdetails.iterator().next().photo}" var="imageData" />
                            <c:if test = "${not empty imageData}">
                                <img class="primary_image" src="${pageContext.request.contextPath }/assets/images/${item.productdetails.iterator().next().photo}" width="228" height="228"/>
                            </c:if>
                            <c:if test = "${empty imageData}">
                                <img class="primary_image" src="${pageContext.request.contextPath }/assets/images/no-image.png" width="228" height="228"/>
                            </c:if>
                        </a>
                        <div class="action">
                            <form action="${pageContext.request.contextPath }/cart/buy" method="get" >
                                <input type="hidden" name="id" value="${item.id}">
                                <input type="hidden" value="1" name="qty" max="100" min="1" step="1">
                                <button type="submit" title="link" class="link-v2" style="background: none;">
                                    <a title="add-to-cart"><i style="top: 0px;left: 0px;" class="zmdi zmdi-shopping-cart-plus"></i></a>
                                </button>
                            </form>
                        </div>
                    </div>
                </div>
                </c:forEach>
            </div>
            <!-- End product-content products  -->
        </div>
        <!-- End Primary -->
    </div>
    <!-- End conainer -->
</div>
<!-- End listing-ver1 -->
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
<!-- End newsletter -->