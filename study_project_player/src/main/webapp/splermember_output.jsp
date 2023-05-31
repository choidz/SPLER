<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 output</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<link href="css/signin.css" rel="stylesheet">
</head>

<body>
	<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	String name = request.getParameter("name");
	String nickname = request.getParameter("nickname");
	String email = request.getParameter("email");

	String check_ok = "yes";

	if (id == "")
		check_ok = "no";
	if (pass == "")
		check_ok = "no";
	if (nickname == "")
		check_ok = "no";
	if (email == "")
		check_ok = "no";
	if (name == "")
		check_ok = "no";

	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/dbmember";
	Connection conn = DriverManager.getConnection(url, "member", "1234");
	Statement stmt = conn.createStatement();

	String strSQL = "select id from splermember where id='" + id + "'";
	ResultSet rs = stmt.executeQuery(strSQL);

	if (!rs.next())
		check_ok = "yes";
	else
		check_ok = "no";

	if (check_ok == "yes") {
		strSQL = "insert into splermember(id, pass, name, nickname, email)";
		strSQL = strSQL + "values('" + id + "','" + pass + "', '" + name + "', '" + nickname + "', '" + email + "')";
		stmt.executeUpdate(strSQL);
	%>







	<div class="container" style="margin-top: 160px; max-width: 850px;">
		<div class="input-form-backgroud row">
			<span class="login100-form-title" style="padding-bottom: 24px;">
				<a href="Spler.jsp"> <img class="logo" style="width: 190px;"
					src="images/logo.png" alt="logo" data-rjs="2">
			</a>
			</span>
			<div class="input-form col-md-12 mx-auto" style="text-align: center;">

				<h3 class="mb-6" style="margin-bottom: 20px;">회원가입에 성공하였습니다</h3>


				<h6 class="mb-6" style="margin-bottom: 20px;">
					모든 회원가입 절차가 완료되었습니다.<br />로그인 후 모든 서비스를 이용하실 수 있습니다
				</h6>


				<form class="validation-form" name="signup" method="post"
					action="splermember_output.jsp" novalidate>

					<table class="table table-bordered">

						<tbody>
							<tr>
								<td colspan="1" style="width: 200px; background: #f0f0f0;">이름</td>
								<td colspan="2"><%=name%></td>

							</tr>
							<tr>
								<td colspan="1" style="width: 200px; background: #f0f0f0;">아이디</td>
								<td colspan="2"><%=id%></td>

							</tr>

						</tbody>
					</table>
					<div class="row">


						<div class="col">
							<a style="color: #fff;" class="btn btn-primary btn-lg btn-block"
								href="signup.jsp">회원가입 화면으로 ></a>
						</div>
						<div class="col">
							<a style="color: #fff;" class="btn btn-primary btn-lg btn-block"
								href="Spler.jsp">메인 페이지</a>
						</div>
					</div>


				</form>
			</div>
		</div>
	</div>



	<%
	} else {
	%>

	<div class="container" style="margin-top: 160px; max-width: 850px;">
		<div class="input-form-backgroud row">
			<span class="login100-form-title" style="padding-bottom: 24px;">
				<a href="Spler.jsp"> <img class="logo" style="width: 190px;"
					src="images/logo.png" alt="logo" data-rjs="2">
			</a>
			</span>
			<div class="input-form col-md-12 mx-auto" style="text-align: center;">

				<h3 class="mb-6" style="margin-bottom: 20px;">회원가입에 실패하였습니다</h3>


				<h6 class="mb-6" style="margin-bottom: 20px;">
					모든 빈칸을 입력해주시길 바랍니다<br />로그인 후 모든 서비스를 이용하실 수 있습니다
				</h6>


				<form class="validation-form" name="signup" method="post"
					action="splermember_output.jsp" novalidate>


					<div class="row">


						<div class="col">
							<a style="color: #fff;" class="btn btn-primary btn-lg btn-block"
								href="signup.jsp">회원가입 화면으로 ></a>
						</div>
						<div class="col">
							<a style="color: #fff;" class="btn btn-primary btn-lg btn-block"
								href="Spler.jsp">메인 페이지</a>
						</div>
					</div>


				</form>
			</div>
		</div>
	</div>

	<%}
stmt.close();
conn.close();
%>

</body>
</html>