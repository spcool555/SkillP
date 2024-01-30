<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<!-- Basic Page Info -->
	<meta charset="utf-8">
	<title>SkillPilots | Company Registration</title>

	<!-- Site favicon -->
	<link rel="apple-touch-icon" sizes="180x180" href="/dist/dash/vendors/images/apple-touch-icon.png">
	<link rel="icon" type="image/png" sizes="16x16" href="/dist/dash/vendors/images/favicon.ico">

	<!-- Mobile Specific Metas -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

	<!-- Google Font -->
	<link rel="stylesheet"	href="/dist/css/terms_and_conditions_with_privacy_policy.css">
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
.custom-control-input {
	position: absolute;
	left: 0px;
	z-index: 0;
	width: 2rem;
	height: 2.25rem;
	opacity: 0;
}

.register-page-wrap .wizard-content .wizard>.steps>ul {
	flex-wrap: initial !important;
}

.custom-file {
	text-align: end;
	width: 117%;
	margin-top: 10px;
}
.register-page-wrap .register-box {
    max-width: fit-content;
}
</style>
</head>

<body class="login-page">
	<div class="login-header box-shadow">
		<div class="container-fluid d-flex justify-content-between align-items-center">
			<div class="brand-logo">
				<a>
					<img src="/dist/dash/vendors/images/deskapp-logo.svg" alt="">
				</a>
			</div>
			<div class="login-menu">
				<ul>
					<li><a href="/home">Home</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="register-page-wrap d-flex align-items-center flex-wrap justify-content-center">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-md-6 col-lg-7">
					<img src="/dist/dash/vendors/images/industry.png" alt="">
				</div>
				<div class="col-md-6 col-lg-5">
					<div class="register-box bg-white box-shadow border-radius-10">
						<div class="wizard-content">
							<c:url var="addAction" value="/add_company"></c:url>
			<form modelAttribute="company" id="my_form" action="add_company" enctype="multipart/form-data"
				method="post" class="form-horizontal tab-wizard2 wizard-circle wizard">
								<h5>Company Details</h5>
								<section>
									<div class="form-wrap max-width-600 mx-auto">
										<div class="form-group row align-items-center">
											<label class="col-sm-4 col-form-label">Company Name<span style="color: red">*</span></label>
											<div class="col-sm-8">
												<input name="company_name" id="comp_name" class="form-control firstCapital" onchange="checkExists(this)"
										onblur="checkExists(this)" required="true" placeholder="Name of the Company" maxlength="200" 
										title="Complete name of the company (to maintain its uniqueness)"/>
									<small id="namelabel" style="color: red;"></small>
											</div>
										</div>
										<div class="form-group row align-items-center">
											<label class="col-sm-4 col-form-label">Registration No. (CIN/GST/etc)<span style="color: red">*</span></label>
											<div class="col-sm-8">
												<input name="registration_no" class="form-control" required="true"
										placeholder="Registration number" maxlength="22" title="Anything for us to verify its legal!"/>
											</div>
										</div>
										<div class="form-group row align-items-center">
											<label class="col-sm-4 col-form-label">Registration Date<span style="color: red">*</span></label>
											<div class="col-sm-8">
												<input type="date" name="estd_date" class="form-control date_OB date-picker" id="date"
										required="true" placeholder="Date of Registration" readonly='true' />
											</div>
										</div>
										<div class="form-group row align-items-center">
											<label class="col-sm-4 col-form-label">Web URL<span style="color: red">*</span></label>
											<div class="col-sm-8">
												<input name="web_url" placeholder="Company Website" class="form-control" required="true"
										maxlength="30"  title="www.example.com"/>
											</div>
										</div>
										
										<div class="form-group row align-items-center">
											<label class="col-sm-4 col-form-label">About<span style="color: red">*</span></label>
											<div class="col-sm-8">
												<input name="about" class="form-control"  placeholder="About company..." />
											</div>
										</div><sub style="bottom: 0.75em;color: red;">Note : (*) All Fields Are Mandetory</sub><br>
									</div>
								</section>
								<!-- Step 2 -->
								<h5>Company Information</h5>
								<section>
									<div class="form-wrap max-width-600 mx-auto">
									<div class="form-group row align-items-center">
											<label class="col-sm-4 col-form-label">Email-Id<span style="color: red">*</span></label>
											<div class="col-sm-8">
												<input name="email_id" id="mail_id" class="form-control" required="true" placeholder="Company Email-Id"/>
									<small id="maillabel" style="color: red;"></small>
											</div>
										</div>
										
										<div class="form-group row align-items-center">
											<label class="col-sm-4 col-form-label">Address (Line-1)<span style="color: red">*</span></label>
											<div class="col-sm-8">
												<input name="line_1" class="form-control" placeholder="Address line 1 "
										id="street_number" required="true"  maxlength="100" title="Please select the city first in the given area."/>
											</div>
										</div>
										<div class="form-group row align-items-center">
											<label class="col-sm-4 col-form-label">Address (Line-2)<span style="color: red">*</span></label>
											<div class="col-sm-8">
												<input name="line_2" class="form-control" title="Please select the city first in the given area."
										id="route" placeholder="Address line 2"  maxlength="100" />
											</div>
										</div>
										<div class="form-group row align-items-center">
											<label class="col-sm-4 col-form-label">City<span style="color: red">*</span></label>
											<div class="col-sm-8">
												<input name="city" class="form-control" title="Please select the city first in the given area."
										placeholder="City" id="locality"  required="true" maxlength="25" />
											</div>
										</div><sub style="bottom: 0.75em;color: red;">Note : (*) All Fields Are Mandetory</sub><br>
									</div>
								</section>
								<!-- Step 3 -->
								<h5>Contact Details</h5>
								<section>
									<div class="form-wrap max-width-600 mx-auto">
									<div class="form-group row align-items-center">
											<label class="col-sm-4 col-form-label">State<span style="color: red">*</span></label>
											<div class="col-sm-8">
												<input name="state" class="form-control" title="Please select the city first in the given area."
										placeholder="State" id="administrative_area_level_1"  required="true" maxlength="25" />
											</div>
										</div>
										<div class="form-group row align-items-center">
											<label class="col-sm-4 col-form-label">Country<span style="color: red">*</span></label>
											<div class="col-sm-8">
												<input name="country" class="form-control" title="Please select the city first in the given area."
										placeholder="Country" id="country" required="true" maxlength="25" />
											</div>
										</div>
										<div class="form-group row align-items-center">
										<label class="col-sm-4 col-form-label">Pincode<span style="color: red">*</span></label>
											<div class="col-sm-8">
												<input name="pincode" class="form-control" pattern="[0-9]{6}" title="Please select the city first in the given area."
										placeholder="Pincode" id="postal_code"  maxlength="6" required="true" />
											</div>
									</div>
									<div class="form-group row align-items-center">
											<label class="col-sm-4 col-form-label">Contact #1</label>
											<div class="col-sm-8">
												<input name="contact_1" id="contact" class="form-control contact" 
										placeholder="Contact #1" onblur="checkContactExists(this)" required="true" maxlength="12" minlength="10" />
									<small id="contact_error" style="color: red;"></small>
											</div>
										</div>
									<div class="form-group row align-items-center">
											<label class="col-sm-4 col-form-label">Contact #2</label>
											<div class="col-sm-8">
												<input name="contact_2" id="contact2" class="form-control contact" pattern="\d*"
										placeholder="Contact #2" 
										onblur="checkContactExists(this)" maxlength="12" minlength="10" />
									<small id="contact2_error" style="color: red;"></small>
											</div>
										</div><sub style="bottom: 0.75em;color: red;">Note : (*) All Fields Are Mandetory</sub><br>
									</div>
								</section>
								<!-- Step 4 -->
								<h5>HR Details</h5>
								<section>
									<div class="form-wrap max-width-600 mx-auto">
										<div class="form-group row align-items-center">
											<label class="col-sm-4 col-form-label">Name<span style="color: red">*</span></label>
											<div class="col-sm-8">
												<input
										type="text" name="username" class="form-control firstCapital"
										required="true" placeholder="User's Name" maxlength="200">
											</div>
										</div>
										<div class="form-group row align-items-center">
											<label class="col-sm-4 col-form-label">Email-Id<span style="color: red">*</span></label>
											<div class="col-sm-8">
												<input
										type="text" name="email" id="mail_id2" class="form-control" maxlength="50"
										pattern="[a-z0-9._%+-]+@[a-z0-9.-]+(\.[a-z]+){1,2}$" required="true"
										placeholder="Enter Email-Id" >
									<small id="maillabel2" style="color: red;"></small>
											</div>
										</div>
										<div class="form-group row align-items-center">
											<label class="col-sm-4 col-form-label">Contact Number<span style="color: red">*</span></label>
											<div class="col-sm-8">
												<input
										type="text" name="contact" id="contact3" class="form-control contact" pattern="\d*"
										placeholder="enter contact No" onchange="checkContactExists(this)"
										onblur="checkContactExists(this)"  maxlength="10" minlength="10"> <small
										id="contact3_error" style="color: red;"></small>
											</div>
										</div>
										<div class="form-group row align-items-center">
											<label class="col-sm-4 col-form-label">Gender</label>
											<div class="col-sm-8">
												<select name="gender" class="form-control" style="padding:0px!important; cursor:pointer;" required="true">
										<option selected value="" disabled="disabled">--Select Gender--</option>
										<option value="M">Male</option>
										<option value="F">Female</option>
									</select>
									
											</div>
										</div><sub style="bottom: 0.75em;color: red;">Note : (*) All Fields Are Mandetory</sub><br>
									</div>
								</section>
								<h5>Upload Logos</h5>
								<section>
									<div class="form-wrap max-width-600 mx-auto">
									<div class="form-group row align-items-center">
										<div class="col-sm-12 row">
										<div class="col-sm-6">
											<input type="file" name="companylogo" id="upload-photo" accept="image/*" class="form-control-file form-control height-auto">
											<small>Upload Company Logo Here</small>
										</div>
										
										<div class="col-sm-6">
											<input type="file" name="hrSign" id="upload-hr_sign" accept="image/*" class="form-control-file form-control height-auto">
										<small>Upload HR Signature Here</small><br></div>
										</div>
									</div>
									<div class="col-sm-12 row">
										<div class="col-sm-5">
												<img id="profile-upload"
													src="/images/blank_profile.jpg"
													alt="your image"
													style="max-width: 180px; max-height: 180px;" />
										</div>
										<div class="col-sm-1"></div>
										<div class="col-sm-5">
												<img id="sign-upload"
													src="/images/blank_profile.jpg"
													alt="your image"
													style="max-width: 180px; max-height: 180px;" />
											
										</div>
									</div>
									<br>
									<div class="custom-control custom-checkbox">
										<span style="margin-left: 6px; font-size: 14px;"
											id="terms_conditions" data-toggle="tooltip"
											data-placement="top"
											title="Please go through the T&C's and Privacy Policy and accept the same.">
											<input type="checkbox" id="term_conditions"
											style="margin-top: 2px; vertical-align: top;"> I
											accept <a href="#" class="embed-link"> *Terms and
												Conditions</a> and <a href="#" class="embed-link-privacy">
												*Privacy Policy</a>
										</span><br>
										<span style="margin-left: 6px; font-size:14px; ">
						<input type="checkbox" name="subscribe" checked="true" style="margin-top:2px; vertical-align:top;">
						  Subscribe to SkillPilots newsletters
					</span>
									</div>
								</div>
								</section>
							
	
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- success Popup html Start -->
	
	<!-- success Popup html End -->
	<!-- js --><%@include file="terms_and_conditions_with_privacy_policy.jsp" %>
	<%@include file="scriptfiles.jsp"%>
	
	<script type="text/javascript" src="/dist/js/myjs/registration_utility1.js"></script>
	<script type="text/javascript" src="/dist/js/myjs/form_elements.js"></script>
	<script src="/dist/js/myjs/alert.js"></script>	
	<script  src="/dist/pdfobject.min.js"></script>
	<script  src="/dist/js/myjs/terms_and_condition_with_privacy_policy.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.0/jquery-confirm.min.js"></script>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAUlCQ6MBRc_JIpz68S5-7prwYjevo1s1M&libraries=places&callback=initAutocomplete" async defer></script>
	<script  src="/dist/js/myjs/geolocation.js"></script>
	<script src="/dist/dash/vendors/scripts/core.js"></script>
	<script src="/dist/dash/vendors/scripts/script.min.js"></script>
	<script src="/dist/dash/vendors/scripts/process.js"></script>
	<script src="/dist/dash/vendors/scripts/layout-settings.js"></script>
	<script src="/dist/dash/src/plugins/jquery-steps/jquery.steps.js"></script>
	<script src="/dist/dash/vendors/scripts/steps-setting.js"></script>
	 <script type="text/javascript">
	$(document).ready(function() {
				$(document).on('change', '.btn-file :file', function() {
					var input = $(this),
						label = input.val().replace(/\\/g, '/').replace(/.*\//, '');
					input.trigger('fileselect', [label]);
				});

				$('.btn-file :file').on('fileselect', function(event, label) {

					var input = $(this).parents('.input-group').find(':text'),
						log = label;

					if (input.length) {
						input.val(log);
					} else {
						if (log) alert(log);
					}

				});
				function readURL(input) {
					if (input.files && input.files[0]) {
						var reader = new FileReader();
						reader.onload = function(e) {
							$('#profile-upload').attr('src', e.target.result);
						}
						reader.readAsDataURL(input.files[0]);
					}
				}

				$("#upload-photo").change(function() {
					readURL(this);
				});
				
				$(document).on('change', '.btn-file :file', function() {
					var input = $(this),
						label = input.val().replace(/\\/g, '/').replace(/.*\//, '');
					input.trigger('fileselect', [label]);
				});

				$('.btn-file :file').on('fileselect', function(event, label) {

					var input = $(this).parents('.input-group').find(':text'),
						log = label;

					if (input.length) {
						input.val(log);
					} else {
						if (log) alert(log);
					}

				});
				function read1URL(input) {
					if (input.files && input.files[0]) {
						var reader = new FileReader();
						reader.onload = function(e) {
							$('#sign-upload').attr('src', e.target.result);
						}
						reader.readAsDataURL(input.files[0]);
					}
				}

				$("#upload-hr_sign").change(function() {
					read1URL(this);
				});
		 });
	 $("#Submit").click(function() {
		$("#my_form").submit();
	}); 
	</script>
</body>

</html>