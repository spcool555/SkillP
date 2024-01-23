<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<!-- Basic Page Info -->
	<meta charset="utf-8">
	<title>SkillPilots | Create Password</title>

	<!-- Site favicon -->
	<link rel="apple-touch-icon" sizes="180x180" href="/dist/dash/vendors/images/apple-touch-icon.png">
	<link rel="icon" type="image/png" sizes="16x16" href="/dist/dash/vendors/images/favicon-16x16.png">

	<!-- Mobile Specific Metas -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

	<!-- Google Font -->
	<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
	<!-- CSS -->
	<link rel="stylesheet" type="text/css" href="/dist/dash/vendors/styles/core.css">
	<link rel="stylesheet" type="text/css" href="/dist/dash/vendors/styles/icon-font.min.css">
	<link rel="stylesheet" type="text/css" href="/dist/dash/src/plugins/jquery-steps/jquery.steps.css">
	<link rel="stylesheet" type="text/css" href="/dist/dash/vendors/styles/style.css">

	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-119386393-1"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag(){dataLayer.push(arguments);}
		gtag('js', new Date());

		gtag('config', 'UA-119386393-1');
	</script>
<style type="text/css">
.register-page-wrap .wizard-content .wizard>.content {
	min-height: 80px;
}

.fade:not(.show) {
	opacity: 1;
}
</style>
</head>

<body class="login-page">
	<div class="login-header box-shadow">
		<div class="container-fluid d-flex justify-content-between align-items-center">
			<div class="brand-logo">
				<a href="/home">
					<img src="/dist/dash/vendors/images/deskapp-logos.svg" alt="">
				</a>
			</div>
			<div class="login-menu">
				<ul>
					<li><a href="/">Login</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="register-page-wrap d-flex align-items-center flex-wrap justify-content-center">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-md-6 col-lg-7">
					<img src="/dist/dash/vendors/images/register-page-img.png" alt="">
				</div>
				<div class="col-md-6 col-lg-5">
					<div class="register-box bg-white box-shadow border-radius-10">
						<div class="wizard-content">
							<c:url var="addAction" value="/student_reg_step2"></c:url>
						 <form class="tab-wizard2 wizard-circle wizard" action="changepass" id="myForm" modelAttribute="user"
						               method="post"  style="margin-bottom:0px;">			
					               <h5>Student Registration</h5>
								<section>
							<div class="form-wrap max-width-600 mx-auto">
							
							
							<div  class="form-group row">
											<label class="col-sm-4 col-form-label">User Name</label>
											<div class="col-sm-8">
											<input type="email" name="email" value="${email}" >
											
											
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 col-form-label">Enter Password*</label>
											<div class="col-sm-8">
												<input type="password" id="pass" name="password" class="form-control"
												placeholder="Password" maxlength="255" required="required">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 col-form-label">Confirm Password*</label>
											<div class="col-sm-8">
												<input type="password" name="cpass" id="cPass" class="form-control" placeholder="Enter Confirm Password" maxlength="255"
											required="required"/>
											</div>
										</div>
										
										<div class="alert alert-danger alert-dismissable fade in errorBox" id="errorBox2" style="display: none;">
										<a href="#" class="close" aria-label="close">&times;</a>
										<span id="errorText2"></span>
									</div>
									</div>
								
							</form>
						</div>
					</div>
				</div>
				<c:if test="${not empty message}">
		<div class="register-box alert alert-success fade in" style="margin-top: 15%; text-align:center;">
			<span>${message}</span><br>
			<span><a href="/">Login</a></span>
		</div>
	</c:if>
			</div>
		</div>
	</div>
	<!-- success Popup html Start -->
	<!-- success Popup html End -->
	<!-- js -->
	<%@include file="scriptfiles.jsp"%>
	<script src="/dist/dash/vendors/scripts/core.js"></script>
	<script src="/dist/dash/vendors/scripts/script.min.js"></script>
	<script src="/dist/dash/vendors/scripts/process.js"></script>
	<script src="/dist/dash/vendors/scripts/layout-settings.js"></script>
	<script src="/dist/dash/src/plugins/jquery-steps/jquery.steps1.js"></script>
	<script src="/dist/dash/vendors/scripts/steps-setting.js"></script>
	<script type="text/javascript">
	 $("#Submit").click(function() {
		$("#myForm").submit();
	}); 
	
	
	
	</script>
</body>

</html>