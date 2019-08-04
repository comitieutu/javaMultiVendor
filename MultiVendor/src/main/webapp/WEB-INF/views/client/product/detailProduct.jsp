<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags/client"%>
<c:set var="path" value="${pageContext.request.contextPath }/resources/client"></c:set>

<header id="header" class="header-v3">
    <mt:topbar></mt:topbar>
   	<mt:menu></mt:menu>
</header><!-- /header -->
<div class="breadcrumb">
    <div class="container">
        <ul>
            <li><a href="#">Home</a></li>
            <li class="active">Product Details</li>
        </ul>
    </div>
    <!-- End container -->
</div>
<div class="main-content">
    <div class="container">
        <div class="product-details-content">
            <c:import url="${pageContext.request.contextPath }/assets/images/${product.productdetails.iterator().next().photo}" var="imageData" />
            <div class="col-md-6 col-sm-6">
                <div class="product-img-box">
                    <a id="image-view" title="Product Image">
                        <img id="image" src=""/>
                        <c:if test = "${not empty imageData}">
                            <a href="${path}/images/product-details1.jpg" title="thumb product view1" onclick="swap(this);return false;">
                                <img src="${pageContext.request.contextPath }/assets/images/${product.productdetails.iterator().next().photo}" alt="${product.name}" width="450">
                            </a>
                        </c:if>
                        <c:if test = "${empty imageData}">
                            <a href="${path}/images/product-details1.jpg" title="thumb product view1" onclick="swap(this);return false;">
                                <img src="${pageContext.request.contextPath }/assets/images/no-image.png" alt="${product.name}" width="450">
                            </a>
                        </c:if>
                    </a>
                    <div class="product-thumb">
                        <ul class="thumb-content">
                            <c:forEach var="image" items="${product.productdetails }">
                                <li class="thumb">
                                    <c:if test = "${not empty imageData}">
                                        <a href="${path}/images/product-details1.jpg" title="thumb product view1" onclick="swap(this);return false;">
                                            <img src="${pageContext.request.contextPath }/assets/images/${image.photo}">
                                        </a>
                                    </c:if>
                                    <c:if test = "${empty imageData}">
                                        <a href="${path}/images/product-details1.jpg" title="thumb product view1" onclick="swap(this);return false;">
                                            <img src="${pageContext.request.contextPath }/assets/images/no-image.png">
                                        </a>
                                    </c:if>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>
                </div>
                <!-- End product-img-box -->
                <div class="share-tags">
                    <div class="share">
                        <span>Share this:</span>
                        <a class="facebook" href="#" title="facebook"><i class="zmdi zmdi-facebook"></i></a>
                        <a class="twitter" href="#" title="twitter"><i class="zmdi zmdi-twitter"></i></a>
                        <a class="instagram" href="#" title="instagram"><i class="zmdi zmdi-instagram"></i></a>
                        <a class="google" href="#" title="google"><i class="zmdi zmdi-google-glass"></i></a>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-sm-6">
                <div class="product-box-content" style="color: white;">
                    <div class="product-name">
                        <h1>${product.name} </h1>
                        <p class="cat">${product.category.name}</p>
                    </div>
                    <!-- End product-name -->
                    <div class="wrap-price">
                        <p class="price">$${product.unitprice}</p>
                    </div>
                    <!-- End Price -->
                    <p class="description">
                        ${product.description}
                    </p>
                    <form action="${pageContext.request.contextPath }/cart/buy" method="get" >
	                    <div class="options">
	                    	<input type="hidden" name="id" value="${product.id}">
	                        <div class="quantity">
	                            <input style="background: #313131;" type="number" size="4" class="input-text qty text" title="Qty" value="1" name="qty" max="100" min="1" step="1">
	                        </div>

	                        <!-- End quanity -->
                            <button type="submit" title="link" class="link-v2" style="background: none;">
                                <span style="color: white;">Buy now</span>
                                <i class="zmdi zmdi-shopping-cart-plus"></i>
                            </button>
	                    </div>
                    </form>
                    <!-- End Options -->
                </div>
                <!-- End product box -->
            </div>
            <!-- End col-md-6 -->
        </div>
        <!-- End product-details-content -->
        <div class="hoz-tab-container space-padding-tb-40">
            <ul class="tabs">
                <li class="item" rel="overview">Overview</li>
                <li class="item" rel="specification">Specification</li>
                <li class="item" rel="reviews">Reviews</li>
            </ul>
            <div class="tab-container">
                <div id="overview" class="tab-content">
                    ${product.content}
                </div>
                <div id="specification" class="tab-content">
                    ${product.specification}
                </div>
                <div id="reviews" class="tab-content">
                    <div class="col-md-6">
                        <div class="coment-container">
                            <div class="panel-body">
                                <ul class="media-list">
                                    <li class="media">
                                        <a class="pull-left" href="#">
                                            <img class="media-object img-circle" src="${path}/images/avatar1.jpg" alt="images">
                                        </a>
                                        <div class="media-body">
                                            <p class="date">April 9, 2016</p>
                                            <h4 class="media-heading">jennifer lopez</h4>
                                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text</p>
                                            <p class="tags">
                                                <a href="#" title="like"><i class="zmdi zmdi-favorite-outline"></i>3</a>
                                                <a href="#" title="reply"><i class="zmdi zmdi-mail-reply"></i>3</a>
                                            </p>
                                            <!-- Nested media object -->
                                            <div class="media">
                                                <a class="pull-left" href="#">
                                                    <img class="media-object img-circle" src="${path}/images/avatar2.jpg" alt="images">
                                                </a>
                                                <div class="media-body">
                                                    <p class="date">April 9, 2016</p>
                                                    <h4 class="media-heading">jennifer lopez</h4>
                                                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text</p>
                                                    <p class="tags">
                                                        <a href="#" title="like"><i class="zmdi zmdi-favorite-outline"></i>3</a>
                                                        <a href="#" title="reply"><i class="zmdi zmdi-mail-reply"></i>3</a>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="media">
                                        <a class="pull-left" href="#">
                                            <img class="media-object img-circle" src="${path}/images/avatar3.jpg" alt="images">
                                        </a>
                                        <div class="media-body">
                                            <p class="date">April 9, 2016</p>
                                            <h4 class="media-heading">jennifer lopez</h4>
                                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text</p>
                                            <p class="tags">
                                                <a href="#" title="like"><i class="zmdi zmdi-favorite-outline"></i>3</a>
                                                <a href="#" title="reply"><i class="zmdi zmdi-mail-reply"></i>3</a>
                                            </p>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!-- End comment -->
                    </div>
                    <div class="col-md-6">
                        <div class="title-ver2">
                            <h3>Add your review</h3>
                        </div>
                        <p class="vote">Vote:</p>
                        <div class="icon-rating">
                            <input type="radio" id="bird-horizontal-rating-1" name="bird-horizontal-rating" checked="">
                            <label for="bird-horizontal-rating-1"><i class="fa fa-star"></i></label>
                            <input type="radio" id="bird-horizontal-rating-2" name="bird-horizontal-rating" checked="">
                            <label for="bird-horizontal-rating-2"><i class="fa fa-star"></i></label>
                            <input type="radio" id="bird-horizontal-rating-3" name="bird-horizontal-rating">
                            <label for="bird-horizontal-rating-3"><i class="fa fa-star"></i></label>
                            <input type="radio" id="bird-horizontal-rating-4" name="bird-horizontal-rating">
                            <label for="bird-horizontal-rating-4"><i class="fa fa-star"></i></label>
                            <input type="radio" id="bird-horizontal-rating-5" name="bird-horizontal-rating">
                            <label for="bird-horizontal-rating-5"><i class="fa fa-star"></i></label>
                        </div>
                        <form class="form-horizontal">
                            <div class="form-group">
                                <label class=" control-label" for="inputName">Nick Name*</label>
                                <input type="text" class="form-control" id="inputName" placeholder="Name">
                            </div>
                            <div class="form-group">
                                <label class=" control-label" for="inputsumary">Summary of Your Review *</label>
                                <input type="text" class="form-control" id="inputsumary" placeholder="Email">
                            </div>
                            <div class="form-group">
                                <label class=" control-label" for="inputReview">Review*</label>
                                <input type="text" class="form-control" id="inputReview" placeholder="Review*">
                            </div>
                            <button class="btn link-button link-button-v2" type="submit">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- tab-container -->
        <div class="title-text">
            <h3><span>R</span>elated products</h3>
        </div>
        <!-- End title -->
        <div class="upsell-product products">
        <c:forEach items="${relatedProducts}" var="item" varStatus="loop">
            <c:import url="${pageContext.request.contextPath }/assets/images/${item.productdetails.iterator().next().photo}" var="imageOthersData" />
            <div class="item-inner">
                <div class="product">
                    <p class="product-title">
                        <a href="${pageContext.request.contextPath }/product/detail/${item.id}" title="${item.name }">${item.name }</a>
                    </p>
                    <p class="product-price"><span>price: </span>$ ${item.unitprice}</p>
                    <a class="product-images">
                        <c:if test = "${not empty imageOthersData}">
                            <img class="primary_image" src="${pageContext.request.contextPath }/assets/images/${item.productdetails.iterator().next().photo}" width="213" height="213"/>
                        </c:if>
                        <c:if test = "${empty imageOthersData}">
                            <img class="primary_image" src="${pageContext.request.contextPath }/assets/images/no-image.png" width="213" height="213"/>
                        </c:if>

                        <img class="secondary_image" src="${path}/images/products/2.jpg" alt=""/>
                    </a>
                    <div class="action">
                        <a href="#" title="add-to-cart"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
                    </div>
                </div>
            </div>
        </c:forEach>
        </div>
    </div>
    <!-- End container -->
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
<!-- End newsletter -->
<footer id="footer">
    <div class="container">
        <div class="row footer-top">
            <div class="col-md-5">
                <a class="logo" href="#" title="logo"><img src="${path}/images/Dana-menu-logo.png" tppabs="http://landing.engocreative.com/html/dama/demo/${path}/images/Dana-menu-logo.png" alt="Logo"></a>
                <p class="italic">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard.</p>
                <div class="infomation">
                    <p><i class="zmdi zmdi-pin"></i>PO Box CT16122 Collins Street West, Victoria 8007, Australia.</p>
                    <p><i class="zmdi zmdi-phone"></i>+81 (2) 345 6789</p>
                    <p><i class="zmdi zmdi-email"></i>engotheme@gmail.com</p>
                </div>
            </div>

            <div class="col-md-4">
                <h3>Quick link</h3>
                <ul class="menu">
                    <li><a href="#" title="Headphone">Headphone</a></li>
                    <li><a href="#" title="Smart watch">Smart watch</a></li>
                    <li><a href="#" title="Smartphone">Smartphone</a></li>
                    <li><a href="#" title="Video game & consoles">Video game & consoles</a></li>
                    <li><a href="#" title="Laptop">Laptop</a></li>
                    <li><a href="#" title="Televison">Televison</a></li>
                    <li><a href="#" title="Home">Home</a></li>
                    <li><a href="#" title="About us">About us</a></li>
                    <li><a href="#" title="Blog">Blog</a></li>
                    <li><a href="#" title="Service">Service</a></li>
                    <li><a href="#" title="Contact us">Contact us</a></li>
                </ul>
            </div>
            <div class="col-md-3">
                <h3>Customer care</h3>
                <ul class="menu">
                    <li><a href="#" title="My account">My account</a></li>
                    <li><a href="#" title="Order tracking">Order tracking</a></li>
                    <li><a href="#" title="wish list">wish list</a></li>
                    <li><a href="#" title="customer service">customer service</a></li>
                    <li><a href="#" title="Returns/ Exchage">Returns/ Exchage</a></li>
                    <li><a href="#" title="FAQS">FAQS</a></li>
                    <li><a href="#" title="Product support">Product support</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="footer-bottom">
        <div class="container">
            <div class="col-md-8">
                <p>&copy; COPYRIGHT 2016 BY ENGOTHEME</p>
                <a href="" title="facebook"><i class="zmdi zmdi-facebook"></i></a>
                <a href="#" title="google"><i class="zmdi zmdi-google-plus"></i></a>
                <a href="#" title="instagram"><i class="zmdi zmdi-instagram"></i></a>
                <a href="#" title="twitter"><i class="zmdi zmdi-twitter"></i></a>
            </div>
            <div class="col-md-4">
                <a href="#" title="Payment"><img src="${path}/images/Hermes-footer-payment.png" alt="payment"></a>
            </div>
        </div>
    </div>
    <!-- End container -->
</footer>