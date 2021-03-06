<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form" %>
<h3><i class="fa fa-angle-right"></i> Update category</h3>
<div class="row mt">
    <div class="col-lg-12">
        <div class="form-panel">
            <h4 class="mb"><i class="fa fa-angle-right"></i>Update category</h4>
            <s:form action="${pageContext.request.contextPath }/admin/delivery/update" class="form-horizontal style-form" method="post" modelAttribute="delivery">
                <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label">Name</label>
                    <div class="col-sm-10">
                        <s:input path="name" type="text" class="form-control round-form"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label">Description</label>
                    <div class="col-sm-10">
                        <s:input path="description" type="text" class="form-control round-form"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label">Price</label>
                    <div class="col-sm-10">
                        <s:input path="price" type="text" class="form-control round-form"/>
                    </div>
                </div>
                <s:hidden path="id" />
                <div class="form-group">
                    <div class="col-lg-offset-2 col-lg-10">
                        <button class="btn btn-theme" type="submit">Update</button>
                        <a href="${pageContext.request.contextPath }/admin/delivery"><input class="btn btn-theme" type="button" value="Cancel" name="Cancel"></a>
                    </div>
                </div>
            </s:form>
        </div>
    </div>
</div>