<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<div class="container  border">
 <h2>도서별 대여매출현황</h2>
    <style>
        #table th, #table td {
            text-align: center; /* 기본적으로 가운데 정렬 */
        }

        #table th:first-child, #table td:first-child {
            text-align: center; /* 도서번호는 중앙 정렬 */
        }

        #table td:nth-child(2) {
            text-align: left; /* 두 번째 열(도서명)은 왼쪽 정렬 */
        }

        #table td:nth-child(n + 3) {
            text-align: right; /* 세 번째 열부터는 오른쪽 정렬 */
        }
    </style>
	<table id="table" class="table">
		<thead>
			<tr>
				<th>도서번호</th>
				<th>도서명</th>
				<th>대여총계</th>
				<th>대여횟수</th>
				
			</tr>
		</thead>
		<tbody>

			<c:forEach items="${rentList }" var="vo">
				<tr>
					<td>${vo.bookNo}</td>
					<td>${vo.bookName }</td>
					<td>${vo.totalRentPrice }</td>
					<td>${vo.totalRentStatus }</td>
				</tr>
			</c:forEach>

		</tbody>
	</table>
</div>