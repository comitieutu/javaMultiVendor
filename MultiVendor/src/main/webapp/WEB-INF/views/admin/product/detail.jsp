<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form" %>
<h3><i class="fa fa-angle-right"></i> All product detail</h3>
<div class="row mt">
    <div class="col-md-12">
        <div class="content-panel">
            <table class="table table-striped table-advance table-hover">
                <h4><i class="fa fa-angle-right"></i>Product detail</h4>
                <hr>
                <thead>
                    <tr>
                    	<th><i class="fa fa-align-justify"></i> Id</th>
                        <th><i class="fa fa-align-justify"></i> Description</th>
                        <th><i class="fa fa-bullhorn"></i> Photo</th>
                        <th><i class="fa fa-star"></i> Action</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                	<c:forEach var="p" items="${productdetails }">
                		<tr>
							<td>${p.id }</td>
							<td>${p.description }</td>
							<td>
								<img src="${pageContext.request.contextPath }/assets/images/${p.photo}">
							</td>
							<td>
								<a href="${pageContext.request.contextPath }/admin/product/detail/delete/${p.id}" class="btn btn-danger btn-xs"><i class="fa fa-trash-o "></i>Delete</a>
							</td>
						</tr>
                	</c:forEach>
                </tbody>
            </table>
        </div>
        <div class="form-panel">
            <s:form action="${pageContext.request.contextPath }/admin/product/detail" class="form-horizontal style-form" method="post" enctype="multipart/form-data">                
                <div class="form-group">
                    <label class="control-label col-md-3">Add image</label>
                    <div class="col-md-4">
                        <input id="fileImage" type="file" name="files" accept="image/*" class="default" multiple/>
                    </div>
                </div>
                <input type="hidden" name="id" value="${productdetails.get(0).product.id }"/> 
                <div class="form-group">
                    <div class="col-lg-offset-2 col-lg-10">
                        <button id="btnSubmit" class="btn btn-theme" type="submit" disabled="disabled">Add</button>
                    </div>
                </div>
            </s:form>
        </div>
    </div>
</div>

