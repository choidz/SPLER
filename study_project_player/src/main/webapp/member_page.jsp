<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member_page</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link href="css/signin.css" rel="stylesheet">
</head>
<body>




	<%
	try {

		String strUser = "yes";
		String strSession = session.getAttribute("user").toString();
		String strName = session.getAttribute("name").toString();
		if (!strUser.equals(strSession)) {
	%>


	<div class="container" style="margin-top: 160px; max-width: 700px;">
		<div class="input-form-backgroud row">
			<span class="login100-form-title" style="padding-bottom: 24px;">
				<a href="Spler.jsp"> <img class="logo" style="width: 190px;"
					src="images/logo.png" alt="logo" data-rjs="2">
			</a>
			</span>
			<div class="input-form col-md-12 mx-auto" style="text-align: center;">

				<h3 class="mb-6" style="margin-bottom: 20px;">로그인에 실패하였습니다.</h3>


				<div class="row">
					<div class="col">
						<a style="color: #fff;" class="btn btn-danger btn-lg btn-block"
							href="Spler.jsp">로그인 화면</a>
					</div>
					<div class="col">
						<a style="color: #fff;" class="btn btn-primary btn-lg btn-block"
							href="Spler.jsp">메인 페이지</a>
					</div>
				</div>

			</div>
		</div>
	</div>
	<%
	} else {
	%>


	<div class="container" style="margin-top: 160px; max-width: 700px;">
		<div class="input-form-backgroud row">
			<span class="login100-form-title" style="padding-bottom: 24px;">
				<a href="Spler.jsp"> <img class="logo" style="width: 190px;"
					src="images/logo.png" alt="logo" data-rjs="2">
			</a>
			</span>
			<div class="input-form col-md-12 mx-auto" style="text-align: center;">

				<h3 class="mb-6" style="margin-bottom: 20px;">로그인에 성공하였습니다</h3>
				<h6 class="mb-6" style="margin-bottom: 20px;">
					이 페이지는
					<%=strName%>에게만 제공되는 페이지.
				</h6>

				<div class="row">
					<div class="col">
						<a style="color: #fff;" class="btn btn-success btn-lg btn-block"
							href="Spler.jsp">로그아웃</a>
					</div>
					<div class="col">
						<a style="color: #fff;" class="btn btn-primary btn-lg btn-block"
							href="Spler.jsp">메인 페이지</a>
					</div>
				</div>

			</div>
		</div>
	</div>




	<%
	}
	} catch (NullPointerException e) {
	%>

	<div class="container" style="margin-top: 160px; max-width: 700px;">
		<div class="input-form-backgroud row">
			<span class="login100-form-title" style="padding-bottom: 24px;">
				<a href="Spler.jsp"> <img class="logo" style="width: 190px;"
					src="images/logo.png" alt="logo" data-rjs="2">
			</a>
			</span>
			<div class="input-form col-md-12 mx-auto" style="text-align: center;">

				<h3 class="mb-6" style="margin-bottom: 20px;">로그인에 실패하였습니다.</h3>


				<div class="row">
					<div class="col">
						<a style="color: #fff;" class="btn btn-danger btn-lg btn-block"
							href="Spler.jsp">로그인 화면</a>
					</div>
					<div class="col">
						<a style="color: #fff;" class="btn btn-primary btn-lg btn-block"
							href="Spler.jsp">메인 페이지</a>
					</div>
				</div>

			</div>
		</div>
	</div>

	<%
	}
	%>


</body>
</html>