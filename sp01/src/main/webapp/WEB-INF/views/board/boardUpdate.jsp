<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<div>
	<h2>게시글 수정</h2>
	<form name="updateForm">
		<table>
			<tr>
				<th>번호</th>
				<td><input type="text" name="bno" value="${boardInfo.bno }" readonly></td>
			</tr>
			<tr>
				<th>제목</th>
				<td><input type="text" name="title" value="${boardInfo.title }"></td>
			</tr>
			<tr>
				<th>작성자</th>
				<td><input type="text" name="writer"
					value="${boardInfo.writer }"></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea name="contents">${boardInfo.contents }</textarea></td>
			</tr>
			<tr>
				<th>이미지</th>
				<td><input type="text" name="image"
					value="${boardInfo.image }"></td>
			</tr>


		</table>
		<hr>

		
			<button type="button" onclick="location.href='boardList'">목록으로</button>
			<button type="button">저장</button>
		
	</form>
</div>

<script>
	$('form > button:contains(저장)').on('click',boardUpdateAjax);

	function boardUpdateAjax(event){
		if(!validation()) return;

		let boardData = getBoardInfo();
		console.log('boardData', boardData);

		$.ajax('boardUpdate',{
			type : 'post',
			//단순 커맨드 객체
			data : boardData
			
			//@RequestBody가 붙으면
			//contentType : 'application/json',
			//data : JSON.stringify(boardData)
		})
		.then(result => {
			console.log(result);
		})
		.fail(err => console.log(err));
	}

	function validation(){
		let title = $('[name="title"]');
		let writer = $('[name="writer"]');

		if(title.val == ''){
			alert("제목을 입력해주세요");
			title.focus();
			return false;
		}

		if(writer.val == ''){
			alert("작성자를 입력해주세요");
			writer.focus();
			return false;
		}

		return true;
	}

	function getBoardInfo(){
		let formAry = $('form[name="updateForm"]').serializeArray();
		console.log(formAry);

		let formObj = {};
		$(formAry).each((idx, tag) => {
			console.log(tag);
			formObj[tag.name] = tag.value;
		});

		return formObj
	}
</script>