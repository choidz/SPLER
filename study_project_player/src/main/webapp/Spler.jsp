<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>SPLER</title>

<meta name="description" content="Spler">
<meta name="keywords" content="">
<meta name="author" content="tabthemes">


<style>
.nav:after {
	content: none !important;
}

.nav:before {
	content: none !important;
}
</style>


<!-- Bootstrap CSS -->
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />


<!-- Custom CSS -->
<link href="css/writestyle.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
	crossorigin="anonymous"></script>



</head>

<body>


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












	<div class="main_banner" dir="ltr">
		<img class="main_banner_img" src="images/spler.png" alt="JavaScript">
	</div>


	<section class="desktopFilter_filterWrapper">
		<ul class="nav nav-tabs Category_categories" id="myTab" role="tablist">
			<li class="nav-item Catergory_Item" role="presentation">
				<button class="nav-link active" id="home-tab" data-bs-toggle="tab"
					data-bs-target="#home-tab-pane" type="button" role="tab"
					aria-controls="home-tab-pane" aria-selected="true">인기</button>
			</li>
			<li class="nav-item Catergory_Item" role="presentation">
				<button class="nav-link" id="frontend-tab" data-bs-toggle="tab"
					data-bs-target="#frontend-tab-pane" type="button" role="tab"
					aria-controls="frontend-tab-pane" aria-selected="false">프론트엔드</button>
			</li>
			<li class="nav-item Catergory_Item" role="presentation">
				<button class="nav-link" id="backend-tab" data-bs-toggle="tab"
					data-bs-target="#backend-tab-pane" type="button" role="tab"
					aria-controls="backend-tab-pane" aria-selected="false">백엔드</button>
			</li>
			<li class="nav-item Catergory_Item" role="presentation">
				<button class="nav-link" id="mobile-tab" data-bs-toggle="tab"
					data-bs-target="#mobile-tab-pane" type="button" role="tab"
					aria-controls="mobile-tab-pane" aria-selected="false">모바일</button>
			</li>

			<li class="nav-item Catergory_Item" role="presentation">
				<button class="nav-link" id="all-tab" data-bs-toggle="tab"
					data-bs-target="#all-tab-pane" type="button" role="tab"
					aria-controls="all-tab-pane" aria-selected="false">모두보기</button>
			</li>
		</ul>


		<!--  인기 탭  -->

		<div class="tab-content" id="myTabContent">
			<div class="tab-pane show active" id="home-tab-pane" role="tabpanel"
				aria-labelledby="home-tab" tabindex="0">
				<ul class="LanguageBar_languages" id="language_items">
					<li class="LanguageBar_languageIcon"><img
						class="LanguageBar_logo" src="images/javascript.svg"
						alt="JavaScript"><span>JavaScript</span></li>
					<li class="LanguageBar_languageIcon"><img
						class="LanguageBar_logo" src="images/typescript.svg"
						alt="TypeScript"><span>TypeScript</span></li>
					<li class="LanguageBar_languageIcon"><img
						class="LanguageBar_logo" src="images/react.svg" alt="React"><span>React</span></li>
					<li class="LanguageBar_languageIcon"><img
						class="LanguageBar_logo" src="images/vue.svg" alt="Vue"><span>Vue</span></li>
					<li class="LanguageBar_languageIcon"><img
						class="LanguageBar_logo" src="images/svelte.svg" alt="Svelte"><span>Svelte</span></li>
					<li class="LanguageBar_languageIcon"><img
						class="LanguageBar_logo" src="images/nextjs.svg" alt="Nextjs"><span>Nextjs</span></li>
					<li class="LanguageBar_languageIcon"><img
						class="LanguageBar_logo" src="images/nodejs.svg" alt="Nodejs"><span>Nodejs</span></li>
					<li class="LanguageBar_languageIcon"><img
						class="LanguageBar_logo" src="images/java.svg" alt="Java"><span>Java</span></li>
					<li class="LanguageBar_languageIcon"><img
						class="LanguageBar_logo" src="images/spring.svg" alt="Spring"><span>Spring</span></li>
					<li class="LanguageBar_languageIcon"><img
						class="LanguageBar_logo" src="images/go.svg" alt="Go"><span>Go</span></li>
					<li class="LanguageBar_languageIcon"><img
						class="LanguageBar_logo" src="images/nestjs.svg" alt="Nestjs"><span>Nestjs</span></li>
				</ul>
			</div>


			<!--  인기 탭  -->


			<!--  프론트엔드 탭  -->

			<div class="tab-pane " id="frontend-tab-pane" role="tabpanel"
				aria-labelledby="frontend-tab" tabindex="1">
				<ul class="LanguageBar_languages" id="language_items">
					<li class="LanguageBar_languageIcon"><img
						class="LanguageBar_logo" src="images/javascript.svg"
						alt="JavaScript"><span>JavaScript</span></li>
					<li class="LanguageBar_languageIcon"><img
						class="LanguageBar_logo" src="images/typescript.svg"
						alt="TypeScript"><span>TypeScript</span></li>
					<li class="LanguageBar_languageIcon"><img
						class="LanguageBar_logo" src="images/react.svg" alt="React"><span>React</span></li>
					<li class="LanguageBar_languageIcon"><img
						class="LanguageBar_logo" src="images/vue.svg" alt="Vue"><span>Vue</span></li>
					<li class="LanguageBar_languageIcon"><img
						class="LanguageBar_logo" src="images/svelte.svg" alt="Svelte"><span>Svelte</span></li>
					<li class="LanguageBar_languageIcon"><img
						class="LanguageBar_logo" src="images/nextjs.svg" alt="Nextjs"><span>Nextjs</span></li>
				</ul>
			</div>
			<!--  프론트엔드 탭  -->


			<!--  백엔드 탭  -->
			<div class="tab-pane " id="backend-tab-pane" role="tabpanel"
				aria-labelledby="backend-tab" tabindex="2">
				<ul class="LanguageBar_languages" id="language_items">
					<li class="LanguageBar_languageIcon"><img
						class="LanguageBar_logo" src="images/java.svg" alt="Java"><span>Java</span></li>
					<li class="LanguageBar_languageIcon"><img
						class="LanguageBar_logo" src="images/spring.svg" alt="Spring"><span>Spring</span></li>
					<li class="LanguageBar_languageIcon"><img
						class="LanguageBar_logo" src="images/go.svg" alt="Go"><span>Go</span></li>
					<li class="LanguageBar_languageIcon"><img
						class="LanguageBar_logo" src="images/nestjs.svg" alt="Nestjs"><span>Nestjs</span></li>
					<li class="LanguageBar_languageIcon"><img
						class="LanguageBar_logo" src="images/php.svg" alt="php"><span>php</span></li>
					<li class="LanguageBar_languageIcon"><img
						class="LanguageBar_logo" src="images/mysql.svg" alt="MySql"><span>MySql</span></li>
					<li class="LanguageBar_languageIcon"><img
						class="LanguageBar_logo" src="images/django.svg" alt="Django"><span>Django</span></li>
					<li class="LanguageBar_languageIcon"><img
						class="LanguageBar_logo" src="images/nextjs.svg" alt="Nextjs"><span>Nextjs</span></li>
					<li class="LanguageBar_languageIcon"><img
						class="LanguageBar_logo" src="images/nodejs.svg" alt="Nodejs"><span>Nodejs</span></li>
				</ul>
			</div>

			<!--  백엔드 탭  -->




			<!--  모바일 탭  -->

			<div class="tab-pane " id="mobile-tab-pane" role="tabpanel"
				aria-labelledby="mobile-tab" tabindex="3">
				<ul class="LanguageBar_languages" id="language_items">

					<li class="LanguageBar_languageIcon"><img
						class="LanguageBar_logo" src="images/swift.svg" alt="Swift"><span>Swift</span></li>

					<li class="LanguageBar_languageIcon"><img
						class="LanguageBar_logo" src="images/kotlin.svg" alt="Kotlin"><span>Kotlin</span></li>

					<li class="LanguageBar_languageIcon"><img
						class="LanguageBar_logo" src="images/unity.svg" alt="Unity"><span>Unity</span></li>
				</ul>
			</div>
			<!--  모바일 탭  -->



			<!--  모두보기 탭  -->

			<div class="tab-pane " id="all-tab-pane" role="tabpanel"
				aria-labelledby="all-tab" tabindex="4">
				<ul class="LanguageBar_languages" id="language_items">
					<li class="LanguageBar_languageIcon"><img
						class="LanguageBar_logo" src="images/javascript.svg"
						alt="JavaScript"><span>JavaScript</span></li>
					<li class="LanguageBar_languageIcon"><img
						class="LanguageBar_logo" src="images/typescript.svg"
						alt="TypeScript"><span>TypeScript</span></li>
					<li class="LanguageBar_languageIcon"><img
						class="LanguageBar_logo" src="images/react.svg" alt="React"><span>React</span></li>
					<li class="LanguageBar_languageIcon"><img
						class="LanguageBar_logo" src="images/vue.svg" alt="Vue"><span>Vue</span></li>
					<li class="LanguageBar_languageIcon"><img
						class="LanguageBar_logo" src="images/svelte.svg" alt="Svelte"><span>Svelte</span></li>
					<li class="LanguageBar_languageIcon"><img
						class="LanguageBar_logo" src="images/nextjs.svg" alt="Nextjs"><span>Nextjs</span></li>
					<li class="LanguageBar_languageIcon"><img
						class="LanguageBar_logo" src="images/nodejs.svg" alt="Nodejs"><span>Nodejs</span></li>
					<li class="LanguageBar_languageIcon"><img
						class="LanguageBar_logo" src="images/java.svg" alt="Java"><span>Java</span></li>
					<li class="LanguageBar_languageIcon"><img
						class="LanguageBar_logo" src="images/spring.svg" alt="Spring"><span>Spring</span></li>
					<li class="LanguageBar_languageIcon"><img
						class="LanguageBar_logo" src="images/go.svg" alt="Go"><span>Go</span></li>
					<li class="LanguageBar_languageIcon"><img
						class="LanguageBar_logo" src="images/nestjs.svg" alt="Nestjs"><span>Nestjs</span></li>
					<li class="LanguageBar_languageIcon"><img
						class="LanguageBar_logo" src="images/php.svg" alt="php"><span>php</span></li>
					<li class="LanguageBar_languageIcon"><img
						class="LanguageBar_logo" src="images/unity.svg" alt="Unity"><span>Unity</span></li>
					<li class="LanguageBar_languageIcon"><img
						class="LanguageBar_logo" src="images/mysql.svg" alt="MySql"><span>MySql</span></li>
					<li class="LanguageBar_languageIcon"><img
						class="LanguageBar_logo" src="images/swift.svg" alt="Swift"><span>Swift</span></li>
					<li class="LanguageBar_languageIcon"><img
						class="LanguageBar_logo" src="images/django.svg" alt="Django"><span>Django</span></li>
					<li class="LanguageBar_languageIcon"><img
						class="LanguageBar_logo" src="images/kotlin.svg" alt="Kotlin"><span>Kotlin</span></li>
				</ul>
			</div>
			<!--  모두보기 탭  -->

		</div>
	</section>



	<main class="main_content">
		<div class="mainContent_categoryWrapper">
			<section class="mainContent_category">
				<div class="mainContent_category__item">
					<img style="width: 24px; height: 24px;" src="images/all.png"><span>전체</span>
				</div>
				<div class="mainContent_category__item">
					<img style="width: 24px; height: 24px;" src="images/project.png"><span>프로젝트</span>
				</div>
				<div class="mainContent_category__item">
					<img style="width: 24px; height: 24px;" src="images/study.png"><span>스터디</span>
				</div>
			</section>

		</div>
		</section>



		<%
		Class.forName("com.mysql.jdbc.Driver");

		String url = "jdbc:mysql://localhost:3306/dbmember";
		Connection conn = DriverManager.getConnection(url, "member", "1234");

		Statement stmt = conn.createStatement();
		String strSQL = "SELECT * FROM splertable ORDER BY num DESC";
		ResultSet rs = stmt.executeQuery(strSQL);
		%>


		<div class="mainContent_appWrapper">

			<ul class="studyList_studyList">
				<%
				while (rs.next()) {

					int num = rs.getInt("num");
					String name = rs.getString("name");
					String division = rs.getString("division");
					String persons = rs.getString("persons");
					String period = rs.getString("period");
					String onoff = rs.getString("onoff");
					String language = rs.getString("language");
					String startdate = rs.getString("startdate");
					String communication = rs.getString("communication");
					String title = rs.getString("title");
					int readcount = rs.getInt("readcount");
				%>


				<a class="studyItem_studyItem"
					href="splerwrite_output.jsp?num=<%=num%>">
					<li>
						<div class="studyItem_schedule">
							<p class="studyItem_scheduleTitle">시작 예정일 |</p>
							<p><%=startdate%></p>
						</div>
						<h1 class="studyItem_title"><%=title%></h1>
						<ul class="studyItem_hashtag">
							<li>#<%=division%></li>
							<li>#<%=onoff%></li>
							<li>#<%=persons%></li>
							<li>#1<%=period%></li>
						</ul>
						<ul class="studyItem_content">
							<li class="studyItem_language"><img
								class="studyItem_languageImage" title="java"
								src="images/java.svg" alt="language"></li>
							<li class="studyItem_language"><img
								class="studyItem_languageImage" title="java"
								src="images/spring.svg" alt="language"></li>
							<li class="studyItem_language"><img
								class="studyItem_languageImage" title="java"
								src="images/mysql.svg" alt="language"></li>
						</ul>
						<section class="studyItem_info">
							<div class="avatar_user">
								<img class="avatar_userImg avatar_small" src="images/kkk.png"
									alt="avatar">
								<div class="avatar_userName"><%=name%></div>
							</div>
							<div class="studyItem_viewsAndComment">
								<div class="studyItem_infoItem">
									<svg stroke="currentColor" fill="currentColor" stroke-width="0"
										viewBox="0 0 1024 1024" color="#999999" height="30" width="30">
                                        <path
											d="M942.2 486.2C847.4 286.5 704.1 186 512 186c-192.2 0-335.4 100.5-430.2 300.3a60.3 60.3 0 0 0 0 51.5C176.6 737.5 319.9 838 512 838c192.2 0 335.4-100.5 430.2-300.3 7.7-16.2 7.7-35 0-51.5zM512 766c-161.3 0-279.4-81.8-362.7-254C232.6 339.8 350.7 258 512 258c161.3 0 279.4 81.8 362.7 254C791.5 684.2 673.4 766 512 766zm-4-430c-97.2 0-176 78.8-176 176s78.8 176 176 176 176-78.8 176-176-78.8-176-176-176zm0 288c-61.9 0-112-50.1-112-112s50.1-112 112-112 112 50.1 112 112-50.1 112-112 112z">
                                        </path>
                                    </svg>
									<p style="font-size: 22px;"><%=readcount%></p>
								</div>

							</div>
						</section>
				</li>
				</a>
				<%
				}
				%>
				<%
rs.close();
stmt.close();
conn.close();
%>


			</ul>

		</div>





		<!-- Start Footer -->
		<footer class="site-footer">
			<div class="container">
				<div class="social-icon pull-right">
					<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
						class="fa fa-google"></i></a>
				</div>
				<!-- /social-icon -->
			</div>
			<!-- /container -->
		</footer>
		<!-- End Footer -->


		<!-- Back to top -->
		<a href="#" id="back-to-top" title="Back to top"><i
			class="fa fa-angle-up"></i></a>
		<!-- /Back to top -->



		<!-- Bootstrap -->
		<script src="bootstrap/js/bootstrap.min.js"></script>


		<!-- Custom Plugin -->
		<script src="js/custom.js"></script>
</body>

</html>