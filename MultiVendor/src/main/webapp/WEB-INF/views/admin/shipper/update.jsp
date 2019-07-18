<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form" %>
<h3><i class="fa fa-angle-right"></i> Update Shipper</h3>
<div class="row mt">
    <div class="col-lg-12">
        <div class="form-panel">
            <h4 class="mb"><i class="fa fa-angle-right"></i>Update Shipper</h4>
            <s:form action="${pageContext.request.contextPath }/admin/shipper/update" class="form-horizontal style-form" method="post" modelAttribute="shipper">
                <div class="form-group">
                    <s:label path="company" class="col-sm-2 col-sm-2 control-label">Company</s:label>
                    <div class="col-sm-10">
                        <s:input path="company" type="text" class="form-control round-form"/>
                    </div>
                </div>
                <div class="form-group">
                    <s:label path="contactname" class="col-sm-2 col-sm-2 control-label">Contact Name</s:label>
                    <div class="col-sm-10">
                        <s:input path="contactname" type="text" class="form-control round-form"/>
                    </div>
                </div>
                <div class="form-group">
                    <s:label path="contactphone" class="col-sm-2 col-sm-2 control-label">Contact Phone</s:label>
                    <div class="col-sm-10">
                        <s:input path="contactphone" type="text" class="form-control round-form"/>
                    </div>
                </div>
                <s:hidden path="id" />
                <div class="form-group">
                    <div class="col-lg-offset-2 col-lg-10">
                        <button class="btn btn-theme" type="submit">Update</button>
                        <a href="${pageContext.request.contextPath }/admin/category"><input class="btn btn-theme" type="button" value="Cancel" name="Cancel"></a>
                    </div>
                </div>
            </s:form>
        </div>
    </div>
</div>