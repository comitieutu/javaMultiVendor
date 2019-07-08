<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form" %>
<h3><i class="fa fa-angle-right"></i> All product detail</h3>
<div class="row mt">
    <div class="col-md-12">
        <div class="content-panel">
            <table class="table table-striped table-advance table-hover">
                <h4><i class="fa fa-angle-right"></i>Sale Order Detail</h4>
                <hr>
                <thead>
                    <tr>
                    	<th><i class="fa fa-align-justify"></i> Id</th>
                        <th><i class="fa fa-align-justify"></i> SaleOrder Id</th>
                        <th><i class="fa fa-bullhorn"></i> Product Name</th>
                        <th><i class="fa fa-star"></i> Quantity</th>
                        <th><i class="fa fa-star"></i> Unit Price</th>
                        <th><i class="fa fa-star"></i> Discount</th>
                        <th><i class="fa fa-star"></i> Total Product Price</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                	<c:forEach var="sod" items="${saleorderdetail }">
                		<tr>
							<td>${sod.id }</td>
							<td>${sod.saleorder.id }</td>
							<td>${sod.product.name }</td>
							<td>${sod.quantity }</td>
							<td>${sod.unitprice }</td>
							<td>${sod.discount }</td>
							<td>${sod.quantity * sod.unitprice * (100 - sod.discount)/100}</td>
						</tr>
                	</c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>