
<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<HTML>
<HEAD>
<TITLE>signin_ok</TITLE>

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link href="css/signin.css" rel="stylesheet">
</HEAD>
<BODY>



	<%
	String sessionID = "yes";

	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	String name = request.getParameter("name");

	try {
		if (id == "" || pass == "") {
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
				<h6 class="mb-6" style="margin-bottom: 20px;">아이디와 비밀번호를 입력하세요.</h6>

				<div class="row">
					<div class="col">
						<a style="color: #fff;" class="btn btn-danger btn-lg btn-block"
							href="signin.jsp">로그인 화면</a>
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
	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/dbmember";
	Connection conn = DriverManager.getConnection(url, "member", "1234");
	Statement stmt = conn.createStatement();

	String strSQL = "select * from splermember where id='" + id + "'";
	ResultSet rs = stmt.executeQuery(strSQL);

	rs.next();

	request.setCharacterEncoding("utf-8");
	String logid = rs.getString("id");
	String logpass = rs.getString("pass");
	String logname = rs.getString("name");

	if (!id.equals(logid)) {
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
				<h6 class="mb-6" style="margin-bottom: 20px;">회원이 아닙니다.</h6>

				<div class="row">
					<div class="col">
						<a style="color: #fff;" class="btn btn-danger btn-lg btn-block"
							href="signin.jsp">로그인 화면</a>
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
	if (!pass.equals(logpass)) {
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
				<h6 class="mb-6" style="margin-bottom: 20px;">비밀번호 틀림</h6>

				<div class="row">
					<div class="col">
						<a style="color: #fff;" class="btn btn-danger btn-lg btn-block"
							href="signin.jsp">로그인 화면</a>
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

	request.setCharacterEncoding("utf-8");
	session.setAttribute("user", sessionID);
	session.setAttribute("name", logname);
	response.sendRedirect("member_page.jsp");

	}
	}

	}
	} catch (Exception e) {
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
				<h6 class="mb-6" style="margin-bottom: 20px;">회원 아이디 틀림</h6>

				<div class="row">
					<div class="col">
						<a style="color: #fff;" class="btn btn-danger btn-lg btn-block"
							href="signin.jsp">로그인 화면</a>
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


	</TABLE>
</BODY>
</HTML>