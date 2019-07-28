<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags/client"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath }/resources/client"></c:set>
<header id="header" class="header-v1">
    <mt:topbar></mt:topbar>
    
    <!-- End Top Bar -->
    <div class="header-top">
        <div class="container">
            <div class="inner-container">
                <p class="icon-menu-mobile"><span class="icon-bar"></span></p>
                <div class="logo"><a href="#" title="Dana-Logo"><img src="${path}/images/Dana-menu-logo.png"></a></div>
                <div class="search">
                    <div class="search-form">
                        <form method="get" action="#">
                            <div class="search-select">
                                <i class="zmdi zmdi-chevron-down"></i>
                                <select class="category-search" name="orderby">
                                    <option value="">Select Category</option>
                                    <option value="Headphone">Headphone</option>
                                    <option value="Smart phone">Smart phone</option>
                                    <option value="game consoles">game consoles</option>
                                    <option value="Laptop">Laptop</option>
                                    <option value="televison">televison</option>
                                </select>
                            </div>
                            <!-- End search Select -->
                            <input type="text" name="s" class="ajax_autosuggest_input ac_input" value="" placeholder="search Keywork " autocomplete="off">
                            <button class="icon-search" type="submit">
                                <i class="zmdi zmdi-search"></i>
                            </button>
                        </form>
                    </div>
                </div>
                <div class="menu-top menu-top-v2">
                    <ul class="nav-top">
                        <li class="level1"><a href="#" title="Hopme">Home</a>
                            <ul class="menu-level-1">
                                <li class="level2"><a href="home_v1.html" >Home</a></li>
                                <li class="level2"><a href="about.html"  >About us</a></li>
                                <li class="level2"><a href="contact.html" >Contact us</a></li>
                            </ul>
                        </li>
                        <li class="level1"><a href="#" title="Product">Product</a>
                            <ul class="menu-level-1">
                                <li class="level2"><a href="#" title="New" target="_blank">New</a></li>
                                <li class="level2"><a href="#" title="Featured" target="_blank">Featured</a></li>
                                <li class="level2"><a href="#" title="Sale off" target="_blank">Sale  off</a></li>

                            </ul>
                        </li>
                        <li class="level1 active"><a href="#" title="Blog">Blog</a>
                            <ul class="menu-level-1">
                                <li class="level2"><a href="#" title="New Blog" target="_blank">New Blog</a></li>
                                <li class="level2"><a href="#" title="lester" target="_blank">lester</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <!-- End menutop -->
            </div>
            <!-- End inner container -->
            <nav class="mega-menu mega-menu-v2">
                <!-- Brand and toggle get grouped for better mobile display -->
                <span class="icon-menu-header"></span>
                <ul class="nav navbar-nav" id="navbar">
                    <li class="level1"><a href="#" title="Headphone"><span class="icon-mega icon-headphone"></span></a>
                    </li>
                    <li class="level1 dropdown">
                        <a href="#" title="men"><span class="icon-mega icon-watch"></span></a>
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
                                    <img src="${path}/images/images-menu.jpg" />
                                </li>
                            </ul>
                        </div>
                        <!-- End Dropdow Menu -->
                    </li>
                    <li class="level1 dropdown"><a href="#" title="Smart phone "><span class="icon-mega icon-phone"></span></a>
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
                                    <img src="${path}/images/images-menu.jpg" />
                                </li>
                            </ul>
                        </div>
                        <!-- End Dropdow Menu -->
                    </li>
                    <li class="level1"><a href="#"><span class="icon-mega icon-game"></span></a></li>
                    <li class="level1"><a href="#" title="Laptop"><span class="icon-mega icon-laptop"></span></a></li>
                    <li class="level1"><a href="#" title="televison"><span class="icon-mega icon-televison"></span></a></li>
                </ul>
            </nav>
            <!-- End mega menu -->
            <div class="search search-v2">
                <div class="search-form">
                    <form method="get" action="#">
                        <div class="search-select dropdown">
                            select category
                            <i class="zmdi zmdi-chevron-down"></i>
                            <ul class="dropdown-menu">
                                <li><a href="#" title="category1">category1</a></li>
                                <li><a href="#" title="category2">category2</a></li>
                                <li><a href="#" title="category3">category3</a></li>
                            </ul>
                        </div>
                        <!-- End search Select -->
                        <input type="text" name="s" class="ajax_autosuggest_input ac_input" value="" placeholder="search Keywork " autocomplete="off">
                        <button class="icon-search" type="submit">
                            <i class="zmdi zmdi-search"></i>
                        </button>
                    </form>
                </div>
            </div>
        </div>
        <!-- End container -->
    </div>
    <!-- End header-top -->
    <nav class="menu-mobile">
        <ul class="nav">
            <li class="level1"><a href="#" title="Store">Store</a>
                <ul class="menu-level-1">
                    <li class="level2"><a href="home_v1.html" >Home</a></li>
                    <li class="level2"><a href="home_v2.html">about us</a></li>
                    <li class="level2"><a href="home_v3.html" >contatc us</a></li>
                </ul>
            </li>
            <li class="level1"><a href="#" title="Product">Product</a>
                <ul class="menu-level-1">
                    <li class="level2"><a href="#" title="new" target="_blank">new</a></li>
                    <li class="level2"><a href="#" title="featured" target="_blank">featured</a></li>
                    <li class="level2"><a href="#" title="sale off" target="_blank">sale off</a></li>
                </ul>
            </li>
            <li class="level1"><a href="#" title="Blog">Blog</a>
                <ul class="menu-level-1">
                    <li class="level2"><a href="#" title="new blog" target="_blank">new blog</a></li>
                    <li class="level2"><a href="#" title="lester" target="_blank">lester</a></li>
                </ul>
            </li>
            <li class="level1"><a href="#" title="Headphone">Headphone</a>
                <ul class="menu-level-1">
                    <li class="level2"><a href="home_v1.html" >Headphone 1</a></li>
                    <li class="level2"><a href="home_v2.html" >Headphone 2</a></li>
                    <li class="level2"><a href="home_v3.html" >Headphone 3</a></li>
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
    <!-- End menu mobile -->
</header><!-- /header -->

<div class="slide-show-ver1">
    <div class="container">
        <div class="tp-banner-container">
            <div class="tp-banner tp-banner-ver1" >
                <ul>
                    <!-- SLIDE  -->
                    <li data-transition="notransition" data-slotamount="6" data-masterspeed="1000" >
                        <!-- MAIN IMAGE -->
                        <img src="${path}/images/bg-slide-show.png">
                        <!-- LAYER NR. 3 -->

                        <div class="tp-caption large_bold_orange weight-600 capitalize color-white skewfromleft customout size-60 weight-800 uppercase"
                             data-x="155"
                             data-y="260"
                             data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                             data-speed="800"
                             data-start="1600"
                             data-easing="Power4.easeOut"
                             data-endspeed="300"
                             data-endeasing="Power1.easeIn"
                             data-captionhidden="on"
                             style="z-index: 9">Apple Watch
                        </div>
                        <!-- LAYER NR. 4 -->

                        <!-- LAYER NR. 5 -->
                        <div class="tp-caption large_bold_orange size-18 color-white skewfromright customout transform-none"
                             data-x="155"
                             data-y="370"
                             data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                             data-speed="800"
                             data-start="1800"
                             data-easing="Power4.easeOut"
                             data-endspeed="300"
                             data-endeasing="Power1.easeIn"
                             data-captionhidden="on"
                             style="z-index: 7">of the printing and typesetting industry. Lorem Ipsum<br> has +been the industry's <span class="text-span">Sale up to 40%</span> text ever<br> since the 1500s
                        </div>


                        <!-- LAYER NR. 8s -->
                        <div class="tp-caption skewfromleft customout link-1 link-2 height-50"
                             data-x="155"
                             data-y="500"
                             data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                             data-speed="1000"
                             data-start="1500"
                             data-easing="Power4.easeOut"
                             data-endspeed="300"
                             data-endeasing="Power1.easeIn"
                             data-captionhidden="on"
                             style="z-index: 8"><a href="#" title="Follow">Buy Now</a>
                        </div>
                        <!-- LAYER NR. 8s -->
                        <div class="tp-caption skewfromleft customout link-1 link-2 icons height-50"
                             data-x="270"
                             data-y="500"
                             data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                             data-speed="1000"
                             data-start="1500"
                             data-easing="Power4.easeOut"
                             data-endspeed="300"
                             data-endeasing="Power1.easeIn"
                             data-captionhidden="on"
                             style="z-index: 8"><a href="#" title="link">?</a>
                        </div>

                        <!-- LAYER NR. 9 -->
                        <div class="tp-caption skewfromright customout"
                             data-x="590"
                             data-y="130"
                             data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                             data-speed="1000"
                             data-start="1500"
                             data-easing="Power4.easeOut"
                             data-endspeed="300"
                             data-endeasing="Power1.easeIn"
                             data-captionhidden="on"
                             style="z-index: 1"><img src="${path}/images/home1-slideshow.png" alt="galaxy s7">
                        </div>
                    </li>
                    <!-- SLIDER -->
                    <!-- SLIDE  -->
                    <li data-transition="notransition" data-slotamount="6" data-masterspeed="1000" >
                        <img src="${path}/images/bg-slide-show.png" >

                        <div class="tp-caption large_bold_orange weight-600 capitalize color-white skewfromleft customout size-60 weight-800 uppercase"
                             data-x="155"
                             data-y="260"
                             data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                             data-speed="800"
                             data-start="1600"
                             data-easing="Power4.easeOut"
                             data-endspeed="300"
                             data-endeasing="Power1.easeIn"
                             data-captionhidden="on"
                             style="z-index: 9">Apple Watch
                        </div>

                        <div class="tp-caption large_bold_orange size-18 color-white skewfromright customout transform-none"
                             data-x="155"
                             data-y="370"
                             data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                             data-speed="800"
                             data-start="1800"
                             data-easing="Power4.easeOut"
                             data-endspeed="300"
                             data-endeasing="Power1.easeIn"
                             data-captionhidden="on"
                             style="z-index: 7">of the printing and typesetting industry. Lorem Ipsum<br> has been the industry's <span class="text-span">Sale up to 40%</span> text ever<br> since the 1500s
                        </div>


                        <div class="tp-caption skewfromleft customout link-1 link-2 height-50"
                             data-x="155"
                             data-y="500"
                             data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                             data-speed="1000"
                             data-start="1500"
                             data-easing="Power4.easeOut"
                             data-endspeed="300"
                             data-endeasing="Power1.easeIn"
                             data-captionhidden="on"
                             style="z-index: 8"><a href="#" title="Follow">Buy Now</a>
                        </div>

                        <div class="tp-caption skewfromleft customout link-1 link-2 icons height-50"
                             data-x="270"
                             data-y="500"
                             data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                             data-speed="1000"
                             data-start="1500"
                             data-easing="Power4.easeOut"
                             data-endspeed="300"
                             data-endeasing="Power1.easeIn"
                             data-captionhidden="on"
                             style="z-index: 8"><a href="#" title="link">?</a>
                        </div>

                        <div class="tp-caption skewfromright customout"
                             data-x="590"
                             data-y="130"
                             data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                             data-speed="1000"
                             data-start="1500"
                             data-easing="Power4.easeOut"
                             data-endspeed="300"
                             data-endeasing="Power1.easeIn"
                             data-captionhidden="on"
                             style="z-index: 1"><img src="${path}/images/home1-slideshow.png" alt="galaxy s7">
                        </div>
                    </li>
                    <!-- SLIDER -->
                </ul>
                <div class="tp-bannertimer"></div>
            </div>
            <!-- End container -->
        </div>
        <!-- End tp-banner -->
        <div class="social">
            <a title="facebook" href="#" class="facebook"><i class="zmdi zmdi-facebook"></i></a>
            <a title="twitter" href="#" class="twitter"><i class="zmdi zmdi-twitter"></i></a>
            <a title="instagram" href="#" class="instagram"><i class="zmdi zmdi-instagram"></i></a>
            <a title="google" href="#" class="google"><i class="zmdi zmdi-google-glass"></i></a>
            <!-- End cart -->
        </div>
    </div>
</div>
<!-- End Slide-Show -->

<div class="main-content">
    <div class="slider-product popular-product tabs-right space-padding-tb-50">
        <div class="container">
            <div class="title-text">
                <h3><span>P</span>opular Product</h3>
            </div>
            <ul class="tabs">
                <li class="item" rel="tab_01">Tables</li>
                <li class="item" rel="tab_02">Chairs</li>
                <li class="item" rel="tab_03">Sofas</li>
                <li class="item" rel="tab_04">Sofas</li>
                <li class="item" rel="tab_05">Sofas</li>
                <li class="item" rel="tab_06">Sofas</li>
            </ul>
            <div class="tab-container space-30">
                <div id="tab_01" class="tab-content">
                    <div class="products">
                        <c:forEach items="${products}" var="item" varStatus="loop">
                            <c:if test="${loop.first}">
                                <div class="product">
                                    <div class="wrap-title">
                                        <p class="product-title">Mota SmartWatch G2 Pro</p>
                                        <p class="product-price"><span>Price: </span>$ 250.00</p>
                                        <ul class="description">
                                            <li>Windows 10</li>
                                            <li>Intel Quad Core Processors</li>
                                            <li>NVIDIA GeForce GTX 950M Graphics Card</li>
                                        </ul>
                                    </div>
                                    <!-- End wrap-title -->
                                    <div class="product-images">
                                        <div class="slide-product-images">
                                            <div class="items" data-thumb='<img class="primary_image" src="${path}/images/Dana-home1-product1.jpg" alt=""/>'>
                                                <a href="#" title="products">
                                                    <img class="primary_image" src="${path}/images/Dana-home1-product1.jpg" alt=""/>
                                                </a>
                                            </div>
                                            <div class="items" data-thumb='<img class="primary_image" src="${path}/images/Dana-home1-product2.jpg" alt=""/>'>
                                                <a href="#" title="products">
                                                    <img class="primary_image" src="${path}/images/Dana-home1-product2.jpg" alt=""/>
                                                </a>
                                            </div>
                                            <div class="items" data-thumb='<img class="primary_image" src="${path}/images/Dana-home1-product3.jpg" alt=""/>'>
                                                <a href="#" title="products">
                                                    <img class="primary_image" src="${path}/images/Dana-home1-product3.jpg" alt=""/>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="action">
                                        <a href="#" class="refresh"><i class="zmdi zmdi-refresh-sync"></i></a>
                                        <a title="Like" href="#"><i class="zmdi zmdi-favorite-outline"></i></a>
                                        <a title="add-to-cart" href="#"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
                                    </div>
                                </div>
                            </c:if>
                            <div class="product">
                                <div class="wrap-title">
                                    <p class="product-title">Sony smartwatch 2 sw2</p>
                                    <p class="product-price"><span>Price: </span>$ 250.00</p>
                                </div>
                                <!-- End wrap-title -->
                                <a class="product-images" href="#" title="">
                                    <img class="primary_image" src="${path}/images/Dana-home1-product2.jpg" alt=""/>
                                </a>
                                <div class="action">
                                    <a href="#" class="refresh"><i class="zmdi zmdi-refresh-sync"></i></a>
                                    <a title="Like" href="#"><i class="zmdi zmdi-favorite-outline"></i></a>
                                    <a title="add-to-cart" href="#"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                    <!-- End product-tab-content products                                     -->
                </div>
                <!-- End Tables -->
                <div id="tab_02" class="tab-content">
                    <div class="products">
                        <div class="product">
                            <div class="wrap-title">
                                <p class="product-title">Sony smartwatch 2 sw2</p>
                                <p class="product-price"><span>Price: </span>$ 250.00</p>
                            </div>
                            <!-- End wrap-title -->
                            <div class="product-images">
                                <div class="slide-product-images">
                                    <div class="items" data-thumb='<img class="primary_image" src="${path}/images/products/5.jpg" alt=""/>'>
                                        <a href="#" title="products">
                                            <img class="primary_image" src="${path}/images/products/5.jpg" alt=""/>
                                        </a>
                                    </div>
                                    <div class="items" data-thumb='<img class="primary_image" src="${path}/images/products/6.jpg" alt=""/>'>
                                        <a href="#" title="products">
                                            <img class="primary_image" src="${path}/images/products/6.jpg" alt=""/>
                                        </a>
                                    </div>
                                    <div class="items" data-thumb='<img class="primary_image" src="${path}/images/products/7.jpg" alt=""/>'>
                                        <a href="#" title="products">
                                            <img class="primary_image" src="${path}/images/products/7.jpg" alt=""/>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="action">
                                <a href="#" class="refresh"><i class="zmdi zmdi-refresh-sync"></i></a>
                                <a title="Like" href="#"><i class="zmdi zmdi-favorite-outline"></i></a>
                                <a title="add-to-cart" href="#"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
                            </div>
                        </div>
                        <!-- End product -->
                        <div class="product">
                            <div class="wrap-title">
                                <p class="product-title">Sony smartwatch 2 sw2</p>
                                <p class="product-price"><span>Price: </span>$ 250.00</p>
                            </div>
                            <!-- End wrap-title -->
                            <a class="product-images" href="#" title="">
                                <img class="primary_image" src="${path}/images/Dana-home1-product1.jpg" alt=""/>
                            </a>
                            <div class="action">
                                <a href="#" class="refresh"><i class="zmdi zmdi-refresh-sync"></i></a>
                                <a title="Like" href="#"><i class="zmdi zmdi-favorite-outline"></i></a>
                                <a title="add-to-cart" href="#"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
                            </div>
                        </div>
                        <!-- End product -->
                        <div class="product">
                            <div class="wrap-title">
                                <p class="product-title">Sony smartwatch 2 sw2</p>
                                <p class="product-price"><span>Price: </span>$ 250.00</p>
                            </div>
                            <!-- End wrap-title -->
                            <a class="product-images" href="#" title="">
                                <img class="primary_image" src="${path}/images/Dana-home1-product4.jpg" alt=""/>
                            </a>
                            <div class="action">
                                <a href="#" class="refresh"><i class="zmdi zmdi-refresh-sync"></i></a>
                                <a title="Like" href="#"><i class="zmdi zmdi-favorite-outline"></i></a>
                                <a title="add-to-cart" href="#"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
                            </div>
                        </div>
                        <!-- End product -->
                        <div class="product">
                            <div class="wrap-title">
                                <p class="product-title">Sony smartwatch 2 sw2</p>
                                <p class="product-price"><span>Price: </span>$ 250.00</p>
                            </div>
                            <!-- End wrap-title -->
                            <a class="product-images" href="#" title="">
                                <img class="primary_image" src="${path}/images/Dana-home1-product3.jpg" alt=""/>
                            </a>
                            <div class="action">
                                <a href="#" class="refresh"><i class="zmdi zmdi-refresh-sync"></i></a>
                                <a title="Like" href="#"><i class="zmdi zmdi-favorite-outline"></i></a>
                                <a title="add-to-cart" href="#"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
                            </div>
                        </div>
                        <!-- End product -->
                        <div class="product">
                            <div class="wrap-title">
                                <p class="product-title">Sony smartwatch 2 sw2</p>
                                <p class="product-price"><span>Price: </span>$ 250.00</p>
                            </div>
                            <!-- End wrap-title -->
                            <a class="product-images" href="#" title="">
                                <img class="primary_image" src="${path}/images/Dana-home1-product6.jpg" alt=""/>
                            </a>
                            <div class="action">
                                <a href="#" class="refresh"><i class="zmdi zmdi-refresh-sync"></i></a>
                                <a title="Like" href="#"><i class="zmdi zmdi-favorite-outline"></i></a>
                                <a title="add-to-cart" href="#"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
                            </div>
                        </div>
                        <!-- End product -->
                        <div class="product">
                            <div class="wrap-title">
                                <p class="product-title">Sony smartwatch 2 sw2</p>
                                <p class="product-price"><span>Price: </span>$ 250.00</p>
                            </div>
                            <!-- End wrap-title -->
                            <a class="product-images" href="#" title="">
                                <img class="primary_image" src="${path}/images/Dana-home1-product3.jpg" alt=""/>
                            </a>
                            <div class="action">
                                <a href="#" class="refresh"><i class="zmdi zmdi-refresh-sync"></i></a>
                                <a title="Like" href="#"><i class="zmdi zmdi-favorite-outline"></i></a>
                                <a title="add-to-cart" href="#"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
                            </div>
                        </div>
                        <!-- End product -->
                        <div class="product">
                            <div class="wrap-title">
                                <p class="product-title">Sony smartwatch 2 sw2</p>
                                <p class="product-price"><span>Price: </span>$ 250.00</p>
                            </div>
                            <!-- End wrap-title -->
                            <a class="product-images" href="#" title="">
                                <img class="primary_image" src="${path}/images/Dana-home1-product4.jpg" alt=""/>
                            </a>
                            <div class="action">
                                <a href="#" class="refresh"><i class="zmdi zmdi-refresh-sync"></i></a>
                                <a title="Like" href="#"><i class="zmdi zmdi-favorite-outline"></i></a>
                                <a title="add-to-cart" href="#"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
                            </div>
                        </div>
                        <!-- End product -->
                    </div>
                    <!-- End product-tab-content products  -->
                </div>
                <!-- End Chairs -->
                <div id="tab_03" class="tab-content">
                    <div class="products">
                        <div class="product">
                            <div class="wrap-title">
                                <p class="product-title">Sony smartwatch 2 sw2</p>
                                <p class="product-price"><span>Price: </span>$ 250.00</p>
                            </div>
                            <!-- End wrap-title -->
                            <div class="product-images">
                                <div class="slide-product-images">
                                    <div class="items" data-thumb='<img class="primary_image" src="${path}/images/products/4.jpg" alt=""/>'>
                                        <a href="#" title="products">
                                            <img class="primary_image" src="${path}/images/products/4.jpg" alt=""/>
                                        </a>
                                    </div>
                                    <div class="items" data-thumb='<img class="primary_image" src="${path}/images/products/5.jpg" alt=""/>'>
                                        <a href="#" title="products">
                                            <img class="primary_image" src="${path}/images/products/5.jpg" alt=""/>
                                        </a>
                                    </div>
                                    <div class="items" data-thumb='<img class="primary_image" src="${path}/images/products/6.jpg" alt=""/>'>
                                        <a href="#" title="products">
                                            <img class="primary_image" src="${path}/images/products/6.jpg" alt=""/>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="action">
                                <a href="#" class="refresh"><i class="zmdi zmdi-refresh-sync"></i></a>
                                <a title="Like" href="#"><i class="zmdi zmdi-favorite-outline"></i></a>
                                <a title="add-to-cart" href="#"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
                            </div>
                        </div>
                        <!-- End product -->
                        <div class="product">
                            <div class="wrap-title">
                                <p class="product-title">Sony smartwatch 2 sw2</p>
                                <p class="product-price"><span>Price: </span>$ 250.00</p>
                            </div>
                            <!-- End wrap-title -->
                            <a class="product-images" href="#" title="">
                                <img class="primary_image" src="${path}/images/Dana-home1-product5.jpg" alt=""/>
                            </a>
                            <div class="action">
                                <a href="#" class="refresh"><i class="zmdi zmdi-refresh-sync"></i></a>
                                <a title="Like" href="#"><i class="zmdi zmdi-favorite-outline"></i></a>
                                <a title="add-to-cart" href="#"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
                            </div>
                        </div>
                        <!-- End product -->
                        <div class="product">
                            <div class="wrap-title">
                                <p class="product-title">Sony smartwatch 2 sw2</p>
                                <p class="product-price"><span>Price: </span>$ 250.00</p>
                            </div>
                            <!-- End wrap-title -->
                            <a class="product-images" href="#" title="">
                                <img class="primary_image" src="${path}/images/Dana-home1-product4.jpg" alt=""/>
                            </a>
                            <div class="action">
                                <a href="#" class="refresh"><i class="zmdi zmdi-refresh-sync"></i></a>
                                <a title="Like" href="#"><i class="zmdi zmdi-favorite-outline"></i></a>
                                <a title="add-to-cart" href="#"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
                            </div>
                        </div>
                        <!-- End product -->
                        <div class="product">
                            <div class="wrap-title">
                                <p class="product-title">Sony smartwatch 2 sw2</p>
                                <p class="product-price"><span>Price: </span>$ 250.00</p>
                            </div>
                            <!-- End wrap-title -->
                            <a class="product-images" href="#" title="">
                                <img class="primary_image" src="${path}/images/Dana-home1-product3.jpg" alt=""/>
                            </a>
                            <div class="action">
                                <a href="#" class="refresh"><i class="zmdi zmdi-refresh-sync"></i></a>
                                <a title="Like" href="#"><i class="zmdi zmdi-favorite-outline"></i></a>
                                <a title="add-to-cart" href="#"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
                            </div>
                        </div>
                        <!-- End product -->
                        <div class="product">
                            <div class="wrap-title">
                                <p class="product-title">Sony smartwatch 2 sw2</p>
                                <p class="product-price"><span>Price: </span>$ 250.00</p>
                            </div>
                            <!-- End wrap-title -->
                            <a class="product-images" href="#" title="">
                                <img class="primary_image" src="${path}/images/Dana-home1-product2.jpg" alt=""/>
                            </a>
                            <div class="action">
                                <a href="#" class="refresh"><i class="zmdi zmdi-refresh-sync"></i></a>
                                <a title="Like" href="#"><i class="zmdi zmdi-favorite-outline"></i></a>
                                <a title="add-to-cart" href="#"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
                            </div>
                        </div>
                        <!-- End product -->
                        <div class="product">
                            <div class="wrap-title">
                                <p class="product-title">Sony smartwatch 2 sw2</p>
                                <p class="product-price"><span>Price: </span>$ 250.00</p>
                            </div>
                            <!-- End wrap-title -->
                            <a class="product-images" href="#" title="">
                                <img class="primary_image" src="${path}/images/Dana-home1-product6.jpg" alt=""/>
                            </a>
                            <div class="action">
                                <a href="#" class="refresh"><i class="zmdi zmdi-refresh-sync"></i></a>
                                <a title="Like" href="#"><i class="zmdi zmdi-favorite-outline"></i></a>
                                <a title="add-to-cart" href="#"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
                            </div>
                        </div>
                        <!-- End product -->
                        <div class="product">
                            <div class="wrap-title">
                                <p class="product-title">Sony smartwatch 2 sw2</p>
                                <p class="product-price"><span>Price: </span>$ 250.00</p>
                            </div>
                            <!-- End wrap-title -->
                            <a class="product-images" href="#" title="">
                                <img class="primary_image" src="${path}/images/Dana-home1-product1.jpg" alt=""/>
                            </a>
                            <div class="action">
                                <a href="#" class="refresh"><i class="zmdi zmdi-refresh-sync"></i></a>
                                <a title="Like" href="#"><i class="zmdi zmdi-favorite-outline"></i></a>
                                <a title="add-to-cart" href="#"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
                            </div>
                        </div>
                        <!-- End product -->
                    </div>
                    <!-- End product-tab-content products  -->
                </div>
                <!-- End sofas -->
                <div id="tab_04" class="tab-content">
                    <div class="products">
                        <div class="product">
                            <div class="wrap-title">
                                <p class="product-title">Sony smartwatch 2 sw2</p>
                                <p class="product-price"><span>Price: </span>$ 250.00</p>
                            </div>
                            <!-- End wrap-title -->
                            <div class="product-images">
                                <div class="slide-product-images">
                                    <div class="items" data-thumb='<img class="primary_image" src="${path}/images/products/1.jpg" alt=""/>'>
                                        <a href="#" title="products">
                                            <img class="primary_image" src="${path}/images/products/1.jpg" alt=""/>
                                        </a>
                                    </div>
                                    <div class="items" data-thumb='<img class="primary_image" src="${path}/images/products/6.jpg" alt=""/>'>
                                        <a href="#" title="products">
                                            <img class="primary_image" src="${path}/images/products/6.jpg" alt=""/>
                                        </a>
                                    </div>
                                    <div class="items" data-thumb='<img class="primary_image" src="${path}/images/products/7.jpg" alt=""/>'>
                                        <a href="#" title="products">
                                            <img class="primary_image" src="${path}/images/products/7.jpg" alt=""/>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="action">
                                <a href="#" class="refresh"><i class="zmdi zmdi-refresh-sync"></i></a>
                                <a title="Like" href="#"><i class="zmdi zmdi-favorite-outline"></i></a>
                                <a title="add-to-cart" href="#"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
                            </div>
                        </div>
                        <!-- End product -->
                        <div class="product">
                            <div class="wrap-title">
                                <p class="product-title">Sony smartwatch 2 sw2</p>
                                <p class="product-price"><span>Price: </span>$ 250.00</p>
                            </div>
                            <!-- End wrap-title -->
                            <a class="product-images" href="#" title="">
                                <img class="primary_image" src="${path}/images/Dana-home1-product4.jpg" alt=""/>
                            </a>
                            <div class="action">
                                <a href="#" class="refresh"><i class="zmdi zmdi-refresh-sync"></i></a>
                                <a title="Like" href="#"><i class="zmdi zmdi-favorite-outline"></i></a>
                                <a title="add-to-cart" href="#"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
                            </div>
                        </div>
                        <!-- End product -->
                        <div class="product">
                            <div class="wrap-title">
                                <p class="product-title">Sony smartwatch 2 sw2</p>
                                <p class="product-price"><span>Price: </span>$ 250.00</p>
                            </div>
                            <!-- End wrap-title -->
                            <a class="product-images" href="#" title="">
                                <img class="primary_image" src="${path}/images/Dana-home1-product5.jpg" alt=""/>
                            </a>
                            <div class="action">
                                <a href="#" class="refresh"><i class="zmdi zmdi-refresh-sync"></i></a>
                                <a title="Like" href="#"><i class="zmdi zmdi-favorite-outline"></i></a>
                                <a title="add-to-cart" href="#"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
                            </div>
                        </div>
                        <!-- End product -->
                        <div class="product">
                            <div class="wrap-title">
                                <p class="product-title">Sony smartwatch 2 sw2</p>
                                <p class="product-price"><span>Price: </span>$ 250.00</p>
                            </div>
                            <!-- End wrap-title -->
                            <a class="product-images" href="#" title="">
                                <img class="primary_image" src="${path}/images/Dana-home1-product3.jpg" alt=""/>
                            </a>
                            <div class="action">
                                <a href="#" class="refresh"><i class="zmdi zmdi-refresh-sync"></i></a>
                                <a title="Like" href="#"><i class="zmdi zmdi-favorite-outline"></i></a>
                                <a title="add-to-cart" href="#"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
                            </div>
                        </div>
                        <!-- End product -->
                        <div class="product">
                            <div class="wrap-title">
                                <p class="product-title">Sony smartwatch 2 sw2</p>
                                <p class="product-price"><span>Price: </span>$ 250.00</p>
                            </div>
                            <!-- End wrap-title -->
                            <a class="product-images" href="#" title="">
                                <img class="primary_image" src="${path}/images/Dana-home1-product2.jpg" alt=""/>
                            </a>
                            <div class="action">
                                <a href="#" class="refresh"><i class="zmdi zmdi-refresh-sync"></i></a>
                                <a title="Like" href="#"><i class="zmdi zmdi-favorite-outline"></i></a>
                                <a title="add-to-cart" href="#"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
                            </div>
                        </div>
                        <!-- End product -->
                        <div class="product">
                            <div class="wrap-title">
                                <p class="product-title">Sony smartwatch 2 sw2</p>
                                <p class="product-price"><span>Price: </span>$ 250.00</p>
                            </div>
                            <!-- End wrap-title -->
                            <a class="product-images" href="#" title="">
                                <img class="primary_image" src="${path}/images/Dana-home1-product6.jpg" alt=""/>
                            </a>
                            <div class="action">
                                <a href="#" class="refresh"><i class="zmdi zmdi-refresh-sync"></i></a>
                                <a title="Like" href="#"><i class="zmdi zmdi-favorite-outline"></i></a>
                                <a title="add-to-cart" href="#"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
                            </div>
                        </div>
                        <!-- End product -->
                        <div class="product">
                            <div class="wrap-title">
                                <p class="product-title">Sony smartwatch 2 sw2</p>
                                <p class="product-price"><span>Price: </span>$ 250.00</p>
                            </div>
                            <!-- End wrap-title -->
                            <a class="product-images" href="#" title="">
                                <img class="primary_image" src="${path}/images/Dana-home1-product1.jpg" alt=""/>
                            </a>
                            <div class="action">
                                <a href="#" class="refresh"><i class="zmdi zmdi-refresh-sync"></i></a>
                                <a title="Like" href="#"><i class="zmdi zmdi-favorite-outline"></i></a>
                                <a title="add-to-cart" href="#"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
                            </div>
                        </div>
                        <!-- End product -->
                    </div>
                    <!-- End product-tab-content products  -->
                </div>
                <!-- End sofas -->

                <div id="tab_05" class="tab-content">
                    <div class="products">
                        <div class="product">
                            <div class="wrap-title">
                                <p class="product-title">Sony smartwatch 2 sw2</p>
                                <p class="product-price"><span>Price: </span>$ 250.00</p>
                            </div>
                            <!-- End wrap-title -->
                            <div class="product-images">
                                <div class="slide-product-images">
                                    <div class="items" data-thumb='<img class="primary_image" src="${path}/images/products/11.jpg" alt=""/>'>
                                        <a href="#" title="products">
                                            <img class="primary_image" src="${path}/images/products/11.jpg" alt=""/>
                                        </a>
                                    </div>
                                    <div class="items" data-thumb='<img class="primary_image" src="${path}/images/products/6.jpg" alt=""/>'>
                                        <a href="#" title="products">
                                            <img class="primary_image" src="${path}/images/products/6.jpg" alt=""/>
                                        </a>
                                    </div>
                                    <div class="items" data-thumb='<img class="primary_image" src="${path}/images/products/7.jpg" alt=""/>'>
                                        <a href="#" title="products">
                                            <img class="primary_image" src="${path}/images/products/7.jpg" alt=""/>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="action">
                                <a href="#" class="refresh"><i class="zmdi zmdi-refresh-sync"></i></a>
                                <a title="Like" href="#"><i class="zmdi zmdi-favorite-outline"></i></a>
                                <a title="add-to-cart" href="#"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
                            </div>
                        </div>
                        <!-- End product -->
                        <div class="product">
                            <div class="wrap-title">
                                <p class="product-title">Sony smartwatch 2 sw2</p>
                                <p class="product-price"><span>Price: </span>$ 250.00</p>
                            </div>
                            <!-- End wrap-title -->
                            <a class="product-images" href="#" title="">
                                <img class="primary_image" src="${path}/images/Dana-home1-product5.jpg" alt=""/>
                            </a>
                            <div class="action">
                                <a href="#" class="refresh"><i class="zmdi zmdi-refresh-sync"></i></a>
                                <a title="Like" href="#"><i class="zmdi zmdi-favorite-outline"></i></a>
                                <a title="add-to-cart" href="#"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
                            </div>
                        </div>
                        <!-- End product -->
                        <div class="product">
                            <div class="wrap-title">
                                <p class="product-title">Sony smartwatch 2 sw2</p>
                                <p class="product-price"><span>Price: </span>$ 250.00</p>
                            </div>
                            <!-- End wrap-title -->
                            <a class="product-images" href="#" title="">
                                <img class="primary_image" src="${path}/images/Dana-home1-product3.jpg" alt=""/>
                            </a>
                            <div class="action">
                                <a href="#" class="refresh"><i class="zmdi zmdi-refresh-sync"></i></a>
                                <a title="Like" href="#"><i class="zmdi zmdi-favorite-outline"></i></a>
                                <a title="add-to-cart" href="#"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
                            </div>
                        </div>
                        <!-- End product -->
                        <div class="product">
                            <div class="wrap-title">
                                <p class="product-title">Sony smartwatch 2 sw2</p>
                                <p class="product-price"><span>Price: </span>$ 250.00</p>
                            </div>
                            <!-- End wrap-title -->
                            <a class="product-images" href="#" title="">
                                <img class="primary_image" src="${path}/images/Dana-home1-product4.jpg" alt=""/>
                            </a>
                            <div class="action">
                                <a href="#" class="refresh"><i class="zmdi zmdi-refresh-sync"></i></a>
                                <a title="Like" href="#"><i class="zmdi zmdi-favorite-outline"></i></a>
                                <a title="add-to-cart" href="#"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
                            </div>
                        </div>
                        <!-- End product -->
                        <div class="product">
                            <div class="wrap-title">
                                <p class="product-title">Sony smartwatch 2 sw2</p>
                                <p class="product-price"><span>Price: </span>$ 250.00</p>
                            </div>
                            <!-- End wrap-title -->
                            <a class="product-images" href="#" title="">
                                <img class="primary_image" src="${path}/images/Dana-home1-product2.jpg" alt=""/>
                            </a>
                            <div class="action">
                                <a href="#" class="refresh"><i class="zmdi zmdi-refresh-sync"></i></a>
                                <a title="Like" href="#"><i class="zmdi zmdi-favorite-outline"></i></a>
                                <a title="add-to-cart" href="#"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
                            </div>
                        </div>
                        <!-- End product -->
                        <div class="product">
                            <div class="wrap-title">
                                <p class="product-title">Sony smartwatch 2 sw2</p>
                                <p class="product-price"><span>Price: </span>$ 250.00</p>
                            </div>
                            <!-- End wrap-title -->
                            <a class="product-images" href="#" title="">
                                <img class="primary_image" src="${path}/images/Dana-home1-product6.jpg" alt=""/>
                            </a>
                            <div class="action">
                                <a href="#" class="refresh"><i class="zmdi zmdi-refresh-sync"></i></a>
                                <a title="Like" href="#"><i class="zmdi zmdi-favorite-outline"></i></a>
                                <a title="add-to-cart" href="#"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
                            </div>
                        </div>
                        <!-- End product -->
                        <div class="product">
                            <div class="wrap-title">
                                <p class="product-title">Sony smartwatch 2 sw2</p>
                                <p class="product-price"><span>Price: </span>$ 250.00</p>
                            </div>
                            <!-- End wrap-title -->
                            <a class="product-images" href="#" title="">
                                <img class="primary_image" src="${path}/images/Dana-home1-product1.jpg"  alt=""/>
                            </a>
                            <div class="action">
                                <a href="#" class="refresh"><i class="zmdi zmdi-refresh-sync"></i></a>
                                <a title="Like" href="#"><i class="zmdi zmdi-favorite-outline"></i></a>
                                <a title="add-to-cart" href="#"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
                            </div>
                        </div>
                        <!-- End product -->
                    </div>
                    <!-- End product-tab-content products  -->
                </div>
                <!-- End sofas -->

                <div id="tab_06" class="tab-content">
                    <div class="products">
                        <div class="product">
                            <div class="wrap-title">
                                <p class="product-title">Sony smartwatch 2 sw2</p>
                                <p class="product-price"><span>Price: </span>$ 250.00</p>
                            </div>
                            <!-- End wrap-title -->
                            <div class="product-images">
                                <div class="slide-product-images">
                                    <div class="items" data-thumb='<img class="primary_image" src="${path}/images/products/9.jpg" alt=""/>'>
                                        <a href="#" title="products">
                                            <img class="primary_image" src="${path}/images/products/9.jpg" alt=""/>
                                        </a>
                                    </div>
                                    <div class="items" data-thumb='<img class="primary_image" src="${path}/images/products/6.jpg" alt=""/>'>
                                        <a href="#" title="products">
                                            <img class="primary_image" src="${path}/images/products/6.jpg" alt=""/>
                                        </a>
                                    </div>
                                    <div class="items" data-thumb='<img class="primary_image" src="${path}/images/products/7.jpg" alt=""/>'>
                                        <a href="#" title="products">
                                            <img class="primary_image" src="${path}/images/products/7.jpg" alt=""/>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="action">
                                <a href="#" class="refresh"><i class="zmdi zmdi-refresh-sync"></i></a>
                                <a title="Like" href="#"><i class="zmdi zmdi-favorite-outline"></i></a>
                                <a title="add-to-cart" href="#"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
                            </div>
                        </div>
                        <!-- End product -->
                        <div class="product">
                            <div class="wrap-title">
                                <p class="product-title">Sony smartwatch 2 sw2</p>
                                <p class="product-price"><span>Price: </span>$ 250.00</p>
                            </div>
                            <!-- End wrap-title -->
                            <a class="product-images" href="#" title="">
                                <img class="primary_image" src="${path}/images/Dana-home1-product2.jpg" alt=""/>
                            </a>
                            <div class="action">
                                <a href="#" class="refresh"><i class="zmdi zmdi-refresh-sync"></i></a>
                                <a title="Like" href="#"><i class="zmdi zmdi-favorite-outline"></i></a>
                                <a title="add-to-cart" href="#"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
                            </div>
                        </div>
                        <!-- End product -->
                        <div class="product">
                            <div class="wrap-title">
                                <p class="product-title">Sony smartwatch 2 sw2</p>
                                <p class="product-price"><span>Price: </span>$ 250.00</p>
                            </div>
                            <!-- End wrap-title -->
                            <a class="product-images" href="#" title="">
                                <img class="primary_image" src="${path}/images/Dana-home1-product3.jpg" alt=""/>
                            </a>
                            <div class="action">
                                <a href="#" class="refresh"><i class="zmdi zmdi-refresh-sync"></i></a>
                                <a title="Like" href="#"><i class="zmdi zmdi-favorite-outline"></i></a>
                                <a title="add-to-cart" href="#"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
                            </div>
                        </div>
                        <!-- End product -->
                        <div class="product">
                            <div class="wrap-title">
                                <p class="product-title">Sony smartwatch 2 sw2</p>
                                <p class="product-price"><span>Price: </span>$ 250.00</p>
                            </div>
                            <!-- End wrap-title -->
                            <a class="product-images" href="#" title="">
                                <img class="primary_image" src="${path}/images/Dana-home1-product4.jpg" alt=""/>
                            </a>
                            <div class="action">
                                <a href="#" class="refresh"><i class="zmdi zmdi-refresh-sync"></i></a>
                                <a title="Like" href="#"><i class="zmdi zmdi-favorite-outline"></i></a>
                                <a title="add-to-cart" href="#"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
                            </div>
                        </div>
                        <!-- End product -->
                        <div class="product">
                            <div class="wrap-title">
                                <p class="product-title">Sony smartwatch 2 sw2</p>
                                <p class="product-price"><span>Price: </span>$ 250.00</p>
                            </div>
                            <!-- End wrap-title -->
                            <a class="product-images" href="#" title="">
                                <img class="primary_image" src="${path}/images/Dana-home1-product5.jpg" alt=""/>
                            </a>
                            <div class="action">
                                <a href="#" class="refresh"><i class="zmdi zmdi-refresh-sync"></i></a>
                                <a title="Like" href="#"><i class="zmdi zmdi-favorite-outline"></i></a>
                                <a title="add-to-cart" href="#"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
                            </div>
                        </div>
                        <!-- End product -->
                        <div class="product">
                            <div class="wrap-title">
                                <p class="product-title">Sony smartwatch 2 sw2</p>
                                <p class="product-price"><span>Price: </span>$ 250.00</p>
                            </div>
                            <!-- End wrap-title -->
                            <a class="product-images" href="#" title="">
                                <img class="primary_image" src="${path}/images/Dana-home1-product1.jpg" alt=""/>
                            </a>
                            <div class="action">
                                <a href="#" class="refresh"><i class="zmdi zmdi-refresh-sync"></i></a>
                                <a title="Like" href="#"><i class="zmdi zmdi-favorite-outline"></i></a>
                                <a title="add-to-cart" href="#"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
                            </div>
                        </div>
                        <!-- End product -->
                        <div class="product">
                            <div class="wrap-title">
                                <p class="product-title">Sony smartwatch 2 sw2</p>
                                <p class="product-price"><span>Price: </span>$ 250.00</p>
                            </div>
                            <!-- End wrap-title -->
                            <a class="product-images" href="#" title="">
                                <img class="primary_image" src="${path}/images/Dana-home1-product3.jpg" alt=""/>
                            </a>
                            <div class="action">
                                <a href="#" class="refresh"><i class="zmdi zmdi-refresh-sync"></i></a>
                                <a title="Like" href="#"><i class="zmdi zmdi-favorite-outline"></i></a>
                                <a title="add-to-cart" href="#"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
                            </div>
                        </div>
                        <!-- End product -->
                    </div>
                    <!-- End product-tab-content products  -->
                </div>
                <!-- End sofas -->
            </div>
        </div>
        <!-- End container -->
    </div>
    <!-- End OurNewProduct -->

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
