<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>

<html>
<meta charset="UTF-8">
<title>로 그 인</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"	rel="stylesheet">
<link rel="stylesheet" href="css/header.css">
<link rel="stylesheet" href="css/main.css">
<style>
	main{
		background-color:white;
	}
</style>
<body>
<main>
	<div style="height:20px"></div>
	<form action="member?cmd=login" method="post">
		<div class="box-body">	
			<div class="form-group row">
				<label for="name" class="col-sm-2 col-form-label">아이디</label>
				<div class="col-sm-10">
				<input type="text" name="userid" id="userid" size="22" required
				class="form-control" maxlength='20'  placeholder="아이디 입력">										
				</div>
			</div>
			<div style="height:20px"></div>
			<div class="form-group row">
				<label for="name" class="col-sm-2 col-form-label">패스워드</label>
				<div class="col-sm-10">
				<input type="password" name="pwd" id="pwd" size="22" required
				class="form-control" maxlength='20'  placeholder="패스워드 입력">										
				</div>
			</div>				
			<div style="height:20px"></div>
			<div class="form-group text-center">    
				<button type="submit" class="btn btn-primary">로 그 인</button>
				<button type="reset" class="btn btn-danger">초 기 화</button>
			</div>
			<div style="height:20px"></div>
			<div>${message}</div>
		</div>
	</form>
</main>
</html>