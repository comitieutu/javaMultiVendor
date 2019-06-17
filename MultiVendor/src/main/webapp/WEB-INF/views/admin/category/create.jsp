<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form" %>
<h3><i class="fa fa-angle-right"></i> Create category</h3>
<div class="row mt">
    <div class="col-lg-12">
        <div class="form-panel">
            <h4 class="mb"><i class="fa fa-angle-right"></i>Create category</h4>
            <s:form action="${pageContext.request.contextPath }/admin/category/create" class="form-horizontal style-form" method="post" modelAttribute="category">
                <div class="form-group">
                    <s:label path="name" class="col-sm-2 col-sm-2 control-label">Name</s:label>
                    <div class="col-sm-10">
                        <s:input path="name" type="text" class="form-control round-form"/>
                    </div>
                </div>
                <div class="form-group">
                    <s:label path="description" class="col-sm-2 col-sm-2 control-label">Description</s:label>
                    <div class="col-sm-10">
                        <s:input path="description" type="text" class="form-control round-form"/>
                    </div>
                </div>             
                <div class="form-group">
                    <s:label path="parent" class="col-sm-2 col-sm-2 control-label">Category</s:label>
                    <div class="col-sm-10">
                        <s:select path="parent" type="text" class="form-control round-form">
                        	<s:option value="0">Master</s:option>
                        	<s:options items="${masters }"></s:options>
                        </s:select>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-lg-offset-2 col-lg-10">
                        <button class="btn btn-theme" type="submit">Create</button>\
                        <a href="${pageContext.request.contextPath }/admin/category"><input class="btn btn-theme" type="button" value="Cancel" name="Cancel"></a>
                    </div>
                </div>
            </s:form>
        </div>
    </div>
</div>