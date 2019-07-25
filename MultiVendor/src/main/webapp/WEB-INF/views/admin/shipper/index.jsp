<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<h3><i class="fa fa-angle-right"></i> All Shipper</h3>
<div class="row mt">
    <div class="col-md-12">
        <div class="content-panel">
            <table class="table table-striped table-advance table-hover">
                <h4><i class="fa fa-angle-right"></i>Shipper</h4>
                <hr>
                <thead>
                <tr>
                    <th><i class="fa fa-align-justify"></i> Id</th>
                    <th><i class="fa fa-align-justify"></i> Company</th>
                    <th><i class="fa fa-align-justify"></i> Shipper Name</th>
                    <th><i class="fa fa-align-justify"></i> Shipper Contact</th>
                    <th><i class="fa fa-star"></i> Action</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="shipper" items="${shippers }">
                    <tr>
                        <td>${shipper.id }</td>
                        <td>${shipper.company }</td>
                        <td>${shipper.contactname }</td>
                        <td>${shipper.contactphone}</td>
                        <td>
                            <c:set var="isDeleteAble" value="${fn:length(shipper.saleorders) == 0}"></c:set>
                            <a href="${pageContext.request.contextPath }/admin/shipper/update/${shipper.id}"
                               class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i>Edit</a>
                            <c:if test="${isDeleteAble}">
                                <a href="${pageContext.request.contextPath }/admin/shipper/delete/${shipper.id}"
                                   class="btn btn-danger btn-xs"><i class="fa fa-trash-o "></i>Delete</a>
                            </c:if>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>