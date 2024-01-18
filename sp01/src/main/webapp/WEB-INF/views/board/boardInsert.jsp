<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div>
	<h2>게시글 등록</h2>
	<form name="insertForm" action="boardInsert" method="post">
		<table>
			<tr>
				<th>제목</th>
				<td><input type="text" name="title"></td>
			</tr>
			<tr>
				<th>작성자</th>
				<td><input type="text" name="writer"></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea name="contents"></textarea></td>
			</tr>
			<tr>
				<th>이미지</th>
				<td><input type="text" name="image"></td>
			</tr>


		</table>
		<hr>

		<div>
			<button type="button" onclick="location.href='boardList'">목록으로</button>
			<button type="submit">등록</button>
		</div>
	</form>
</div>

<script>
	//자바스크립트 버전
	document.querySelector('form[name="insertForm"]')
			.addEventListener('submit', boardInsertJs);
	
	function boardInsertJs(event){
		event.preventDefault();

		let title = document.getElementsByName('title')[0];
		let writer = document.getElementsByName('writer')[0];

		if(title.value == ''){
			alert('제목이 입력되지 않았습니다.');
			title.focus();
			return;
		}

		if(writer.value == ''){
			alert('작성자가 입력되지 않았습니다.');
			writer.focus();
			return;
		}

		insertForm.submit();
	}

	document.querySelector('form[name="insertForm"]')
			.removeEventListener('submit', boardInsertJs);


	//jQuery
	$('form[name="insertForm"]').on('submit', boardInsertJq);

	function boardInsertJq(event){
		event.preventDefault();

		let title = $('[name = "title"]');
		let writer = $('[name = "writer"]');

		if(title.val() == ''){
			alert('제목이 입력되지 않았습니다.');
			title.focus();
			return;
		}

		if(writer.val() == ''){
			alert('작성자가 입력되지 않았습니다.');
			writer.focus();
			return;
		}


		insertForm.submit();
	}
</script>