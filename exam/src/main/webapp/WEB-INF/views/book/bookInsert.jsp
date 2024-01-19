<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div>
	<h2>도서 등록</h2>
	<form name="insertForm" action="bookInsert" method="post">
		<table>
			<tr>
				<th>도서 번호</th>
				<td><input type="text" name="bookNo" value="${nextBookNo}" readonly></td>
			</tr>
			<tr>
				<th>도서명</th>
				<td><input type="text" name="bookName"></td>
			</tr>
			<tr>
				<th>도서표지</th>
				<td><input type="text" name="bookCovering"></td>
			</tr>
			<tr>
				<th>출판일자</th>
				<td><input type="text" name="bookDate"></td>
			</tr>
			<tr>
				<th>금액</th>
				<td><input type="text" name="bookPrice"></td>
			</tr>
			<tr>
				<th>출판사</th>
				<td><input type="text" name="bookPublisher"></td>
			</tr>
			<tr>
				<th>도서소개</th>
				<td><textarea name="bookInfo"></textarea></td>
			</tr>


		</table>
		<hr>

		<div>
			
			<button type="submit">등록</button>
			<button type="button" onclick="location.href='bookList'">조회</button>
		</div>
	</form>
</div>

<script>
	//자바스크립트 버전
	document.querySelector('form[name="insertForm"]').addEventListener(
			'submit', boardInsertJs);

	function boardInsertJs(event) {
		event.preventDefault();

		let bookName = document.getElementsByName('bookName')[0];
		

		if (bookName.value == '') {
			alert('도서명이 입력되지 않았습니다.');
			bookName.focus();
			return;
		}

		

		insertForm.submit();
	}

	/* document.querySelector('form[name="insertForm"]').removeEventListener(
			'submit', boardInsertJs);

	//jQuery
	$('form[name="insertForm"]').on('submit', boardInsertJq);

	function boardInsertJq(event) {
		event.preventDefault();

		let title = $('[name = "title"]');
		let writer = $('[name = "writer"]');

		if (title.val() == '') {
			alert('제목이 입력되지 않았습니다.');
			title.focus();
			return;
		}

		if (writer.val() == '') {
			alert('작성자가 입력되지 않았습니다.');
			writer.focus();
			return;
		}

		insertForm.submit();
	} */
</script>