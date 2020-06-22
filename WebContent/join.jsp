<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1" shrink-to-fit=no">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">

  <title>SB Admin 2 - Register</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body class="bg-gradient-primary">

  <div class="container">

    <div class="card o-hidden border-0 shadow-lg my-5">
      <div class="card-body p-0">
        <!-- Nested Row within Card Body -->
        		<div class="container">
			<div class="col-lg-4"></div>
			<div class="col-lg-4"></div>
				<div class="jumbotron" style="padding-top: 20px;">
					<form method="post" action="joinAction.jsp">
						<h3 style="text-align: center">회원가입 화면</h3>
						<div class="form-group">
							<input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20">
						</div>
						
						<div class="form-group">
							<input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maxlength="20">
						</div>
						
						<div class="form-group">
							<input type="text" class="form-control" placeholder="이름" name="userName" maxlength="20">
						</div>
						
						<div class="form-group" style="text-align: center;">
							<div class="btn-group" data-toggle="buttons">
								<label class="btn btn-primary active">
									<input type="radio" name="userGender" autocomplete="off" value="남자" checked>남자
								</label>
								<label class="btn btn-primary active">
									<input type="radio" name="userGender" autocomplete="off" value="여자" checked>여자
								</label>
							</div>
						</div>
						
						<div class="form-group">
							<input type="email" class="form-control" placeholder="이메일" name="userEmail" maxlength="20">
						</div>
						
						<input type="submit" class="btn btn-primary form-control" value="회원가입">
					</form>
				</div>			
		</div>
        </div>
      </div>
    </div>

  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>

</body>
</html> 