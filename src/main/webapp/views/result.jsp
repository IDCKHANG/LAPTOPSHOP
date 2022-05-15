
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Send e-mail result</title>
</head>
<body>
	<center>
		<h2>Thank you, your email has been sent.</h2>
	</center>
</body>
</html>
<div class="table-responsive">
	<table class="table v-middle">
		<thead>
			<tr class="bg-light">
				<th class="border-top-0">Họ Tên Thành Viên</th>
				<th class="border-top-0">Email</th>
				<th class="border-top-0">Ngày sinh</th>
				<th class="border-top-0">Địa chỉ</th>
				<th class="border-top-0">Password</th>
				<th class="border-top-0">Chức vụ</th>
				<th class="border-top-0">Action</th>
			</tr>
		</thead>
		<tbody>

			<c:if test="${roles!=null && fn:length(roles)>0}">
				<c:forEach items="${roles}" var="r">
					<td>${r.role}</td>
				</c:forEach>
			</c:if>
			<c:if test="${accounts!=null && fn:length(accounts)>0}">
				<c:forEach items="${accounts}" var="a">
					<tr>
						<td><label class="label label-success">${a.fullName}</label>
						</td>
						<td><h5>${a.email}</h5></td>
						<td>${a.birthDate}</td>
						<td>${a.address}</td>
						<td>${a.password}</td>
						<c:if
							test="${a.accountRoles!=null && fn:length(a.accountRoles)>0}">
							<c:forEach items="${a.accountRoles}" var="acc">
								<td style="color: green">${acc.role}</td>
								<br>

							</c:forEach>
						</c:if>
						<c:if
							test="${a.accountRoles==null || fn:length(a.accountRoles)==0}">
							<td><h7 style="color:green">null</h7></td>
						</c:if>
						<td>
							<button class="btn btn-info" style="font-size: 14px"
								onclick="location.href = '<c:url value="/admin/updatemember/${a.id}"/>'">
								update</button>
							<button class="btn btn-danger" style="font-size: 14px"
								onclick="location.href = '<c:url value="/admin/removemember/${a.id}"/>'">
								delete</button>
						</td>
					</tr>
				</c:forEach>
			</c:if>
		</tbody>
	</table>
</div>