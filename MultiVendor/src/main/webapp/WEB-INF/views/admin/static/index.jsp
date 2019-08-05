<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form" %>
<h3><i class="fa fa-angle-right"></i> All Content Statics</h3>
<div class="row mt">
    <div class="col-md-12">
        <div class="content-panel">
            <table class="table table-striped table-advance table-hover">
                <h4><i class="fa fa-angle-right"></i>Content Statics</h4>
                <hr>
                <thead>
                <tr>
                    <th><i class="fa fa-align-justify"></i> Id</th>
                    <th><i class="fa fa-align-justify"></i> Title</th>
                    <th><i class="fa fa-align-justify"></i> Content</th>
                    <th><i class="fa fa-star"></i> Action</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="item" items="${statics }">
                    <tr>
                        <td>${item.id }</td>
                        <td>${item.title }</td>
                        <td>${item.content}</td>
                        <td>
                            <a href="${pageContext.request.contextPath }/admin/static/update/${item.code}" class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i>Edit</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>