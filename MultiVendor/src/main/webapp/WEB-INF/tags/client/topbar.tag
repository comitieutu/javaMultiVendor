<%@ tag language="java" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<div id="topbar">
    <div class="container">
        <div class="topbar-left">
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
        <!-- End topBar-left -->
        <div class="topbar-right">
            <a href="#" title="Guarantee"><i class="zmdi zmdi-wrench"></i>Guarantee</a>
            <a href="#" title="Adress"><i class="zmdi zmdi-pin"></i>Store location</a>
            <div class="wrap-dollar-box dropdown">
                <a href="#" title="Dollar"><i class="zmdi zmdi-money-box"></i>Dollar (US)<i class="zmdi zmdi-chevron-down"></i></a>
                <div class="dollar-list dropdown-menu">
                    <ul>
                        <li><a href="#" title="dollar(us)">Dollar (US)</a></li>
                        <li><a href="#" title="Euro(EUR)">Euro(EUR)</a></li>
                    </ul>
                </div>
            </div>
            <div class="wrap-sign-in cart dropdown">
            	<sec:authorize access="!isAuthenticated()">
            		<a class="sign-in" href="${pageContext.request.contextPath }/login" title="user"><i class="zmdi zmdi-account"></i>Login</a>
				</sec:authorize>
            	<sec:authorize access="isAuthenticated()">
            		<a href="${pageContext.request.contextPath }/admin">Welcome <sec:authentication property="name"/></a>
				    <a class="logout" href="${pageContext.request.contextPath }/logout">Logout</a>
				</sec:authorize>
                <sec:authorize access="hasRole('ROLE_ADMIN')">
				    <a href="${pageContext.request.contextPath }/admin">Admin</a>
				</sec:authorize>
            </div>
        </div>
        <!-- End topbar-right -->
    </div>
    <!-- End container -->
</div>