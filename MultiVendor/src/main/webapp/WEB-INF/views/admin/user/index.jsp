<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="u" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="e" uri="http://java.sun.com/jsp/jstl/core"%>


<h3>
	<i class="fa fa-angle-right"></i> All User
</h3>
<div class="row mt">
	<div class="col-md-12">
		<div class="content-panel">



			<table class="table table-striped table-advance table-hover">
				<h4>
					<i class="fa fa-angle-right"></i>user
				</h4>
				<hr>
				<thead>
					<tr>
						<th><i class="fa fa-align-justify"></i> Id</th>
						<th><i class="fa fa-align-justify"></i> Name</th>
						<th><i class="fa fa-align-justify"></i> email</th>
						<th><i class="fa fa-star"></i> Roles</th>
						<th></th>
					</tr>
				</thead>
				<tbody>

					<u:forEach var="t" items="${users}">
						<tr>
							<td>${t.id }</td>
							<td><a
								href="${pageContext.request.contextPath }/admin/user/userprofile/${t.id}">
									${t.username }</a></td>
							<td>${t.email}</td>

							<td>
								<u:forEach var="r" items="${t.userroles }">
									${r.role.name }
									<br>
								</u:forEach>
							</td>


						</tr>

					</u:forEach>




				</tbody>
			</table>


		</div>
	</div>
</div>