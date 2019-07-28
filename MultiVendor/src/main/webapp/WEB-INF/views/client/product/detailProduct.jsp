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
                        <li class="level1"><a href="#" title="Hopme">Home</a>
                            <ul class="menu-level-1">
                                <li class="level2"><a href="home_v1.html" title="Home 1" target="_blank">Home 1</a></li>
                                <li class="level2"><a href="home_v2.html" title="Home 2" target="_blank">Home 2</a></li>
                                <li class="level2"><a href="home_v3.html" title="Home 3" target="_blank">Home 3</a></li>
                            </ul>
                        </li>
                        <li class="level1"><a href="#" title="Hopme">Shop</a>
                            <ul class="menu-level-1">
                                <li class="level2"><a href="shop-listing1.html" title="Shop Listing" target="_blank">Shop Listing 1</a></li>
                                <li class="level2"><a href="shop-listing2.html" title="Shop Listing" target="_blank">Shop Listing 2</a></li>
                                <li class="level2"><a href="shop-listing3.html" title="Shop Listing" target="_blank">Shop Listing 3</a></li>
                                <li class="level2"><a href="shop-listing4.html" title="Shop Listing" target="_blank">Shop Listing 4</a></li>
                                <li class="level2"><a href="product-detail.html" title="product detail" target="_blank">Products Details</a></li>
                                <li class="level2"><a href="shopping-cart.html" title="productcart" target="_blank">Shopping Cart</a></li>
                                <li class="level2"><a href="compare.html" title="product compare" target="_blank">Compare</a></li>
                            </ul>
                        </li>
                        <li class="level1 active"><a href="#" title="Blog">Blog</a>
                            <ul class="menu-level-1">
                                <li class="level2"><a href="blog-1.html" title="Blog 1" target="_blank">Blog 1</a></li>
                                <li class="level2"><a href="blog-2.html" tppabs="http://landing.engocreative.com/html/dama/demo/blog-2.html" title="Blog 2" target="_blank">Blog 2</a></li>
                                <li class="level2"><a href="blog-details.html" tppabs="http://landing.engocreative.com/html/dama/demo/blog-details.html" title="Blog Details" target="_blank">Blog Details</a></li>
                            </ul>
                        </li>
                        <li class="level1"><a href="#" title="Page">Page</a>
                            <ul class="menu-level-1">
                                <li class="level2"><a href="contact.html" tppabs="http://landing.engocreative.com/html/dama/demo/contact.html" title="" target="_blank">Contact</a></li>
                                <li class="level2"><a href="contact2.html" tppabs="http://landing.engocreative.com/html/dama/demo/contact2.html" title="" target="_blank">Contact 2</a></li>
                                <li class="level2"><a href="404.html" tppabs="http://landing.engocreative.com/html/dama/demo/404.html" title="Page 404" target="_blank">Page 404</a></li>
                                <li class="level2"><a href="checkout.html" tppabs="http://landing.engocreative.com/html/dama/demo/checkout.html" title="check out" target="_blank">Check out</a></li>
                                <li class="level2"><a href="undercontruction.html" tppabs="http://landing.engocreative.com/html/dama/demo/undercontruction.html" title="Undercontruction" target="_blank">Undercontruction</a></li>
                            </ul>
                        </li>
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
            <li class="level1"><a href="#" title="Headphone">Headphone</a>
                <ul class="menu-level-1">
                    <li class="level2"><a href="#" title="Home 1" target="_blank">Headphone 1</a></li>
                    <li class="level2"><a href="#" title="Home 2" target="_blank">Headphone 2</a></li>
                    <li class="level2"><a href="#" title="Home 3" target="_blank">Headphone 3</a></li>
                    <li class="level2"><a href="#" title="Home 4" target="_blank">Headphone 4</a></li>
                </ul>
            </li>
            <li class="level1">
                <a href="#" title="Smart watch">Smart watch</a>
                <ul class="menu-level-1">
                    <li class="level2">
                        <a href="#">Laptop</a>
                        <ul class="menu-level-2">
                            <li class="level3"><a href="#" title="Apple">Apple</a></li>
                            <li class="level3"><a href="#" title="Samsung">Samsung</a></li>
                            <li class="level3"><a href="#" title="Sony">Sony</a></li>
                            <li class="level3"><a href="#" title="HTC">HTC</a></li>
                            <li class="level3"><a href="#" title="Xaomi">Xaomi</a></li>
                            <li class="level3"><a href="#" title="LG">LG</a></li>
                        </ul>
                    </li>
                    <li class="level2">
                        <a href="#">Accessories</a>
                        <ul class="menu-level-2">
                            <li class="level3"><a href="#" title="Submenu1">Submenu1</a></li>
                            <li class="level3"><a href="#" title="Submenu2">Submenu2</a></li>
                            <li class="level3"><a href="#" title="Submenu3">Submenu3</a></li>
                            <li class="level3"><a href="#" title="Submenu4">Submenu4</a></li>
                            <li class="level3"><a href="#" title="Submenu5">Submenu5</a></li>
                        </ul>
                    </li>
                </ul>
            </li>
            <li class="level1"><a href="#" title="Smart phone ">Smart phone </a></li>
            <li class="level1"><a href="#">game consoles</a></li>
            <li class="level1"><a href="#" title="Laptop">Laptop</a></li>
            <li class="level1"><a href="#" title="televison">televison</a></li>
        </ul>
    </nav>
    <!-- End menu  mobile -->
    <nav class="mega-menu">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <ul class="nav navbar-nav" id="navbar">
                <li class="level1 active"><a href="#" title="Headphone">Headphone</a>
                    <ul class="menu-level-1">
                        <li class="level2"><a href="#" title="Home 1">Headphone 1</a></li>
                        <li class="level2"><a href="#" title="Home 2">Headphone 2</a></li>
                        <li class="level2"><a href="#" title="Home 3">Headphone 3</a></li>
                        <li class="level2"><a href="#" title="Home 4">Headphone 4</a></li>
                    </ul>
                </li>
                <li class="level1 dropdown">
                    <a href="#" title="men">Smart watch</a>
                    <div class="sub-menu dropdown-menu">
                        <ul class="menu-level-1">
                            <li class="level2"><a href="#">Laptop</a>
                                <ul class="menu-level-2">
                                    <li class="level3"><a href="#" title="Apple">Apple</a></li>
                                    <li class="level3"><a href="#" title="Samsung">Samsung</a></li>
                                    <li class="level3"><a href="#" title="Sony">Sony</a></li>
                                    <li class="level3"><a href="#" title="HTC">HTC</a></li>
                                    <li class="level3"><a href="#" title="Xaomi">Xaomi</a></li>
                                    <li class="level3"><a href="#" title="LG">LG</a></li>
                                </ul>
                            </li>
                            <li class="level2"><a href="#">Accessories</a>
                                <ul class="menu-level-2">
                                    <li class="level3"><a href="#" title="Submenu1">Submenu1</a></li>
                                    <li class="level3"><a href="#" title="Submenu2">Submenu2</a></li>
                                    <li class="level3"><a href="#" title="Submenu3">Submenu3</a></li>
                                    <li class="level3"><a href="#" title="Submenu4">Submenu4</a></li>
                                    <li class="level3"><a href="#" title="Submenu5">Submenu5</a></li>
                                </ul>
                            </li>
                            <li class="level2">
                                <img src="${path}/images/products/1.jpg" alt="Sub-Menu" />
                            </li>
                        </ul>
                    </div>
                    <!-- End Dropdow Menu -->
                </li>
                <li class="level1"><a href="#" title="Smart phone ">Smart phone </a></li>
                <li class="level1"><a href="#">game consoles</a></li>
                <li class="level1"><a href="#" title="Laptop">Laptop</a></li>
                <li class="level1"><a href="#" title="televison">televison</a></li>
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
                <div class="product-box-content">
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
                    <div class="options">
                        <div class="quantity">
                            <input type="number" size="4" class="input-text qty text" title="Qty" value="1" name="quantity" max="100" min="1" step="1">
                        </div>
                        <!-- End quanity -->
                        <a title="link" href="#" class="link-v2"><span>Buy now</span><i class="zmdi zmdi-shopping-cart-plus"></i></a>
                    </div>
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
                    <h2>About This Product</h2>
                    <p><b>The Next Big Thing Is Here</b> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an
                        unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic
                        typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.</p>
                    <div class="panel-body">
                        <div class="media images col-md-6">
                            <div class="pull-right">
                                <img src="${path}/images/product-details-tab-1.jpg" class="media-object img-circle" alt="images">
                            </div>
                            <div class="media-body">
                                <h4 class="media-heading">Circular Interface</h4>
                                <p>A revolutionary design keeps everything you need at your fingertips. The circular interface and unique rotating bezel let you navigate through notifications, apps and widgets quickly without covering the display.</p>
                                <!-- Nested media object -->
                            </div>
                        </div>
                        <div class="media images col-md-6">
                            <div class="pull-right">
                                <img src="${path}/images/product-details-tab-2.jpg" class="media-object img-circle" alt="images">
                            </div>
                            <div class="media-body">
                                <h4 class="media-heading">3G or 4G2 Network Connectivity</h4>
                                <p>A revolutionary design keeps everything you need at your fingertips. The circular interface and unique rotating bezel let you navigate through notifications, apps and widgets quickly without covering the display.</p>
                            </div>
                        </div>
                        <div class="media images col-md-12">
                            <div class="pull-right">
                                <img src="${path}/images/product-details-tab-3.jpg" class="media-object img-circle" alt="images">
                            </div>
                            <div class="media-body">
                                <h4 class="media-heading">Circular Interface</h4>
                                <p>A revolutionary design keeps everything you need at your fingertips. The circular interface and unique rotating bezel let you navigate through notifications, apps and widgets quickly without covering the display.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="specification" class="tab-content">
                    <table class="table">
                        <tr>
                            <td>Category</td>
                            <td><b>Gear S2 3G/4G</b></td>
                        </tr>
                        <tr>
                            <td>Carrier</td>
                            <td><b>AT&T</b></td>
                        </tr>
                        <tr>
                            <td>Form Factor</td>
                            <td>Wearable Tech</td>
                        </tr>
                        <tr>
                            <td>Color</td>
                            <td><b>Dark Gray</b></td>
                        </tr>
                        <tr>
                            <td>OS</td>
                            <td><b>Tizen based wearable platform</b></td>
                        </tr>
                        <tr>
                            <td>Size</td>
                            <td><b>51g</b></td>
                        </tr>
                        <tr>
                            <td>Battery</td>
                            <td><b>BATTERY TYPE AND SIZE</b></td>
                        </tr>
                        <tr>
                            <td>Battery</td>
                            <td><b>INTERNAL MEMORY </b></td>
                        </tr>
                    </table>
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