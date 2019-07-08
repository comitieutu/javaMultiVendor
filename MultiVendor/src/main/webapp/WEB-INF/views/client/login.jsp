<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags/client"%>

<c:set var="path" value="${pageContext.request.contextPath }/resources/client"></c:set>
<header id="header" class="header-v3">
    <mt:topbar></mt:topbar>
    
    <div class="header-top">
        <div class="container">
        <div class="inner-container">
            <p class="icon-menu-mobile"><span class="icon-bar"></span></p>
            <div class="logo"><a href="#" title="Dana-Logo"><img src="assets/images/Dana-menu-logo.png" tppabs="http://landing.engocreative.com/html/dama/demo/assets/images/Dana-menu-logo.png" alt="Dana-Logo"></a></div>
            <div class="menu-top">
                <ul class="nav-top">
                    <li class="level1"><a href="#" title="Hopme">Home</a>
                        <ul class="menu-level-1">
                            <li class="level2"><a href="home_v1.html" tppabs="http://landing.engocreative.com/html/dama/demo/home_v1.html" title="Home 1" target="_blank">Home 1</a></li>
                            <li class="level2"><a href="home_v2.html" tppabs="http://landing.engocreative.com/html/dama/demo/home_v2.html" title="Home 2" target="_blank">Home 2</a></li>
                            <li class="level2"><a href="home_v3.html" tppabs="http://landing.engocreative.com/html/dama/demo/home_v3.html" title="Home 3" target="_blank">Home 3</a></li>
                        </ul>
                    </li>
                    <li class="level1"><a href="#" title="Hopme">Shop</a>
                        <ul class="menu-level-1">
                            <li class="level2"><a href="shop-listing1.html" tppabs="http://landing.engocreative.com/html/dama/demo/shop-listing1.html" title="Shop Listing" target="_blank">Shop Listing 1</a></li>
                            <li class="level2"><a href="shop-listing2.html" tppabs="http://landing.engocreative.com/html/dama/demo/shop-listing2.html" title="Shop Listing" target="_blank">Shop Listing 2</a></li>
                            <li class="level2"><a href="shop-listing3.html" tppabs="http://landing.engocreative.com/html/dama/demo/shop-listing3.html" title="Shop Listing" target="_blank">Shop Listing 3</a></li>
                            <li class="level2"><a href="shop-listing4.html" tppabs="http://landing.engocreative.com/html/dama/demo/shop-listing4.html" title="Shop Listing" target="_blank">Shop Listing 4</a></li>
                            <li class="level2"><a href="product-detail.html" tppabs="http://landing.engocreative.com/html/dama/demo/product-detail.html" title="product detail" target="_blank">Products Details</a></li>
                            <li class="level2"><a href="shopping-cart.html" tppabs="http://landing.engocreative.com/html/dama/demo/shopping-cart.html" title="productcart" target="_blank">Shopping Cart</a></li>
                            <li class="level2"><a href="compare.html" tppabs="http://landing.engocreative.com/html/dama/demo/compare.html" title="product compare" target="_blank">Compare</a></li>
                        </ul>
                    </li>
                    <li class="level1 active"><a href="#" title="Blog">Blog</a>
                        <ul class="menu-level-1">
                            <li class="level2"><a href="blog-1.html" tppabs="http://landing.engocreative.com/html/dama/demo/blog-1.html" title="Blog 1" target="_blank">Blog 1</a></li>
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
                    <img src="assets/images/products/1.jpg" tppabs="http://landing.engocreative.com/html/dama/demo/assets/images/products/1.jpg" alt="Sub-Menu" />
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
                    <a href="#" title="" class="cart-product-image"><img src="assets/images/products/1.jpg" tppabs="http://landing.engocreative.com/html/dama/demo/assets/images/products/1.jpg" alt="Product"></a>
                    <div class="text">
                        <p class="product-name">Duma #2145</p>
                        <p class="product-price">1 x $69.90</p>
                    </div>
                    <a href="#" class="delete-item">
                        <i class="zmdi zmdi-close-circle-o"></i>
                    </a>
                </li> 
                <li>
                    <a href="#" title="" class="cart-product-image"><img src="assets/images/products/2.jpg" tppabs="http://landing.engocreative.com/html/dama/demo/assets/images/products/2.jpg" alt="Product"></a>
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
    
</header><!-- /header -->

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
                            <input type="text" class="form-control" name="username" id="inputName" placeholder="Name">                        
                        </div>
                        <div class="form-group col-md-6">
                            <label class=" control-label" for="inputEmail">Password</label>                            
                            <input type="password" class="form-control" name="password" placeholder="Password">                   
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


