<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<h3><i class="fa fa-angle-right"></i> All product</h3>
<div class="row mt">
    <div class="col-md-12">
        <div class="content-panel">
            <table class="table table-striped table-advance table-hover">
                <h4><i class="fa fa-angle-right"></i>Product</h4>
                <hr>
                <thead>
                    <tr>
                    	<th><i class="fa fa-align-justify"></i>Id</th>
                        <th><i class="fa fa-align-justify"></i>Name</th>
                        <th><i class="fa fa-align-justify"></i>Description</th>
                        <th><i class="fa fa-align-justify"></i>Price</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                	<c:forEach var="de" items="${delivery }">
                		<tr>
							<td>${de.id }</td>
							<td>
								${de.name}
							</td>
							<td>${de.description }</td>
							<td>${de.price }</td>
							<td>
                                <c:set var="isDeleteAble" value="${fn:length(de.saleorders) == 0}"></c:set>
								<a href="${pageContext.request.contextPath }/admin/delivery/update/${de.id}" class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i>Edit</a>
                                <c:if test="${isDeleteAble}">
                                    <a href="${pageContext.request.contextPath }/admin/delivery/delete/${de.id}" class="btn btn-danger btn-xs"><i class="fa fa-trash-o "></i>Delete</a>
                                </c:if>
							</td>
						</tr>
                	</c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>