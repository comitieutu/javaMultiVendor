<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
            <li class="active">Shopping Cart</li>
        </ul>
    </div>
    <!-- End container -->
</div> 
  <div class="main-content shopping-cart"> 
  <div class="shopping-cart">
  <div class="container">    
        <div class="title-ver2">
            <h3>Shopping Cart</h3>
        </div>
        <!-- End title product -->
       <table class="table space-80">
           <thead>
               <tr>
                   <th class="product-photo">Product</th>
                   <th class="produc-name"></th>
                   <th class="product-price">Price</th>
                   <th class="product-quantity">Quantity</th>
                   <th class="total-price">Total</th>
                   <th class="product-remove"></th>
               </tr>
           </thead>
           <tbody>
           		<c:set var="total" value="0"></c:set>
           		<c:forEach var="item" items="${sessionScope.cart }">
           			<c:set var="total" value="${total + item.product.unitprice * item.quantity }"></c:set>
	           	   <tr class="item_cart">
	                   <td class="product-photo"><img src="${pageContext.request.contextPath }/assets/images/${item.product.productdetails.iterator().next().photo}" 
	                   		tppabs="${pageContext.request.contextPath }/assets/images/${item.product.productdetails.iterator().next().photo}" alt="Futurelife" height="100" width="100"></td>
	                   <td class="produc-name"><a href="#" title="">${ item.product.name }</a></td>
	                   <td class="product-price">${item.product.unitprice }</td>
	                   <td class="product-quantity"><input id="qty_${item.product.id}" data-id="${item.product.id }" type="number" size="4" class="input-text qty text" title="SL" value="${item.quantity }" min="1" step="1"></td>
	                   <td class="total-price" id="subtotal_${ item.product.id }">${item.product.unitprice * item.quantity }</td>
	                   <td class="product-remove"><a class="remove" href="${pageContext.request.contextPath }/cart/remove/${item.product.id }"
							onclick="return confirm('Are you sure?')" title=""></a></td>
	               </tr>
           		</c:forEach>
           		<tr>
           			<td colspan="4" align="right">Sum</td>
           			<td id="carttotal">${total }</td>
           		</tr>
           </tbody>
       </table>
   </div>
   <!-- End container -->
</div>
<!-- End shopping cart -->
    
<div class="shipping-total">
    <div class="container">
        <div class="col-md-6 coupon">
            <div class="title-ver2">
                <h3>Coupon code</h3>
            </div>
            <div class="contact-form">
                <form class="form-horizontal">
                    <div class="form-group col-md-7">
                        <input type="text" class="form-control" id="inputfname" placeholder="Enter your first name...">       
                    </div> 
                    <div class="form-group col-md-5">
                        <button value="Submit" class="btn link-button link-border-raidus" type="submit">Appy coupon</button>
                    </div> 
                </form> 
            </div>
            <a class="btn link-button link-border-raidus bg-gray" href="#" title="Continue shopping">Continue shopping</a>
            <a class="btn link-button link-border-raidus bg-gray" href="#" title="Update cart">Update cart</a>
        </div>
        <!-- End col-md-6 -->
       <div class="col-md-6 cart-totals text-price">
           <div class="title-ver2">
               <h3>Cart totals</h3>
           </div>
           <ul>
               <li><span class="text">Subtotal</span><span class="number">$ 1,990.00</span></li>
               <li><span class="text">Shipping</span><span class="number">$ 50.00</span></li>
               <li><span class="text totals">Totals Cart</span><span class="number totals">$ 2,040.00</span></li>
           </ul>
           <a class="btn link-button link-border-raidus"
              href="${pageContext.request.contextPath }/checkout" title="Proceed to checkout">Proceed to checkout</a>
       </div>
       <!-- End col-md-6 -->
   </div>
   <!-- End shipping-total -->
   </div>           
   <!-- End conainer -->
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
