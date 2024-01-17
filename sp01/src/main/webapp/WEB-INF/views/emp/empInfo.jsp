<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원 정보 조회 및 수정</title>
</head>
<body>
	<form>
		<div>
			<label>
				employee_id : 
				<input type="number" name="employeeId" value="${empInfo.employeeId }">
			</label>
			<hr>
			<label>
				last_name : 
				<input type="text" name="lastName" value="${empInfo.lastName }">
			</label>
			<hr>
			<label>
				email : 
				<input type="text" name="email" value="${empInfo.email }">
			</label>
			<hr>
			<label>
				hire_date : 
				<input type="date" name="hireDate" value='<fmt:formatDate value="${empInfo.hireDate }" pattern="yyyy-MM-dd"/>'>
			</label>
			<hr>
			<label>
				job_id : 
				<input type="text" name="jobId" value="${empInfo.jobId }">
			</label>
			<hr>
			<label>
				salary : 
				<input type="number" name="salary" value="${empInfo.salary }">
			</label>
		</div>
		<hr>
		
		<div>
			<button type="button" onclick="location.href='empList'">목록으로</button>
			<button type="button" id="updateBtn">수정</button>
			<button type="button" onclick="location.href='empDelete?eid=${empInfo.employeeId}'">삭제</button>
		</div>
	</form>
	<script>
		document.querySelector('#updateBtn').addEventListener('click', updateEmpInfo);
		function updateEmpInfo(event){
			//form 태크 내부의 입력태그를 기반으로 정보를 가져옴
			let empInfo = getEmpInfo();
			console.log(empInfo);
			
			//해당 정보를 기반으로 Ajax
			//querystring => 커맨드 객체
			fetch('empUpdate',{
				method : 'post',
				body : new URLSearchParams(empInfo)
			})
			.then(response=>response.json())
			.then(result=>{
				console.log('QueryString',result)
			})
			.catch(err=>console.log(err))
			
			//json
			fetch('empUpdateAjax',{
				method : 'post',
				headers :{
					'content-type' : 'application/json'
				},
				body : JSON.stringify(empInfo)
			})
			.then(response=>response.json())
			.then(result=>{
				console.log('JSON',result)
			})
			.catch(err=>console.log(err))
		}
		
		function getEmpInfo(){
			let inputList = document.querySelectorAll('form input');
			
			let objData = {};
			inputList.forEach(tag => {
				objData[tag.name] = tag.value;
			});
			
			return objData;
		}
	</script>
</body>
</html>