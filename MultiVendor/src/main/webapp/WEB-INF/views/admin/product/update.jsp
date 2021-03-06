<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form" %>
<h3><i class="fa fa-angle-right"></i> Update product</h3>
<div class="row mt">
    <div class="col-lg-12">
        <div class="form-panel">
            <h4 class="mb"><i class="fa fa-angle-right"></i>Update product</h4>
            <s:form action="${pageContext.request.contextPath }/admin/product/update" class="form-horizontal style-form" method="post" modelAttribute="product" enctype="multipart/form-data">
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
                        <script>tinymce.init({selector:'#description'});</script>
                    </div>
                </div>
                <div class="form-group">
                    <s:label path="content" class="col-sm-2 col-sm-2 control-label">Content</s:label>
                    <div class="col-sm-10">
                        <s:input id="content" path="content" type="text" class="form-control round-form"/>
                        <script>tinymce.init({selector:'#content'});</script>
                    </div>
                </div>
                <div class="form-group">
                    <s:label path="specification" class="col-sm-2 col-sm-2 control-label">Specification</s:label>
                    <div class="col-sm-10">
                        <s:input id="specification" path="specification" type="text" class="form-control round-form"/>
                        <script>tinymce.init({selector:'#specification'});</script>
                    </div>
                </div>
                <div class="form-group">
                    <s:label path="quantity" class="col-sm-2 col-sm-2 control-label">Quantity</s:label>
                    <div class="col-sm-10">
                        <s:input path="quantity" type="number" min="0" class="form-control round-form"/>
                    </div>
                </div>
                <div class="form-group">
                    <s:label path="unitprice" class="col-sm-2 col-sm-2 control-label">Price</s:label>
                    <div class="col-sm-10">
                        <s:input path="unitprice" type="text" class="form-control round-form"/>
                    </div>
                </div>
                <div class="form-group">
                    <s:label path="brand" class="col-sm-2 col-sm-2 control-label">Brand</s:label>
                    <div class="col-sm-10">
                        <s:input path="brand" type="text" class="form-control round-form"/>
                    </div>
                </div>
                <div class="form-group">
                    <s:label path="category.id" class="col-sm-2 col-sm-2 control-label">Category</s:label>
                    <div class="col-sm-10">
                        <s:select path="category.id" items="${categories }" itemLabel="name" itemValue="id" type="text" class="form-control round-form"/>
                    </div>
                </div>
                <s:hidden path="id" />
                <div class="form-group">
                    <div class="col-lg-offset-2 col-lg-10">
                        <button class="btn btn-theme" type="submit">Update</button>
                    </div>
                </div>
            </s:form>
        </div>
    </div>
</div>