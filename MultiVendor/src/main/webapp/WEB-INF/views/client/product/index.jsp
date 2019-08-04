<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form" %>
<c:set var="path" value="${pageContext.request.contextPath }/resources/client"></c:set>

<header id="header" class="header-v3">
    <div id="topbar">
        <div class="container">
            <div class="topbar-left">
                <a class="facebook" href="#" title="facebook"><i class="zmdi zmdi-facebook"></i></a>
                <a class="twitter" href="#" title="twitter"><i class="zmdi zmdi-twitter"></i></a>
                <a class="instagram" href="#" title="instagram"><i class="zmdi zmdi-instagram"></i></a>
                <a class="google" href="#" title="google"><i class="zmdi zmdi-google-glass"></i></a>

                <!-- End cart -->
            </div>
            <!-- End topBar-left -->
            <div class="topbar-right">
                <a href="#" title="Guarantee"><i class="zmdi zmdi-wrench"></i>Guarantee</a>
                <a href="#" title="Adress"><i class="zmdi zmdi-pin"></i>Store location</a>
                <a href="#" title="Dollar"><i class="zmdi zmdi-money-box"></i>Dollar (US)</a>
                <div class="wrap-sign-in cart dropdown">
                    <a class="sign-in" href="#" title="user"><i class="zmdi zmdi-account"></i>My account</a>
                    <div class="register-list cart-list dropdown-menu ">
                        <h3>My account</h3>
                        <form class="form-horizontal" method="POST">
                            <div class="acc-name">
                                <input class="form-control" type="text" placeholder="Account name" id="inputacname">
                            </div>
                            <div class="acc-pass">
                                <input class="form-control" type="text" placeholder="Password" id="inputpass">
                            </div>
                            <div class="remember">
                                <input type="checkbox" id="me" name="nar" />
                                <label for="me">remember me</label>
                                <a class="help" href="#" title="help ?">help?</a>
                            </div>
                            <button type="submit" class="link-button">Submit</button>
                        </form>
                        <h3>Or register</h3>
                        <form class="form-horizontal" method="POST">
                            <input type="text" placeholder="Your mail" id="inputmail" class="form-control">
                            <input type="text" placeholder="Password" id="inputpass1" class="form-control">
                            <button type="submit" class="link-button">register</button>
                        </form>
                        <h4>or register to</h4>
                        <div class="social">
                            <a class="facebook" href="#" title="facebook"><i class="zmdi zmdi-facebook"></i></a>
                            <a class="twitter" href="#" title="twitter"><i class="zmdi zmdi-twitter"></i></a>
                            <a class="instagram" href="#" title="instagram"><i class="zmdi zmdi-instagram"></i></a>
                            <a class="google" href="#" title="google"><i class="zmdi zmdi-google-glass"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End topbar-right -->
        </div>
        <!-- End container -->
    </div>
    <!-- End Top Bar -->
    <div class="header-top">
        <div class="container">
            <div class="inner-container">
                <p class="icon-menu-mobile"><span class="icon-bar"></span></p>
                <div class="logo"><a href="#" title="Dana-Logo"><img src="${path}/images/Dana-menu-logo.png" alt="Dana-Logo"></a></div>
                <div class="menu-top">
                    <ul class="nav-top">
                        <li class="level1"><a href="http://localhost:9596" title="Hopme">Home</a></li>
                        <li class="level1"><a href="#" title="Hopme">About Us</a></li>
                        <li class="level1 active"><a href="#" title="Blog">News</a></li>
                        <li class="level1"><a href="#" title="Page">Contact</a></li>
                    </ul>
                </div>
                <div class="search">
                    <div class="search-form">
                        <form action="#" method="get">
                            <div class="search-select">
                                <i class="zmdi zmdi-chevron-down"></i>
                                <select name="orderby" class="category-search">
                                    <option value="">Select Category</option>
                                    <option value="Headphone">Headphone</option>
                                    <option value="Smart phone">Smart phone</option>
                                    <option value="game consoles">game consoles</option>
                                    <option value="Laptop">Laptop</option>
                                    <option value="televison">televison</option>
                                </select>
                            </div>
                            <!-- End search Select -->
                            <input type="text" autocomplete="off" placeholder="search Keywork " value="" class="ajax_autosuggest_input ac_input" name="s">
                            <button type="submit" class="icon-search">
                                <i class="zmdi zmdi-search"></i>
                            </button>
                        </form>
                    </div>
                </div>
                <!-- End search -->
            </div>
            <!-- End inner container -->
        </div>
        <!-- End container -->
    </div>
    <!-- End header-top -->
    <nav class="menu-mobile">
        <ul class="nav">
            <c:forEach items="${categories}" var="item" varStatus="loop">
                <li class="level1 active">
                    <a href="${pageContext.request.contextPath }/product/category/${item.id}" title="${item.name}">
                            ${item.name}
                    </a>
                </li>
            </c:forEach>
        </ul>
    </nav>
    <!-- End menu  mobile -->
    <nav class="mega-menu">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <ul class="nav navbar-nav" id="navbar">
                <c:forEach items="${categories}" var="item" varStatus="loop">
                    <c:if test="${item.id == category.id}">
                        <li class="level1 active">
                            <a href="${pageContext.request.contextPath }/product/category/${item.id}" title="${item.name}">
                                    ${item.name}
                            </a>
                        </li>
                    </c:if>
                    <c:if test="${item.id != category.id}">
                        <li class="level1">
                            <a href="${pageContext.request.contextPath }/product/category/${item.id}" title="${item.name}">
                                    ${item.name}
                            </a>
                        </li>
                    </c:if>
                </c:forEach>
            </ul>
            <div class="menu-icon-right">
                <a class="refresh" href="#" title="twitter"><i class="zmdi zmdi-refresh-sync"></i></a>
                <a class="favor" href="#" title="sky"><i class="zmdi zmdi-favorite-outline"></i></a>

                <div class="cart dropdown">
                    <a class="icon-cart" href="#" title="Cart">
                        <i class="zmdi zmdi-shopping-cart-plus"></i>
                        <span class="cart-count">4</span>
                    </a>
                    <div class="cart-list dropdown-menu">
                        <ul class="list">
                            <li>
                                <a href="#" title="" class="cart-product-image"><img src="${path}/images/products/1.jpg" alt="Product"></a>
                                <div class="text">
                                    <p class="product-name">Duma #2145</p>
                                    <p class="product-price">1 x $69.90</p>
                                </div>
                                <a href="#" class="delete-item">
                                    <i class="zmdi zmdi-close-circle-o"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#" title="" class="cart-product-image"><img src="${path}/images/products/2.jpg" alt="Product"></a>
                                <div class="text">
                                    <p class="product-name">Duma #2145</p>
                                    <p class="product-price">1 x $69.90</p>
                                </div>
                                <a href="#" class="delete-item">
                                    <i class="zmdi zmdi-close-circle-o"></i>
                                </a>
                            </li>
                        </ul>
                        <p class="total"><span>Total cost</span> $1121.98</p>
                        <a class="checkout" href="#" title="view cart">view cart</a>
                        <a class="checkout bg-black" href="#" title="check out">Check out</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- End container -->
    </nav>
    <!-- End mega menu -->
</header><!-- /header -->
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
                        <p class="description">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
                        <div class="action">
                            <a href="#" title="add-to-cart"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
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