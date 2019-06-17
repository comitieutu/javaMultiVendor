<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<h3><i class="fa fa-angle-right"></i> All category</h3>
<div class="row mt">
    <div class="col-md-12">
        <div class="content-panel">
            <table class="table table-striped table-advance table-hover">
                <h4><i class="fa fa-angle-right"></i>Category</h4>
                <hr>
                <thead>
                    <tr>
                    	<th><i class="fa fa-align-justify"></i> Id</th>
                        <th><i class="fa fa-align-justify"></i> Name</th>
                        <th><i class="fa fa-align-justify"></i> Description</th>
                        <th><i class="fa fa-align-justify"></i> Parent</th>
                        <th><i class="fa fa-star"></i> Action</th>
                    </tr>
                </thead>
                <tbody>
                	<c:forEach var="c" items="${categories }">
                		<tr>
							<td>${c.id }</td>
							<td>${c.name }</td>
							<td>${c.description }</td>
							<td>${c.parent}</td>
							<td>
								<a href="${pageContext.request.contextPath }/admin/category/update/${c.id}" class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i>Edit</a> 
								<a href="${pageContext.request.contextPath }/admin/category/delete/${c.id}" class="btn btn-danger btn-xs"><i class="fa fa-trash-o "></i>Delete</a>
							</td>
						</tr>
                	</c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>