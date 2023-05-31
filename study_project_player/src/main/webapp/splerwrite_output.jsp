<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*, java.util.*"%>
<%
request.setCharacterEncoding("utf-8");
%>
<HTML>
<HEAD>
<TITLE>게시판</TITLE>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>SPLER</title>

<meta name="description" content="Spler">
<meta name="keywords" content="">
<meta name="author" content="tabthemes">

<!-- Bootstrap CSS -->
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />


<!-- Custom CSS -->
<link href="css/writestyle.css" rel="stylesheet">
<link href="css/outputstyle.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">

</head>


</HEAD>

<BODY>

	<!-- Start Navigation -->
	<header class="nav-solid" id="home">

		<nav class="navbar navbar-fixed-top">
			<div class="navigation">
				<div class="container-fluid">
					<div class="row">

						<div class="navbar-header">
							<button type="button" class="navbar-toggle"
								data-toggle="collapse" data-target="#navbar-collapse">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>

							<!-- Logo -->
							<div class="logo-container">
								<div class="logo-wrap local-scroll">
									<a href="Spler.jsp"> <img class="logo"
										src="images/logo.png" alt="logo" data-rjs="2">
									</a>
								</div>
							</div>
						</div>
						<!-- end navbar-header -->

						<div class="col-md-8 col-xs-12 nav-wrap">
							<div class="collapse navbar-collapse" id="navbar-collapse">

								<ul class="nav navbar-nav navbar-right">
									<li><a data-scroll href="SplerWrite.jsp">새글쓰기</a></li>
									<li><a data-scroll href="signin.jsp">로그인</a></li>
								</ul>

							</div>
						</div>
						<!-- /.col -->

					</div>
					<!-- /.row -->
				</div>
				<!--/.container -->
			</div>
			<!-- /.navigation-overlay -->
		</nav>
		<!-- /.navbar -->
	</header>
	<!-- End Navigation -->

	<%
	String num = request.getParameter("num");
	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/dbmember";
	Connection conn = DriverManager.getConnection(url, "member", "1234");
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	try {
		String strSQL = "SELECT * FROM splertable WHERE num = ?";
		pstmt = conn.prepareStatement(strSQL);
		pstmt.setInt(1, Integer.parseInt(num));

		rs = pstmt.executeQuery();
		rs.next();

		String name = rs.getString("name");
		String division = rs.getString("division");
		String persons = rs.getString("persons");
		String period = rs.getString("period");
		String onoff = rs.getString("onoff");
		String language = rs.getString("language");
		String startdate = rs.getString("startdate");
		String communication = rs.getString("communication");
		String title = rs.getString("title");
		String contents = rs.getString("contents").trim();
		contents = contents.replaceAll("\n", "<br>");
		int readcount = rs.getInt("readcount");
	%>




	<div class="studyContent_wrapper">
		<section class="studyContent_postHeader">
			<svg stroke="currentColor" fill="currentColor" stroke-width="0"
				viewBox="0 0 448 512" color="808080" cursor="pointer" height="30"
				width="30">
				<path
					d="M257.5 445.1l-22.2 22.2c-9.4 9.4-24.6 9.4-33.9 0L7 273c-9.4-9.4-9.4-24.6 0-33.9L201.4 44.7c9.4-9.4 24.6-9.4 33.9 0l22.2 22.2c9.5 9.5 9.3 25-.4 34.3L136.6 216H424c13.3 0 24 10.7 24 24v32c0 13.3-10.7 24-24 24H136.6l120.5 114.8c9.8 9.3 10 24.8.4 34.3z">
				</path>
			</svg>
			<div class="studyContent_title"><%=title%></div>
			<div class="studyContent_userAndDate">
				<div class="studyContent_user">
					<img class="studyContent_userImg"
						src="images/kkk.png"
						alt="userImg">
					<div class="studyContent_userName"><%=name%></div>
				</div>
				<div class="studyContent_registeredDate"><%=startdate%></div>
			</div>

			<ul class="studyInfo_studyGrid">
				<li class="studyInfo_contentWrapper"><span
					class="studyInfo_title">모집 구분</span><span
					class="studyInfo_content"><%=division%></span></li>
				<li class="studyInfo_contentWrapper"><span
					class="studyInfo_title">진행 방식</span><span
					class="studyInfo_content"><%=onoff%></span></li>
				<li class="studyInfo_contentWrapper"><span
					class="studyInfo_title">모집 인원</span><span
					class="studyInfo_content"><%=persons%></span></li>
				<li class="studyInfo_contentWrapper"><span
					class="studyInfo_title">시작 예정</span><span
					class="studyInfo_content"><%=startdate%></span></li>
				<!-- <li class="studyInfo_contentWrapper"><span
					class="studyInfo_title">연락 방법</span>
					<div class="contactPoint_contactWrapper__2T_GC">
						<a class="contactPoint_link__2MqRR"
							href="https://open.kakao.com/o/s9o6iKNe" target="_blank"
							rel="noreferrer"><span>카카오톡 오픈채팅</span><img
							class="contactPoint_linkImg__2_927" src="/images/info/link.svg"
							alt=""></a>
					</div></li> -->
				<li class="studyInfo_contentWrapper"><span
					class="studyInfo_title">연락 방법</span><span
					class="studyInfo_content"><%=communication%></span></li>

				<li class="studyInfo_contentWrapper"><span
					class="studyInfo_title">예상 기간</span><span
					class="studyInfo_content"><%=period%></span></li>
				<li class="studyInfo_contentWrapper"><span
					class="studyInfo_title">사용 언어</span>
					<ul class="studyInfo_languageList__1usTa">
						<li class="studyInfo_language__3A3Vi"><img
							style="width: auto;" class="studyInfo_languageImage__2b-u9"
							src="images/django.svg" alt="language"> <img
							class="studyInfo_languageImage__2b-u9" style="width: auto;"
							src="images/go.svg" alt="language">
							<img
							class="studyInfo_languageImage__2b-u9" style="width: auto;"
							src="images/javascript.svg" alt="language"></li>

					</ul></li>
			</ul>
		</section>
		<div class="studyContent_postContentWrapper">
			<h2 class="studyContent_postInfo">프로젝트 소개</h2>
			<div class="studyContent_postContent">

				<p><%=contents%></p>

			</div>
		</div>

		<section style="text-align: right;">
			<a href="SplerModify.jsp"
				style="background-color: #efefef; color: #000;"
				class="writebutton_cancelButton" value=''>글 수정</a> <a href="submit"
				class="writebutton_registerButton" value=''>글 삭제</a>

		</section>

	</div>





	<%
	strSQL = "UPDATE splertable SET readcount=readcount+1 WHERE num = ?";
	pstmt = conn.prepareStatement(strSQL);
	pstmt.setInt(1, Integer.parseInt(num));
	pstmt.executeUpdate();
	} catch (SQLException e) {
	out.print("SQL에러" + e.toString());
	} catch (Exception ex) {
	out.print("JSP에러" + ex.toString());
	} finally {
	rs.close();
	pstmt.close();
	conn.close();
	}
	%>

</BODY>
</HTML>