<%@ page import="file.ShareDTO"%>
<%@ page import="file.ShareDAO"%>
<%@ page import="java.io.File"%>
<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="en">

<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>SB Admin 2 - Dashboard</title>

<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="css/sb-admin-2.min.css" rel="stylesheet">
<body id="page-top">


	<%
	//로그인이 된사람은 로그인의 정보를 담을 수 있도록 한다.
	String userID = null;
	  
	if(session.getAttribute("userID") !=null){
		userID = (String) session.getAttribute("userID");
	}
%>

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<ul
			class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
			id="accordionSidebar">

			<!-- Sidebar - Brand -->
			<a
				class="sidebar-brand d-flex align-items-center justify-content-center"
				href="main.jsp">
				<div class="sidebar-brand-icon rotate-n-15">
					<i class="fas fa-laugh-wink"></i>
				</div>
				<div class="sidebar-brand-text mx-3">
					SB Admin <sup>2</sup>
				</div>
			</a>

			<!-- Divider -->
			<hr class="sidebar-divider my-0">

			<!-- Nav Item - Dashboard -->
			<li class="nav-item active"><a class="nav-link"
				href="filePage.jsp"> <i class="fas fa-fw fa-tachometer-alt"></i> <span>파일</span></a>
			</li>

			<!-- Divider -->
			<hr class="sidebar-divider">


			<!-- Heading -->
			<div class="sidebar-heading">Addons</div>

			<!-- Nav Item - Pages Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapsePages"
				aria-expanded="true" aria-controls="collapsePages"> <i
					class="fas fa-fw fa-folder"></i> <span>파일</span>
			</a>
				<div id="collapsePages" class="collapse"
					aria-labelledby="headingPages" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">Login Screens:</h6>
						<a class="collapse-item" href="filePage.jsp">파일 업로드</a> <a
							class="collapse-item" href="Sharefont.jsp">공유 파일</a>

						<div class="collapse-divider"></div>
						<h6 class="collapse-header">Other Pages:</h6>
						<a class="collapse-item" href="downloadPage.jsp">파일 목록</a>
					</div>
				</div></li>

			<!-- Divider -->
			<hr class="sidebar-divider d-none d-md-block">

			<!-- Sidebar Toggler (Sidebar) -->
			<div class="text-center d-none d-md-inline">
				<button class="rounded-circle border-0" id="sidebarToggle"></button>
			</div>

		</ul>
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->
				<nav
					class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

					<!-- Sidebar Toggle (Topbar) -->
					<button id="sidebarToggleTop"
						class="btn btn-link d-md-none rounded-circle mr-3">
						<i class="fa fa-bars"></i>
					</button>

					<!-- Topbar Search -->
					<form
						class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
						<div class="input-group">
							<input type="text" class="form-control bg-light border-0 small"
								placeholder="Search for..." aria-label="Search"
								aria-describedby="basic-addon2">
							<div class="input-group-append">
								<button class="btn btn-primary" type="button">
									<i class="fas fa-search fa-sm"></i>
								</button>
							</div>
						</div>
					</form>

					<!-- Topbar Navbar -->
					<ul class="navbar-nav ml-auto">

						<!-- 검색창 Nav Item - Search Dropdown (Visible Only XS) -->
						<li class="nav-item dropdown no-arrow d-sm-none"><a
							class="nav-link dropdown-toggle" href="#" id="searchDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fas fa-search fa-fw"></i>
						</a> <!-- Dropdown - Messages -->
							<div
								class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
								aria-labelledby="searchDropdown">
								<form class="form-inline mr-auto w-100 navbar-search">
									<div class="input-group">
										<input type="text"
											class="form-control bg-light border-0 small"
											placeholder="Search for..." aria-label="Search"
											aria-describedby="basic-addon2">
										<div class="input-group-append">
											<button class="btn btn-primary" type="button">
												<i class="fas fa-search fa-sm"></i>
											</button>
										</div>
									</div>
								</form>
							</div></li>


						<div class="topbar-divider d-none d-sm-block"></div>

						<%
					if(userID == null){
			%>
						<!-- Nav Item - User Information -->
						<li class="nav-item dropdown no-arrow"><a
							class="nav-link dropdown-toggle" href="#" id="userDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <span
								class="mr-2 d-none d-lg-inline text-gray-600 small">사용자</span> <img
								class="img-profile rounded-circle" src="img/userImg.png">
						</a> <!-- Dropdown - User Information -->
							<div
								class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="userDropdown">

								<div class="dropdown-divider"></div>
								<!-- 로그아웃 위 밑줄 -->

								<a class="dropdown-item" href="login.jsp"> <i
									class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
									Login
								</a>
							</div></li>

						<%
					} else{

			%>
						<!-- Nav Item - User Information -->
						<li class="nav-item dropdown no-arrow"><a
							class="nav-link dropdown-toggle" href="#" id="userDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <span
								class="mr-2 d-none d-lg-inline text-gray-600 small">사용자</span> <img
								class="img-profile rounded-circle" src="img/userImg.png">
						</a> <!-- Dropdown - User Information -->
							<div
								class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="userDropdown">
								<!-- 로그아웃 위 밑줄 -->
								<div class="dropdown-divider"></div>

								<a href="#" class="dropdown-item" aria-haspopup="true"
									aria-expanded="false"> <i
									class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
									회원관리
								</a> <a class="dropdown-item" href="logutAction.jsp" href="#"
									data-toggle="modal" data-target="#logoutModal"> <i
									class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
									Logout
								</a>
							</div></li>
						<%
					}
			%>

					</ul>

				</nav>
				<!-- End of Topbar -->


				<!-- Begin Page Content -->
				<div class="container-fluid">

					<div class="d-sm-flex align-items-center">
						<h1 class="h3 mb-0 text-gray-800">공유 파일 목록</h1>
					</div>

					<!-- Divider -->
					<hr class="sidebar-divider my-0">



					<!-- Page Heading -->
					<div
						class="d-sm-flex align-items-center justify-content-between mb-4"></div>

					<!-- Content Row -->
					<div class="row">

						<div class="container">
							<div class="row">
								<%
				ArrayList<ShareDTO> fileList = new ShareDAO().getList1();
				for(ShareDTO file : fileList){
			%>
								<table class="table table-striped"
									style="text-align: center; border: 1px solid #dddddd">

									<tr>
										<th>파일 이름: <%= file.getFileName1()%></th>
									</tr>

									<tr>
										<td>Test11</td>
									</tr>

									<tr>
										<td>
											<%
							out.write("<a href=\"" + request.getContextPath() + "/SharedownloadAction?file=" + 
									java.net.URLEncoder.encode(file.getFileRealName1(), "UTF-8") + "\">"+ 
												file.getFileName1() + ")</a><br>");
									%>
										</td>
									</tr>


									<tbody>
								</table>
								<%	
								}
								%>

							</div>
						</div>
					</div>

		<!-- Earnings (Monthly) Card Example -->

						<div class="col-xl-3 col-md-6 mb-4">
							<div class="card border-left-info shadow h-100 py-2">
								<div class="card-body">
									<div class="row no-gutters align-items-center">
										<div class="col mr-2">
											<div
												class="text-xs font-weight-bold text-info text-uppercase mb-1">문서 용량</div>
											<div class="row no-gutters align-items-center">
												<div class="col-auto">
												
													<script>
		
											<%String path = "D:/JSP/sharefont/";
											File f = new File(path);
											File[] files = f.listFiles();
										
											// files
											int count = 0;
											for (int i = 0; i < files.length; i++) {
										
													if (files[i].isFile()) {
														count++;
														System.out.println("파일 : " + files[i].getName());
													} else {
														System.out.println("디렉토리명 : " + files[i].getName());
													}
												} // end of for%>
												
											</script>

												<div class="h5 mb-0 mr-3 font-weight-bold text-gray-800"><%out.println(count);%>%</div>
												
												</div>
												<div class="col">
													<div class="progress progress-sm mr-2">
														<div class="progress-bar bg-info" role="progressbar"
															style="width: <%out.println(count);%>%" aria-valuenow="50" aria-valuemin="0"
															aria-valuemax="100"><%out.println(count);%></div>
													</div>
												</div>
											</div>
										</div>
										<div class="col-auto">
											<i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
										</div>
									</div>
								</div>
							</div>
						</div>

						<!-- Pending Requests Card Example -->
						

						<div class="col-xl-3 col-md-6 mb-4">
							<div class="card border-left-warning shadow h-100 py-2">
								<div class="card-body">
									<div class="row no-gutters align-items-center">
										<div class="col mr-2">
											<div
												class="text-xs font-weight-bold text-warning text-uppercase mb-1">파일 갯수</div>
											<div id="count" class="h5 mb-0 font-weight-bold text-gray-800"><%out.println(count);%></div>
										</div>
										<div class="col-auto">
											<i class="fas fa-comments fa-2x text-gray-300"></i>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
				<!-- /.container-fluid -->
			</div>
			<!-- End of Main Content -->

			<!-- Footer -->
			<footer class="sticky-footer bg-white">
				<div class="container my-auto">
					<div class="copyright text-center my-auto">
						<span>Copyright &copy; Your Website 2020</span>
					</div>
				</div>
			</footer>
			<!-- End of Footer -->

		</div>
		<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<!-- 로그아웃 시 알림 창 후 이동 Logout Modal-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">Select "Logout" below if you are ready
					to end your current session.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancel</button>
					<a class="btn btn-primary" href="logutAction.jsp">Logout</a>
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

	<!-- Page level plugins -->
	<script src="vendor/chart.js/Chart.min.js"></script>

	<!-- Page level custom scripts -->
	<script src="js/demo/chart-area-demo.js"></script>
	<script src="js/demo/chart-pie-demo.js"></script>

</body>

</html>
