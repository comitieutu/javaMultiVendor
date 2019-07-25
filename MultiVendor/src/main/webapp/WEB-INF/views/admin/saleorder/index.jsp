<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<h3><i class="fa fa-angle-right"></i> All product</h3>
<div class="row mt">
    <div class="col-md-12">
        <div class="content-panel">
            <table class="table table-striped table-advance table-hover">
                <h4><i class="fa fa-angle-right"></i>Product</h4>
                <hr>
                <thead>
                    <tr>
                    	<th><i class="fa fa-align-justify"></i> Id</th>
                        <th><i class="fa fa-align-justify"></i> Order Number</th>
                        <th><i class="fa fa-align-justify"></i> Buyer name</th>
                        <th><i class="fa fa-align-justify"></i> Status</th>
                        <th><i class="fa fa-bullhorn"></i> Delivery price</th>
                        <th><i class="fa fa-bullhorn"></i> Total price</th>
                        <th><i class="fa fa-bullhorn"></i> Shipdate</th>
                        <th><i class="fa fa-star"></i> Shipper id</th>
                        <th><i class="fa fa-star"></i> Payment id</th>4
                        <th><i class="fa fa-star"></i> Delivery Method</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                	<c:forEach var="so" items="${saleOrder }">
                		<tr>
							<td>${so.id }</td>
							<td>
								${so.ordernumber}
							</td>
							<td>${so.user.username }</td>
							<td>${so.status }</td>
							<td>${so.deliveryprice }</td>
							<td>${so.totalprice }</td>
                            <td>${so.shipdate }</td>
                            <td>${so.shipper.contactname }</td>
                            <td>${so.payment.id }</td>
                            <td>${so.delivery.name }</td>
							<td>
								<a href="${pageContext.request.contextPath }/admin/saleorder/detail/${so.id}" class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i>Detail</a>
							</td>
						</tr>
                	</c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
