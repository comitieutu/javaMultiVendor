<%@ page import="org.hibernate.Session" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags/client" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<c:set var="path" value="${pageContext.request.contextPath }/resources/client"></c:set>



<header id="header" class="header-v3">

    <mt:topbar></mt:topbar>

</header>
<div class="breadcrumb">
    <div class="container">
        <ul>
            <li><a href="http://localhost:9596">Home</a></li>
            <li class="active">Shopping Cart</li>
        </ul>
    </div>
    <!-- End container -->
</div>
<div class="main-content space-80 check-out">
    <div class="container">
        <!-- End checkout header -->
        <div class="contact-form check-out space-50">
            <div class="col-md-8 padding-left-0">
                <div class="title-ver3">
                    <h3><span>B</span>illing info</h3>
                </div>
                <!-- End title-product -->
                <s:form class="form-horizontal"
                        id="formsubmit"
                        action="${paypalConfig.posturl}"
                        method="post" modelAttribute="user" enctype="multipart/form-data">

                    <div class="form-group col-md-6">
                        <s:label path="firstName">First Name</s:label>
                        <s:input path="firstName" type="text" class="form-control" id="firstName"/>
                    </div>
                    <div class="form-group col-md-6">
                        <s:label path="lastName">Last Name</s:label>
                        <s:input path="lastName" type="text" class="form-control" id="lastName"/>
                    </div>
                    <div class="form-group col-md-6">
                        <s:label path="address">Address</s:label>
                        <s:input path="address" type="text" class="form-control" id="address"/>
                    </div>
                    <div class="form-group col-md-6">
                        <s:label path="email">Email</s:label>
                        <s:input path="email" type="text" class="form-control" id="email"/>
                    </div>
                    <div class="form-group col-md-6">
                        <label>Delivery method</label>
                        <s:select path="deliveryId" items="${delivery}" itemLabel="name" itemValue="id" type="text" class="form-control" id="delivery"/>
                    </div>
                    <div>
                        <s:hidden path="id"/>
                    </div>
                    <c:forEach var="c" items="${product}" varStatus="i">
                        <input type="hidden" name="item_number_${i.index + 1 }"
                               value="${c.product.id }">
                        <input type="hidden" name="item_name_${i.index + 1 }"
                               value="${c.product.name }">
                        <input type="hidden" name="amount_${i.index + 1 }"
                               value="${c.product.unitprice }">
                        <input type="hidden" name="quantity_${i.index + 1 }"
                               value="${c.quantity }">
                    </c:forEach>

                    <input type="hidden" name="upload" value="1" />
                    <input type="hidden" name="return" value="${paypalConfig.returnurl }" />
                    <input type="hidden" name="cmd" value="_cart" />
                    <input type="hidden" name="business" value="${paypalConfig.business}" />
                    <div class="form-group col-md-12">
                        <input
                                type="submit"
                                value="COD"
                                name="cod"
                                class="btn btn-primary"
                                formaction="${pageContext.request.contextPath }/checkout/create">
                        <input
                                type="submit"
                                value="Paypal"
                                name="paypal"
                                class="btn btn-primary"
                                formaction="${paypalConfig.posturl}">
                    </div>
                </s:form>
                <!-- End Billing info menu -->
            </div>
            <!-- End col-md-6 -->
            <div class="col-md-4 padding-right-0">
                <div class="payment-order">
                    <div class="title-ver3">
                        <h3><span>y</span>our order</h3>
                    </div>
                    <div class="you-order">
                        <div class="order text-price">
                            <ul>
                                <li><span class="text">Total Price: </span><span
                                        class="number">	&nbsp;${sessionScope.subtotal}</span></li>
                            </ul>
                        </div>
                    </div>
                    <!-- End order -->
                </div>
            </div>
            <!-- End col-md-6 -->
        </div>
        <!-- End contact-form -->
    </div>
    <!-- End conainer -->
</div>
<!-- End MainContent -->
<div class="newsletter">
    <div class="container">
        <h3><a href="#" title="sign up">sign up</a> to newsletter</h3>
        <p>and receilve $20 coupon for first shopping</p>
        <form action="#" method="get" accept-charset="utf-8">
            <input type="text" onblur="if (this.value == '') {this.value = 'Enter your email';}"
                   onfocus="if(this.value != '') {this.value = '';}" value="Enter your emaill"
                   class="input-text required-entry validate-email" title="Sign up for our newsletter" id="newsletter"
                   name="email">
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
                <a class="logo" href="#" title="logo"><img src="assets/images/Dana-menu-logo.png"></a>
                <p class="italic">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum
                    has been the industry's standard.</p>
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
                <a href="#" title="Payment"><img src="assets/images/Hermes-footer-payment.png"
                                                 tppabs="http://landing.engocreative.com/html/dama/demo/assets/images/Hermes-footer-payment.png"
                                                 alt="payment"></a>
            </div>
        </div>
    </div>
    <!-- End container -->
</footer>