<%@ tag language="java" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<div class="header-top">
    <div class="container">
        <div class="inner-container">
            <p class="icon-menu-mobile"><span class="icon-bar"></span></p>
            <div class="logo"><a href="http://localhost:9596" title="Dana-Logo">
                <img width="120" height="50" src="${pageContext.request.contextPath }/assets/images/Dana-menu-logo.png"/>
            </a></div>
            <div class="menu-top">
                <ul class="nav-top">
                    <li class="level1"><a href="http://localhost:9596" title="Home">Home</a></li>
                    <li class="level1">
                        <c:if test="${contentstatic.code == 'au'}">
                            <a style="color: #f5c615;" href="${pageContext.request.contextPath }/static/au" title="About Us">About Us</a>
                        </c:if>
                        <c:if test="${contentstatic.code != 'au'}">
                            <a href="${pageContext.request.contextPath }/static/au" title="About Us">About Us</a>
                        </c:if>
                    </li>
                    <li class="level1"><a href="${pageContext.request.contextPath }/news/" title="News">News</a></li>
                    <li class="level1">
                        <c:if test="${contentstatic.code == 'ct'}">
                            <a style="color: #f5c615;" href="${pageContext.request.contextPath }/static/ct" title="Contact">Contact</a>
                        </c:if>
                        <c:if test="${contentstatic.code != 'ct'}">
                            <a href="${pageContext.request.contextPath }/static/ct" title="Contact">Contact</a>
                        </c:if>
                    </li>
                </ul>
            </div>
            <div class="search">
                <div class="search-form">
                    <form action="${pageContext.request.contextPath }/product/search" method="get" >
                        <div class="search-select">
                            <i class="zmdi zmdi-chevron-down"></i>
                            <select name="categoryid" class="category-search">
                                <option value="0">Select Category</option>
                                <c:forEach var="cate" items="${categories }">
                                    <option value="${cate.id}" ${cate.id == categoryInSearch.id ? 'selected="selected"' : ''}>${cate.name}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <!-- End search Select -->
                        <input name="keywork" type="text" autocomplete="off" placeholder="search Keywork " value="${keywork}" class="ajax_autosuggest_input ac_input" name="s">
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
        <div class="menu-icon-right" style="padding-top: 16px;">
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
