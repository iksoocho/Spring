<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>전체 사원 조회</title>
</head>
<body>
	<button></button>
	<table id="table">
		<thead>
			<tr>
				<th>No.</th>
				<th>employee_id</th>
				<th>last_name</th>
				<th>email</th>
				<th>hire_date</th>
				<th>job_id</th>
				<th>salary</th>
			</tr>
		</thead>
		<tbody>
		
			<c:forEach items="${empList }" var="vo" varStatus="sts">
				<tr onclick="location.href='empInfo?employeeId=${vo.employeeId}'">
					<td>${sts.count}</td>
					<td>${vo.employeeId }</td>
					<td>${vo.lastName }</td>
					<td>${vo.email }</td>
					<td><fmt:formatDate value="${vo.hireDate }" pattern="yyyy-MM-dd"/></td>
					<td>${vo.jobId }</td>
					<td>${vo.salary }</td>
				</tr>
			</c:forEach>
			
		</tbody>
	</table>
</body>
</html>