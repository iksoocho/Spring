<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container  border">
 <h2>도서 조회 / 수정</h2>
	<table id="table" class="table">
		<thead>
			<tr>
				<th>도서번호</th>
				<th>도서명</th>
				<th>표지</th>
				<th>출판일자</th>
				<th>금액</th>
				<th>출판사</th>
				<th>조서소개</th>
			</tr>
		</thead>
		<tbody>

			<c:forEach items="${bookList }" var="vo">
				<tr>
					<td>${vo.bookNo}</td>
					<td>${vo.bookName }</td>
					<td><img src="<c:url value="/resources/images/${vo.bookCovering }"/>" width="150px" height="150px"></td>
					<td><fmt:formatDate value="${vo.bookDate }"
							pattern="yyyy/MM/dd" /></td>
					<td><fmt:formatNumber value="${vo.bookPrice }" pattern="#,###"/></td>
					<td>${vo.bookPublisher }</td>
					<td>${vo.bookInfo }</td>
				</tr>
			</c:forEach>

		</tbody>
	</table>
</div>
</body>
</html>