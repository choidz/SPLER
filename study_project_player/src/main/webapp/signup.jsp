<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원가입 화면 샘플 - Bootstrap</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link href="css/signin.css" rel="stylesheet">

<script language="JavaScript">
	

	function Check_id() {

		browsing_window = window
				.open(
						"checkid.jsp?id=" + signup.id.value,
						"_idcheck",
						"height=200, width=300, menubar=no directories=no, resizeable=no, status=no, scrollbars=yes");
		browsing_window.focus();
	}
</script>



<style>
.check_id {
	position: absolute;
	top: 40px;
	color: white;
	right: 25px;
	padding: 2px 10px;
	font-size: 11px;
	background-color: #742c76;
	border: 1px solid #742c76;
	border-radius: 5px;
}

.input-form {
	max-width: 680px;
	padding: 32px;
	background: #fff;
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	border-radius: 10px;
	-webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	-moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
}
</style>
</head>

<body>


	<div class="container">
		<div class="input-form-backgroud row" style="margin-top: 80px;">

			<span class="login100-form-title" style="padding-bottom: 24px;">
				<a href="Spler.jsp"> <img class="logo" style="width: 190px;"
					src="images/logo.png" alt="logo" data-rjs="2">
			</a>
			</span>

			<div class="input-form col-md-12 mx-auto">
				<h4 class="mb-3">회원가입</h4>


				<form class="validation-form" name="signup" method="post"
					action="splermember_output.jsp" novalidate>

					<div class="row">

						<div class="col-md-6 mb-3">
							<label for="name">아이디</label> <input type="button"
								class="check_id" onclick="Check_id()" value="ID 중복검사"> <input
								type="text" class="form-control" name="id" placeholder=""
								value="" required>


							<div class="invalid-feedback">아이디를 입력해주세요.</div>
						</div>
						<div class="col-md-6 mb-3">
							<label for="nickname">비밀번호</label> <input type="text"
								class="form-control" name="pass" placeholder="" value=""
								required>


							<div class="invalid-feedback">비밀번호를 입력해주세요.</div>
						</div>
					</div>

					<div class="row">

						<div class="col-md-6 mb-3">
							<label for="name">이름</label> <input type="text"
								class="form-control" name="name" placeholder="" value=""
								required>
							<div class="invalid-feedback">이름을 입력해주세요.</div>
						</div>
						<div class="col-md-6 mb-3">
							<label for="nickname">닉네임</label> <input type="text"
								class="form-control" name="nickname" placeholder="" value=""
								required>
							<div class="invalid-feedback">닉네임을 입력해주세요.</div>
						</div>
					</div>

					<div class="mb-3">
						<label for="email">이메일</label> <input type="email"
							class="form-control" name="email" placeholder="you@example.com"
							required>
						<div class="invalid-feedback">이메일을 입력해주세요.</div>
					</div>



					<div class="custom-control custom-checkbox">
						<input type="checkbox" class="custom-control-input" id="aggrement"
							required> <label class="custom-control-label"
							for="aggrement">개인정보 수집 및 이용에 동의합니다.</label>
					</div>
					<div class="mb-4"></div>


					<input class="btn btn-primary btn-lg btn-block" type="submit"
						value="가입 완료" />
				</form>
			</div>
		</div>
	</div>


	<script>
        window.addEventListener('load', () => {
            const forms = document.getElementsByClassName('validation-form');

            Array.prototype.filter.call(forms, (form) => {
                form.addEventListener('submit', function (event) {
                    if (form.checkValidity() === false) {
                        event.preventDefault();
                        event.stopPropagation();
                    }

                    form.classList.add('was-validated');
                }, false);
            });
        }, false);
    </script>
</body>

</html>