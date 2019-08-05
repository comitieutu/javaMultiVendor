<%@ tag language="java" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<div class="header-top">
    <div class="container">
        <div class="inner-container">
            <p class="icon-menu-mobile"><span class="icon-bar"></span></p>
            <div class="logo"><a href="http://localhost:9596" title="Dana-Logo">
                <img src="${pageContext.request.contextPath }/assets/images/Dana-menu-logo.png"/>
            </a></div>
            <div class="menu-top">
                <ul class="nav-top">
                    <li class="level1"><a href="http://localhost:9596" title="Home">Home</a></li>
                    <li class="level1"><a href="${pageContext.request.contextPath }/static/au" title="About Us">About Us</a></li>
                    <li class="level1"><a href="${pageContext.request.contextPath }/news/" title="News">News</a></li>
                    <li class="level1"><a href="${pageContext.request.contextPath }/static/ct" title="Contact">Contact</a></li>
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
    <a class="icon-cart" href="${pageContext.request.contextPath }/cart" title="Cart">
        <i class="zmdi zmdi-shopping-cart-plus"></i>
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
        <a class="checkout bg-black" href="${pageContext.request.contextPath }/checkout" title="check out">Check out</a>
    </div>
</div>
</div>
    </div>
</nav>
