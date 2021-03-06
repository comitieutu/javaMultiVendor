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
                        <th><i class="fa fa-align-justify"></i> Name</th>
                        <th><i class="fa fa-align-justify"></i> Quantity</th>
                        <th><i class="fa fa-bullhorn"></i> Unit price</th>
                        <th><i class="fa fa-bullhorn"></i> Brand</th>
                        <th><i class="fa fa-bullhorn"></i> Photo</th>
                        <th><i class="fa fa-star"></i> Action</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                	<c:forEach var="p" items="${products }">
                		<tr>
							<td>${p.id }</td>
							<td>
								<a href="${pageContext.request.contextPath }/admin/product/detail/${p.id}">${p.name }</a>
							</td>
							<td>${p.quantity }</td>
							<td>${p.unitprice }</td>
							<td>${p.brand }</td>
							<td>
								<c:if test="${p.productdetails.size() > 0}">
									<img src="${pageContext.request.contextPath }/assets/images/${p.productdetails.iterator().next().photo}" height="30">
								</c:if> 
							</td>
							<td>
								<a href="${pageContext.request.contextPath }/admin/product/update/${p.id}" class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i>Edit</a> 
								<a href="${pageContext.request.contextPath }/admin/product/delete/${p.id}" class="btn btn-danger btn-xs"><i class="fa fa-trash-o "></i>Delete</a>
							</td>
						</tr>
                	</c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>