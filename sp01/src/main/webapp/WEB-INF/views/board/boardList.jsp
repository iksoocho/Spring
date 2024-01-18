<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<div class="container  border">
 <h2>자유 게시판</h2>
	<table id="table" class="table">
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일자</th>

			</tr>
		</thead>
		<tbody>

			<c:forEach items="${boardList }" var="vo">
				<tr onclick="location.href='boardInfo?bno=${vo.bno}'">
					<td>${vo.bno}</td>
					<td>${vo.title }</td>
					<td>${vo.writer }</td>
					<td><fmt:formatDate value="${vo.regdate }"
							pattern="yyyy년 MM월 dd일" /></td>
				</tr>
			</c:forEach>

		</tbody>
	</table>
</div>