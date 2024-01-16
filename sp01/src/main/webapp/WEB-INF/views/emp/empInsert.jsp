<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원 정보 등록</title>
</head>
<body>
	<form action="empInsert" method="post">
		<div>
			
			<label> last_name : <input type="text" name="lastName">
			</label>
			<hr>
			<label> email : <input type="text" name="email">
			</label>
			<hr>
			<label> hire_date : <input type="date" name="hireDate">
			</label>
			<hr>
			<label> job_id : <input type="text" name="jobId">
			</label>
			<hr>
			<label> salary : <input type="number" name="salary">
			</label>
		</div>
		<hr>

		<div>
			<button type="button" onclick="location.href='empList'">목록으로</button>
			<button type="submit">등록</button>
		</div>
	</form>
</body>
</html>