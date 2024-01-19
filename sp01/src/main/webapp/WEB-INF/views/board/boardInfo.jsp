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

<div>
	<h2>게시글 정보</h2>
	<form>
		<table>
			<tr>
				<th>번호</th>
				<td>${boardInfo.bno }</td>
			</tr>
			<tr>
				<th>제목</th>
				<td>${boardInfo.title }</td>
			</tr>
			<tr>
				<th>작성자</th>
				<td>${boardInfo.writer }</td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea rows="5" cols ="50" name="contents" readonly>${boardInfo.contents }</textarea></td>
			</tr>
			<tr>
				<th>이미지</th>
				<td><img src="<c:url value="/resources/${boardInfo.image }"/>" width="150px" height="150px"></td>
			</tr>
			<tr>
				<th>작성날짜</th>
				<td><fmt:formatDate value="${boardInfo.regdate }" pattern="yyyy년 MM월 dd일" /></td>
			</tr>
		</table>
		<hr>

		<div>
			<button type="button" onclick="location.href='boardList'">목록으로</button>
			<button type="button" onclick="location.href='boardUpdate?bno=${boardInfo.bno }'">수정</button>
			<button type="button" onclick="location.href='boardDelete?bno=${boardInfo.bno }'">삭제</button>
		</div>
	</form>
</div>