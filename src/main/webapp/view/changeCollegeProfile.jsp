
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- Basic Page Info -->
<meta charset="utf-8">
<title>SkillPilots | Edit Profile</title>

<!-- Site favicon -->
<link rel="apple-touch-icon" sizes="180x180" href='/dist/dash/vendors/images/apple-touch-icon.png'>
<link rel="icon" type="image/png" sizes="16x16" href='/dist/dash/vendors/images/favicon.ico'>

<!-- Mobile Specific Metas -->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
<!-- CSS -->
<link rel="stylesheet" type="text/css" href='/dist/dash/vendors/styles/core.css'>
<link rel="stylesheet" type="text/css" href='/dist/dash/vendors/styles/icon-font.min.css'>
<link rel="stylesheet" type="text/css" href='/dist/dash/src/plugins/datatables/css/dataTables.bootstrap4.min.css'>
<link rel="stylesheet" type="text/css" href='/dist/dash/src/plugins/datatables/css/responsive.bootstrap4.min.css'>
<link rel="stylesheet" type="text/css" href='/dist/dash/vendors/styles/style.css'>

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async
	src="https://www.googletagmanager.com/gtag/js?id=UA-119386393-1"></script>
<script>
	window.dataLayer = window.dataLayer || [];
	function gtag() {
		dataLayer.push(arguments);
	}
	gtag('js', new Date());

	gtag('config', 'UA-119386393-1');
</script>
<style type="text/css">
	.sidebar-menu .dropdown-toggle {
		padding: 15px 12px 15px 54px!important;
		font-size: 15px!important;
	}
	.user-notification .dropdown-toggle .badge {
    position: absolute;
    right: 5px;
    top: 7px;
    /* background: #0f2c7eeb; */
    width: 5px;
    height: 5px;
    display: block;
    padding: 0;
}
.notification-list ul li a {
    display: block;
    position: relative;
    padding: 0px 15px 1px 7px!important;
    min-height: 75px;
    color: #666;
    font-size: 13px;
    font-weight: 500;
    font-family: 'Inter', sans-serif;
    border-radius: 1px;
    }
    .form-control{
    	height: 40px;
    }
</style>
</head>
<body>
	<div class="pre-loader">
		<div class="pre-loader-box">
			<div class="loader-logo">
				<img src='/dist/dash/vendors/images/deskapp-logos.svg'
					alt="">
			</div>
			<div class='loader-progress' id="progress_div">
				<div class='bar' id='bar1'></div>
			</div>
			<div class='percent' id='percent1'>0%</div>
			<div class="loading-text">Loading...</div>
		</div>
	</div>

	<%@include file="header.jsp"%>

	<div class="right-sidebar">
		<div class="sidebar-title">
			<h3 class="weight-600 font-16 text-blue">
				Layout Settings <span class="btn-block font-weight-400 font-12">User
					Interface Settings</span>
			</h3>
			<div class="close-sidebar" data-toggle="right-sidebar-close">
				<i class="icon-copy ion-close-round"></i>
			</div>
		</div>
		<div class="right-sidebar-body customscroll">
			<div class="right-sidebar-body-content">
				<h4 class="weight-600 font-18 pb-10">Header Background</h4>
				<div class="sidebar-btn-group pb-30 mb-10">
					<a href="javascript:void(0);"
						class="btn btn-outline-primary header-white">White</a> <a
						href="javascript:void(0);"
						class="btn btn-outline-primary header-dark active">Dark</a>
				</div>

				<h4 class="weight-600 font-18 pb-10">Sidebar Background</h4>
				<div class="sidebar-btn-group pb-30 mb-10">
					<a href="javascript:void(0);"
						class="btn btn-outline-primary sidebar-light">White</a> <a
						href="javascript:void(0);"
						class="btn btn-outline-primary sidebar-dark active">Dark</a>
				</div>

				<div class="reset-options pt-30 text-center">
					<button class="btn btn-danger" id="reset-settings">Reset
						Settings</button>
				</div>
			</div>
		</div>
	</div>

	<div class="left-side-bar">
		<div class="brand-logo">
			<a href="javascript:;"> <img
				src='/dist/dash/vendors/images/deskapp-logo.svg' alt="" class="dark-logo"> 
				<img src='/dist/dash/vendors/images/skillpilot_white.svg' alt="" class="light-logo">
			</a>
			<div class="close-sidebar" data-toggle="left-sidebar-close">
				<i class="ion-close-round"></i>
			</div>
		</div>
		<div class="menu-block customscroll">
					<div class="sidebar-menu">
						<ul id="accordion-menu">
							<li><a href="college_dashboard"
								class="dropdown-toggle no-arrow"> <span
									class="micon dw dw-house-1"></span><span class="mtext">Dashboard</span>
							</a></li>
							<li><a href="collegeViewInternships"
								class="dropdown-toggle no-arrow"> <span
									class="micon dw dw-certificate"></span><span class="mtext">Internships</span>
							</a></li>
							<li><a href="external_internship_request_college"
								class="dropdown-toggle no-arrow"> <span
									class="micon dw dw-computer-1"></span><span class="mtext">External
										Requests</span>
							</a></li>
							<li><a href="college_internal_req"
								class="dropdown-toggle no-arrow"> <span
									class="micon dw dw-computer-1"></span><span class="mtext">Internal
										Requests</span>
							</a></li>
							<li><a href="getAppliedStudentsOfCollege"
								class="dropdown-toggle no-arrow"> <span
									class="micon dw dw-user3"></span><span class="mtext">Student
										Application</span>
							</a></li>
							<li><a href="comp_tie_up" class="dropdown-toggle no-arrow">
									<span class="micon dw dw-flow"></span><span class="mtext">Industry
										Tie-ups</span>
							</a></li>
							<li><a href="college_dept" class="dropdown-toggle no-arrow">
									<span class="micon dw dw-time-management"></span><span
									class="mtext">Manage Departments</span>
							</a></li>
							<li><a href="collegeTransactions"
								class="dropdown-toggle no-arrow"> <span
									class="micon dw dw-balance"></span><span class="mtext">Balances</span>
							</a></li>
							<li><a href="college_report"
								class="dropdown-toggle no-arrow"> <span
									class="micon dw dw-edit-2"></span><span class="mtext">Internship
										Reports</span>
							</a></li>
							<li><a href="certificate" class="dropdown-toggle no-arrow">
									<span class="micon dw dw-certificate-1"></span><span
									class="mtext">View Certificate</span>
							</a></li>
						</ul>
					</div>
				</div>
	</div>
	<div class="mobile-menu-overlay"></div>

	<div class="main-container">
		<div>
			<div class="title pb-20 text-center">
				<h4 class="h4 mb-0 text-center" style="color: white;background: #0f2c7eeb;border-radius: 5px;">Edit Your Institute Information</h4>
			</div>
			<div class="pd-20 card-box mb-30">
				<div class="row">
					<div class="col-xl-4 col-lg-4 col-md-4 col-sm-12 mb-30">
						<div class="pd-20 card-box height-100-p">
							<div class="profile-photo">
								<a href="modal" data-toggle="modal" data-target="#modal"
									class="edit-avatar"><i class="fa fa-pencil"></i></a> <img
									src="/get_logo" alt="" class="avatar-photo"
									style="width: -webkit-fill-available; height: -webkit-fill-available;">
								<div class="modal fade" id="modal" tabindex="-1" role="dialog"
									aria-labelledby="modalLabel" aria-hidden="true">
									<div class="modal-dialog modal-dialog-centered" role="document">
										<div class="modal-content">
											<div class="modal-body pd-5">
												<div class="img-container">
													<img id="image" src="/get_logo"
														alt="Picture" style="inline-size: -webkit-fill-available;">
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<h5 class="text-center h5 mb-0">${user_data.username}</h5>
							<p class="text-center text-muted font-14"></p>
							<div class="profile-info">
								<h5 class="mb-20 h5 text-blue">Contact Information</h5>
								<ul>
									<li><span>Email Address:</span>${user_data.email_id}</li>
									<li><span>Phone Number:</span> ${user_data.contact_no}</li>
									<li><span>Account Verified :</span> ${user_data.acc_verified}
									</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-xl-8 col-lg-8 col-md-8 col-sm-12 mb-30">
						<div class="card-box height-100-p overflow-hidden">
							<div class="profile-tab height-100-p">
								<div class="tab height-100-p">
									<ul class="nav nav-tabs customtab" role="tablist">
										<li class="nav-item"><a class="nav-link active"
											data-toggle="tab" href="#timeline" role="tab">Edit Your Institutional
																Information</a></li>
									</ul>
									<div class="tab-content">
										<!-- Timeline Tab start -->
										<div class="tab-pane fade show active" id="timeline"
											role="tabpanel">
											<div class="pd-20">
												<c:url var="addAction" value="/editCollegeProfile"></c:url>
												<form:form action="${addAction}" modelAttribute="college"
						enctype="multipart/form-data" class="form-horizontal">
													<ul class="profile-edit-list row">
														<li class="weight-500 col-md-6">
															<div class="form-group">
																<label>Institute Name</label>
																<form:input path="college_name" class="form-control form-control-lg"
											maxlength="200" readonly="true"/>
															</div>
															<div class="form-group">
																<label>Establishment</label>
																<form:input path="estd_date" class="form-control form-control-lg" readonly="true"/>
															</div>
															<div class="form-group">
																<label>Contact 1</label>
																<form:input type="text" path="contact_1" id="contact" class="form-control form-control-lg contact" pattern="\d*"
												placeholder="enter contact No" onchange="checkContactExists(this)"
												onblur="checkContactExists(this)" required="true" maxlength="12" minlength="10"/>
															</div>
															<div class="form-group">
																<label>Contact 2</label>
																<form:input type="text" path="contact_2" id="contact2" class="form-control form-control-lg contact" pattern="\d*"
												placeholder="enter contact No" maxlength="12" minlength="10"/>
															</div>
															<div class="form-group">
																<label>Web URL</label>
																<form:input path="web_url" class="form-control form-control-lg" maxlength="30" />
															</div>
															<div class="form-group">
																<label>Email-Id</label>
																<form:input path="email_id" class="form-control form-control-lg" readonly="true"/>
															</div>
															<div class="form-group">
																<label>Upload Profile Image</label>
																<div class="custom-file">
																	<input type="file" name="collegelogo" accept="image/*"
												id="upload-photo" class="custom-file-input form-control form-control-lg form-control-file"> <label
																		class="custom-file-label" style="height: 40px;">Choose file</label>
																</div>
															</div>
														</li>
														<li class="weight-500 col-md-6">
															<div class="form-group">
																<label>Address (Line-1)</label>
																<form:input path="address.line_1" class="form-control form-control-lg"
										placeholder="Address line 1 " id="street_number" required="true" disabled="true" maxlength="100" />
															</div>
															<div class="form-group">
																<label>Address (Line-2)</label>
																<form:input path="address.line_2" class="form-control form-control-lg"
										id="route" placeholder="Address line 2" disabled="true" maxlength="100" />
															</div>
															<div class="form-group">
																<label>City</label>
																<form:input path="address.city" class="form-control form-control-lg" 
										placeholder="City" id="locality" readonly="true" required="true" maxlength="25" />
															</div>
															<div class="form-group">
																<label>State</label>
																<form:input path="address.state" class="form-control form-control-lg"
										placeholder="State" id="administrative_area_level_1" readonly="true" required="true" maxlength="25" />
															</div>
															<div class="form-group">
																<label>Country</label>
																<form:input path="address.country" class="form-control form-control-lg"
										placeholder="Country" id="country" readonly="true" required="true" maxlength="25" />
															</div>
															<div class="form-group">
																<label>Pincode</label>
																<form:input path="address.pincode" class="form-control form-control-lg" pattern="[0-9]{6}"
										placeholder="Pincode" id="postal_code" disabled="true" maxlength="6" required="true" />
															</div>
															<div class="form-group mb-0" style="text-align: center;">
																<input type="submit" id="sbtn" class="btn btn-primary btn-sm" style="margin-top: 33px;"
																	value="Save & Update" />
															</div>
														</li>
													</ul>
												</form:form>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<input type="hidden" value="${user_data.email_id}"
					id="existing_emailid"> <input type="hidden"
					value="${user_data.contact_no}" id="existing_contact">
			</div>
			<%@include file="footer.jsp"%>
			</div>
			<input type="hidden" value="${college.email_id}" id="existing_emailid">
			<input type="hidden" value="${college.contact_1}" id="existing_contact">
			<input type="hidden" value="${college.contact_2}" id="existing_contact2">
		</div>
	<!-- js -->
	<%@include file="scriptfiles.jsp"%>
	<script type="text/javascript" src="/dist/js/myjs/registration_utility.js"></script>
	<script type="text/javascript" src="/dist/js/myjs/form_elements.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.0/jquery-confirm.min.js"></script>
	<script src="/dist/js/myjs/alert.js"></script>	
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAUlCQ6MBRc_JIpz68S5-7prwYjevo1s1M&libraries=places&callback=initAutocomplete" async defer></script>
	<script  src="/dist/js/myjs/geolocation.js"></script>
	<script src="/dist/dash/vendors/scripts/core.js"></script>
	<script src="/dist/dash/vendors/scripts/script.min.js"></script>
	<script src="/dist/dash/vendors/scripts/process.js"></script>
	<script src="/dist/dash/vendors/scripts/layout-settings.js"></script>
	<script src="/dist/dash/src/plugins/apexcharts/apexcharts.min.js"></script>
	<script src="/dist/dash/src/plugins/datatables/js/jquery.dataTables.min.js"></script>
	<script src="/dist/dash/src/plugins/datatables/js/dataTables.bootstrap4.min.js"></script>
	<script src="/dist/dash/src/plugins/datatables/js/dataTables.responsive.min.js"></script>
	<script src="/dist/dash/src/plugins/datatables/js/responsive.bootstrap4.min.js"></script>
	<script src="/dist/dash/vendors/scripts/dashboard3.js"></script>
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
					$('.avatar-photo').attr('src', e.target.result);
				}
				reader.readAsDataURL(input.files[0]);
			}
		}

		$("#upload-photo").change(function() {
			readURL(this);
		});
		
 });
	</script>
</body>
</html>