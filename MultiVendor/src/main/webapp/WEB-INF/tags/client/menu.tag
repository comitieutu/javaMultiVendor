<%@ tag language="java" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<div class="header-top">
    <div class="container">
    <div class="inner-container">
        <p class="icon-menu-mobile"><span class="icon-bar"></span></p>
        <div class="logo"><a href="#" title="Dana-Logo"><img src="assets/images/Dana-menu-logo.png" tppabs="http://landing.engocreative.com/html/dama/demo/assets/images/Dana-menu-logo.png" alt="Dana-Logo"></a></div>
        <div class="menu-top">
            <ul class="nav-top">
            	
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
    <li class="level1"><a href="${pageContext.request.contextPath }/" title="Hopme">Home</a></li>
   	<c:forEach var="c" items="${dynamicMenuContext.getAllMasterCategories() }">
     <li class="level1"><a href="${pageContext.request.contextPath }/${c.name}" title="${c.name}">${c.name}</a>
         <ul class="menu-level-1">
         	<c:forEach var="child" items="${dynamicMenuContext.getAllCategories() }">
         		<c:if test="${child.parent == c.id }" >
             		<li class="level2"><a href="home_v1.html" tppabs="http://landing.engocreative.com/html/dama/demo/home_v1.html" title="Home 1" target="_blank">${child.name }</a></li>
             	</c:if>
             </c:forEach>
         </ul>
     </li>
    </c:forEach>
  </ul>
  <div class="menu-icon-right">
    <a class="refresh" href="#" title="twitter"><i class="zmdi zmdi-refresh-sync"></i></a>
    <a class="favor" href="#" title="sky"><i class="zmdi zmdi-favorite-outline"></i></a>
    
    <div class="cart dropdown">
    <a class="icon-cart" href="${pageContext.request.contextPath }/cart" title="Cart">
        <i class="zmdi zmdi-shopping-cart-plus"></i>
        <span class="cart-count">4</span>
    </a>
    <div class="cart-list dropdown-menu">
        <ul class="list">
        	<c:set var="total" value="0"></c:set>
         	<c:forEach var="item" items="${sessionScope.cart }">
         		<c:set var="total" value="${total + item.product.unitprice * item.quantity }"></c:set>
	            <li>
	                <a href="#" title="" class="cart-product-image"><img src="${pageContext.request.contextPath }/assets/images/${item.product.productdetails.iterator().next().photo}" 
	                		tppabs="${pageContext.request.contextPath }/assets/images/${item.product.productdetails.iterator().next().photo}" alt="Product"></a>
	                <div class="text">
	                    <p class="product-name">${ item.product.name }</p>
	                    <p class="product-price">${item.product.unitprice }</p>
	                </div>
	                <a href="${pageContext.request.contextPath }/cart/remove/${item.product.id }" class="delete-item" onclick="return confirm('Are you sure?')">
	                    <i class="zmdi zmdi-close-circle-o"></i>
	                </a>
	            </li>
            </c:forEach>                            
        </ul>
        <p class="total"><span>Total cost</span> ${total }</p>
        <a class="checkout" href="${pageContext.request.contextPath }/cart" title="view cart">view cart</a>
        <a class="checkout bg-black" href="#" title="check out">Check out</a>
    </div>
</div>
</div>
</div>
</nav>