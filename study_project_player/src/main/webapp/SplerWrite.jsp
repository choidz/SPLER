<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

<!-- Bootstrap CSS -->
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />


<!-- Custom CSS -->
<link href="css/writestyle.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">





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






	<form Name='Write' Action='splerwrite_input.jsp' Method='post'
		Onsubmit='return Check()'>

		<div class="postRegister_postWrapper">
			<section>	
				<div class="postRegister_postContentWrapper">
					<span class="postRegister_sequence">1</span>
					<h2 class="postRegister_text">프로젝트 기본 정보를 입력해주세요.</h2>
				</div>

				<input type="hidden" name="num" value="num">


				<!--  1번째  -->

				<ul class="postinfo_inputList">
					<li class="postinfo_listItem"><label
						class="selectbox_labelText">모집 구분</label> <select
						class="select__control css-control" name="division">
							<option value="" disabled selected>프로젝트/스터디</option>
							<option value="프로젝트">프로젝트</option>
							<option value="스터디">스터디</option>
					</select></li>


					<li class="postinfo_listItem"><label
						class="selectbox_labelText">모집 인원</label> <select name="persons"
						class="select__control css-control">
							<option value="" disabled selected>인원미정~10명이상</option>
							<option value="인원미정">인원미정</option>
							<option value="1명">1명</option>
							<option value="2명">2명</option>
							<option value="3명">3명</option>
							<option value="4명">4명</option>
							<option value="5명">5명</option>
							<option value="6명">6명</option>
							<option value="7명">7명</option>
							<option value="8명">8명</option>
							<option value="9명">9명</option>
							<option value="10명">10명이상</option>
					</select></li>
				</ul>

				<!--  2번째  -->


				<ul class="postinfo_inputList">
					<li class="postinfo_listItem"><label
						class="selectbox_labelText">진행 기간</label> <select name="period"
						class="select__control css-control">
							<option value="" disabled selected>기간미정~6개월이상</option>
							<option value="기간미정">기간미정</option>
							<option value="1개월">1개월</option>
							<option value="2개월">2개월</option>
							<option value="3개월">3개월</option>
							<option value="4개월">4개월</option>
							<option value="5개월">5개월</option>
							<option value="6개월">6개월</option>

					</select></li>


					<li class="postinfo_listItem"><label
						class="selectbox_labelText">진행 방식</label> <select
						class="select__control css-control" name="onoff">
							<option value="" disabled selected>온라인/오프라인</option>
							<option value="온라인">온라인</option>
							<option value="오프라인">오프라인</option>
					</select></li>
				</ul>

				<!--  3번째  -->
				<ul class="postinfo_inputList">
					<li class="postinfo_listItem"><label
						class="selectbox_labelText">기술 스택</label> <select
						class="select__control css-control" name="language">
							<option value="" disabled selected>프로젝트 사용 언어</option>
							<option value="JavaScript">JavaScript</option>
							<option value="TypeScript">TypeScript</option>
							<option value="React">React</option>
							<option value="Vue">Vue</option>
							<option value="Svelte">Svelte</option>
							<option value="Nextjs">Nextjs</option>
							<option value="Nodejs">Nodejs</option>
							<option value="Java">Java</option>
							<option value="Spring">Spring</option>
							<option value="Go">Go</option>
							<option value="Nestjs">Nestjs</option>
							<option value="php">php</option>
							<option value="Unity">Unity</option>
							<option value="MySql">MySql</option>
							<option value="Swift">Swift</option>
							<option value="Django">Django</option>
							<option value="Kotlin">Kotlin</option>
					</select></li>


					<li class="postinfo_listItem"><label
						class="selectbox_labelText">시작 예정일</label> <input type="date"
						class="select__control css-control" name="startdate"></li>
				</ul>



				<label class="selectbox_labelText">연락방법</label> <input
					class="input_customInput" name="communication"
					placeholder="ex)이메일주소, 구글 폼 주소, 카카오톡 오픈채팅 주소" type="text">



				<!-- 게시판 -->




			</section>
			<section>
				<div class="postRegister_postContentWrapper">
					<span class="postRegister_sequence">2</span>
					<h2 class="postRegister_text">프로젝트에 대해 소개해주세요.</h2>
				</div>

				<section style="font-size: 17px;">
					<label class="selectbox_labelText">작성자</label> <input
						class="input_customInput" type="text" name="name"
						placeholder="작성자 닉네임 입력해주세요." /> <label
						class="selectbox_labelText" style="margin-top: 20px;">제목</label> <input
						class="input_customInput" type="text" name="title"
						placeholder="글 제목을 입력해주세요" />
					<textarea class="input_customInput"
						style="height: 400px; margin-top: 20px;" cols="70" rows="15"
						placeholder="프로젝트에 대해 소개해주세요" wrap="virtual" name="contents"></textarea>
				</section>



				<section style="text-align: right;">
					<input type='reset' class="writebutton_cancelButton" value='다시 작성'>
					<input type='submit' class="writebutton_registerButton"
						value='글 등록'>

				</section>

			</section>

		</div>
	</form>

</body>

</html>