<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<%@include file="user_session.jsp" %>
<!DOCTYPE html>
<html>
<head>
<!-- Basic Page Info -->
<meta charset="utf-8">
<title>SkillPilot | Edit Profile</title>

<!-- Site favicon -->
<link rel="apple-touch-icon" sizes="180x180" href="/dist/dash/vendors/images/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="16x16" href="/dist/dash/vendors/images/favicon.ico">

<!-- Mobile Specific Metas -->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
<!-- CSS -->
<link rel="stylesheet" type="text/css" href="/dist/dash/vendors/styles/core.css">
<link rel="stylesheet" type="text/css" href="/dist/dash/vendors/styles/icon-font.min.css">
<link rel="stylesheet" type="text/css" href="/dist/dash/src/plugins/datatables/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet" type="text/css" href="/dist/dash/src/plugins/datatables/css/responsive.bootstrap4.min.css">
<link rel="stylesheet" type="text/css" href="/dist/dash/vendors/styles/style.css">

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-119386393-1"></script>
<script>
	window.dataLayer = window.dataLayer || [];
	function gtag() {
		dataLayer.push(arguments);
	}
	gtag('js', new Date());

	gtag('config', 'UA-119386393-1');
</script>
<style type="text/css">
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
.modal-header{
padding: 5px 2px 7px 18px;
}
.custom-file-input, .custom-file-label, .custom-select, .form-control {
    font-family: 'Inter', sans-serif;
    color: #131e22;
    font-weight: 400;
    height: 40px;
    border-color: #d4d4d4;
    letter-spacing: .035em;
    -webkit-transition: all .3s ease-in-out;
    transition: all .3s ease-in-out;
}
</style>
</head>
<body>
	<div class="pre-loader">
		<div class="pre-loader-box">
			<div class="loader-logo">
				<img src="/dist/dash/vendors/images/deskapp-logos.svg"
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
						class="btn btn-outline-primary sidebar-light ">White</a> <a
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
					<li><a href="stud_home" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-house-1"></span><span class="mtext">Dashboard</span>
					</a></li>
					<li><a href="viewCompAndApply"
						class="dropdown-toggle no-arrow"> <span
							class="micon dw dw-list"></span><span class="mtext">Industry
								List</span>
					</a></li>
					<li><a href="studentinternships"
						class="dropdown-toggle no-arrow"> <span
							class="micon dw dw-certificate"></span><span class="mtext">Internships</span>
					</a></li>
					<li><a href="appliedCompanies"
						class="dropdown-toggle no-arrow"> <span
							class="micon dw dw-personal-computer"></span><span class="mtext">Requests
								Status</span>
					</a></li>
					<li><a href="live_chat" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-chat3"></span><span class="mtext">Live
								Chat</span>
					</a></li>
					<li><a href="javascript:;" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-file-411"></span><span class="mtext">Test
								History</span>
					</a></li>
					<li><a href="javascript:;" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-certificate-1"></span><span class="mtext">Internship
								Certificate</span>
					</a></li>

				</ul>
			</div>
		</div>
	</div>
	<div class="mobile-menu-overlay"></div>

	<div class="main-container">
		<div class="xs-pd-20-10 pd-ltr-20">

			<div class="title pb-20 text-center">
				<h5 class="h4 mb-0" style="background: #0f2c7eeb;color: white;border-radius: 5px;">Edit Your Profile Information</h5>
			</div>
			<div class="pd-20 card-box mb-30" style="background: #f9f9f9;">
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
														alt="Picture">
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<h5 class="text-center h5 mb-0">${student.student_name}</h5>
							<p class="text-center text-muted font-14"></p>
							<div class="profile-info">
								<h5 class="mb-20 h5 text-blue">Contact Information</h5>
								<ul>
									<li><span>Email Address:</span> ${student.email_id}</li>
									<li><span>Phone Number:</span> ${student.contact}</li>
									<li><span>Current City:</span> ${student.curr_city}</li>
									<li><span>Enrollment No:</span> ${student.curr_enroll_no}
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
											data-toggle="tab" href="#timeline" role="tab">Personal
												Information</a></li>
										<li class="nav-item"><a class="nav-link"
											data-toggle="tab" href="#tasks" role="tab">Educational
												Details</a></li>
										<!-- <li class="nav-item"><a class="nav-link"
											data-toggle="tab" href="#setting" role="tab">Professional
												Details</a></li> -->
									</ul>
									<div class="tab-content">
										<!-- Timeline Tab start -->
										<div class="tab-pane fade show active" id="timeline"
											role="tabpanel">
											<div class="pd-20">
												
												<form action="${addAction}" modelAttribute="student" enctype="multipart/form-data"
													class="form-horizontal"
													method="post">
													<hidden name="student_id" />
												
													<ul class="profile-edit-list row">
														<li class="weight-500 col-md-6">
															<h4 class="text-blue h5 mb-20">Edit Your Personal
																Setting</h4>
															<div class="form-group">
																<label>Full Name</label>
																<input type="text" name="student_name" value="${student.student_name}"
																	class="form-control form-control-lg" required="true"
																	/>
															</div>
															<!-- <div class="form-group">
																<label>Date of birth</label>
																<input type="date" name="d_o_b"
																	class="form-control form-control-lg" value="" readonly="true" />
															</div> -->
															<div class="form-group" style="padding-bottom: 18px;">
																<label>Gender</label>
																<div class="d-flex">
																	<div class="custom-control custom-radio mb-5 mr-20">
																		
																			<input type="radio" id="customRadio4"
																				name="gender" class="custom-control-input"
																				checked="checked" value="male">
																		
																		<label class="custom-control-label weight-400"
																			for="customRadio4">Male</label>
																	</div>
																	<div class="custom-control custom-radio mb-5">
																		
																			<input type="radio" id="customRadio5"
																				name="gender" class="custom-control-input"
																				checked="checked" value="female">
																		
																		<label class="custom-control-label weight-400"
																			for="customRadio5">Female</label>
																	</div>
																</div>
															</div>

															<div class="form-group">
																<label>Email</label>
																<input name="email_id"
																	class="form-control form-control-lg" readonly="true" value="${student.email_id}"/>
															</div>
															<div class="form-group">
																<label>Contact Number</label>
																<input name="contact" maxlength="10"
																	class="form-control form-control-lg" type="text" value="${student.contact}" />
															</div>
															<div class="form-group">
																<label>Current City</label>
																<input name="curr_city" id="address-autocomplete"
																	maxlength="75" class="form-control form-control-lg"
																	required="true" onFocus="geolocate()" value="${student.home_city}" />
															</div>
															<div class="form-group">
																<label>Home City</label>
																<input name="home_city" id="address-autocomplete2"
																	maxlength="75" class="form-control form-control-lg"
																	required="true" onFocus="geolocate()" />
																<label><input type="checkbox" id="homeCityCheck">Same
																	as current city.</label>
															</div>

														</li>
														<li class="weight-500 col-md-6">
															<h4 class="text-blue h5 mb-20">Edit Your Personal
																Setting</h4>
															<div class="form-group">
																<label>Skills</label>
																<input name="skills"
																	class="form-control form-control-lg" required="true" value="${student.skills}"/>
															</div>
															<div class="form-group">
																<label>Current Enrollment No</label>
																<input name="curr_enroll_no"
																	class="form-control form-control-lg" readonly="true" value="12345"/>
															</div>
															<div class="form-group">
																<label>Interest</label>
																<input name="interest"
																	class="form-control form-control-lg" value="${student.interest}"/>
															</div>
															<div class="form-group">
																<label>Hobbies</label>
																<input name="hobbies"
																	class="form-control form-control-lg" value="${student.hobbies}"/>
															</div>
															<div class="form-group">
																<label>Achievements</label>
																<input name="achievements"
																	class="form-control form-control-lg" value="${student.achievements}"/>
															</div>
															<div class="form-group">
																<label>Select Profile Image</label>
																<div class="custom-file">
																	<input type="file" name="profile_photo" id="profile_photo" class="custom-file-input form-control form-control-lg form-control-file"> <label
																		class="custom-file-label">Choose file</label>
																</div>
															</div>
															<div class="form-group mb-0">
																<input type="submit" id="sbtn" class="btn btn-primary"
																	value="Save & Update" />
															</div>
														</li>
													</ul>
												</form>
											</div>
										</div>
										<!-- Timeline Tab End -->
										<!-- Tasks Tab start -->
										<div class="tab-pane fade" id="tasks" role="tabpanel">
											<div class="pd-20 profile-task-wrap">
												<div class="container pd-0">
													<!-- Open Task start -->
													<div class="task-title row align-items-center">
														<div class="col-md-8 col-sm-12">
															<h5></h5>
														</div>
														<div class="col-md-4 col-sm-12 text-right">
															<a href="task-add" data-toggle="modal"
																data-target="#task-add"
																class="bg-light-blue btn text-blue weight-500"><i
																class="ion-plus-round"></i> Add</a>
														</div>
													</div>
													<div class="profile-task-list pb-30">
														<table id="edu_table" class="table table-bordered nowrap table-responsive">
															<thead class="thead-light">
																<tr>
																	<th>Education</th>
																	<th>Stream</th>
																	<th>School/Institute</th>
																	<th>Board/University</th>
																	<th>Marks(%)</th>
																	<th>Year of Passing</th>
																	<th></th>
																</tr>
															</thead>
															<tbody>
															
																<c:forEach items="${studentPast}" var="studPast">
																	<tr id="tr_${studPast.category}">
																		<td>${studPast.category}</td>
																		<td>${studPast.department}</td>
																		<td>${studPast.organization}</td>
																		<td>${studPast.board}</td>
																		<td>${studPast.description}</td>
																		<td>${studPast.end_date}</td>
																		<td style="white-space:nowrap;padding-left: 13px;"><c:if
																				test="${studPast.stud_past_id!=student.studentPast.stud_past_id}">
																				<i style="background: #0da0e2;color:white;padding: 3px 0 3px 7px;border-radius: 3px;"
																					onclick="editeducation('${studPast.stud_past_id}','${studPast.category}','${studPast.department}','${studPast.organization}','${studPast.board}','${studPast.description}','${studPast.end_date}')"
																					class="fa fa-pencil pr-2"></i>
																				<i class="fa fa-times" style="background: red;color:white;padding: 3px 7px 3px 7px;border-radius: 3px;"
																					onclick="removeStudentEdu('${studPast.stud_past_id}')"
																					id="rem${studPast.stud_past_id}"></i>
																			</c:if> <c:if
																				test="${studPast.stud_past_id==student.studentPast.stud_past_id}">
																				<i class="fa fa-info-circle" style="background: #0da0e2;padding: 3px 8px 3px 7px;border-radius: 3px;"
																					title="Current Education cannot be edited/deleted!"></i>
																			</c:if></td>
																	</tr>
																</c:forEach>
															</tbody>
														</table>
													</div>
													<!-- Open Task End -->
													<!-- add task popup start -->
													<div class="modal fade customscroll" id="task-add"
														tabindex="-1" role="dialog">
														<div class="modal-dialog modal-dialog-centered"
															role="document">
															<div class="modal-content">
																<div class="modal-header">
																	<h5 class="modal-title" id="exampleModalLongTitle">Add
																		Educational Qualification</h5>
																	<button type="button" class="close"
																		data-dismiss="modal" aria-label="Close"
																		data-toggle="tooltip" data-placement="bottom" title=""
																		data-original-title="Close Modal">
																		<span aria-hidden="true">&times;</span>
																	</button>
																</div>
																<div class="modal-body pd-0">
																	<div class="task-list-form">
																		<ul>
																			<li>
																				<div class="form-group row">
																					<label class="col-md-4">Select Category</label>
																					<div class="col-md-8">
																						<select id="degreeSelector" class="form-control"
																							style="display: inline; height: 100%;">
																							<option disabled="disabled" selected="selected">--Select Category--</option>
																							<option value="SSC">SSC</option>
																							<option value="HSC">HSC</option>
																							<c:if test="${category!=ProjectConstants.student_education_diploma}">
																								<option value="${ProjectConstants.student_education_diploma}">DIPLOMA</option>
																							</c:if>
																							<c:if test="${category==ProjectConstants.student_education_pg||category==ProjectConstants.student_education_phd||category=='none'||category==null}">
																								<option value="UG">UG</option>
																							</c:if>
																							<c:if test="${category==ProjectConstants.student_education_phd||category=='none'||category==null}">
																								<option value="PG">PG</option>
																							</c:if>
																							<c:if test="${category=='none'||category==null}">
																								<option value="PHD">PHD</option>
																							</c:if>
																						</select>

																					</div>
																				</div>
																				<div id="edu_div" style="display: none">
																					<form id="edu_form2" action="saveStudentPast" method="post">
																						<input type="hidden" value="0" name="stud_past_id"
																							id="edu_stud_past_id" /> <input type="hidden"
																							value="${user.id}" name="student_id" />
																						<input type="hidden" name="category"
																							id="edu_category" />
																						<div class="row">
																							<div class="col-md-6">
																								<div class="form-group">
																									<label id="edu_organization_label">School
																										Name</label>
																									<div id="existing_organization">
																										<select class="form-control"
																											id="existing_colleges">
																											<option selected value="" disabled="disabled">--Select
																												a Institute--</option>
																											<c:forEach items="${colleges}" var="college">
																												<option value="${college.college_id}">${college.college_name}</option>
																											</c:forEach>
																											<option value="other">Other</option>
																										</select>
																									</div>
																									<br>
																									<div id="organization_text">
																										<input type="text" name="organization" 
																											class="form-control" id="edu_organization"
																											maxlength="100" />
																									</div>
																								</div>
																							</div>
																							<div class="col-md-6">
																								<div class="form-group">
																									<label>Year of Passing</label> <input
																										type="number" name="end_date"
																										class="form-control" id="edu_enddate"
																										min="1900"
																										max="${ProjectConstants.current_year}"
																										required />
																								</div>
																							</div>
																							<div class="col-md-6">
																								<div class="form-group">
																									<label id="edu_board_label">Board/University</label>
																									<input type="text" name="board"
																										class="form-control" id="edu_board"
																										maxlength="80" required />
																								</div>
																							</div>
																							<div class="col-md-6" id="edu_department_div">
																								<div class="form-group">
																									<label>Stream/Degree</label> <select
																										class="form-control mySelect"
																										name="department" id="edu_departments">
																										<option selected value="" disabled="disabled">--Select
																											a Stream/Degree--</option>
																											<option value="bca">bca</option>
																											<option value="bcca">bcca</option>
																											<option value="bsc-it">bsc-it</option>
																											<option value="bsc-cs">bsc-cs</option>
																									</select>
																								</div>
																							</div>
																							
																							<div class="col-md-6">
																								<div class="form-group">
																									<label>Marks(%)</label> <input type="text"
																										name="description" class="form-control"
																										id="edu_description"
																										pattern="[0-9]{1,2}([\.][0-9]{0,2})?" required />
																								</div>
																							</div>
																						</div>
																						<div class="pull-right form-group">
																							<input type="submit" class="btn btn-primary"
																								value="Save" />
																						</div>
																					</form>
																				</div>
																			</li>
																		</ul>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<!-- add task popup End -->
												</div>
											</div>
										</div>
										<!-- Tasks Tab End -->
										<!-- Setting Tab start -->
										<div class="tab-pane fade" id="tasks" role="tabpanel">
											<div class="pd-20 profile-task-wrap">
												<div class="container pd-0">
													<!-- Open Task start -->
													<div class="task-title row align-items-center">
														<div class="col-md-8 col-sm-12">
															<h5></h5>
														</div>
														<div class="col-md-4 col-sm-12 text-right">
															<a href="task-add" data-toggle="modal"
																data-target="#task-add"
																class="bg-light-blue btn text-blue weight-500"><i
																class="ion-plus-round"></i> Add</a>
														</div>
													</div>
													<div class="profile-task-list pb-30">
														<table id="edu_table" class="table table-bordered nowrap table-responsive">
															<thead class="thead-light">
																<tr>
																	<th>Education</th>
																	<th>Stream</th>
																	<th>School/Institute</th>
																	<th>Board/University</th>
																	<th>Marks(%)</th>
																	<th>Year of Passing</th>
																	<th></th>
																</tr>
															</thead>
															<tbody>
																<c:forEach items="${studentPast}" var="studPast">
																	<tr id="tr_${studPast.category}">
																		<td>${studPast.category}</td>
																		<td>${studPast.department}</td>
																		<td>${studPast.organization}</td>
																		<td>${studPast.board}</td>
																		<td>${studPast.description}</td>
																		<td>${studPast.end_date}</td>
																		<td style="white-space:nowrap;padding-left: 13px;"><c:if
																				test="${studPast.stud_past_id!=student.studentPast.stud_past_id}">
																				<i
																					onclick="editeducation('${studPast.stud_past_id}','${studPast.category}','${studPast.department}'
												,'${studPast.organization}','${studPast.board}','${studPast.description}','${studPast.end_date}')"
																					class="fa fa-pencil pr-2" style="background: #0da0e2;color:white;padding: 3px 0 3px 7px;border-radius: 3px;"></i>
																				<i class="fa fa-times" style="background: red;color:white;padding: 3px 0 3px 7px;border-radius: 3px;"
																					onclick="removeStudentEdu('${studPast.stud_past_id}')"
																					id="rem${studPast.stud_past_id}"></i>
																			</c:if> <c:if
																				test="${studPast.stud_past_id==student.studentPast.stud_past_id}">
																				<i class="fa fa-info-circle" style="background: #0da0e2;color:white;padding: 3px 7px 3px 7px;border-radius: 3px;"
																					title="Current Education cannot be edited/deleted!"></i>
																			</c:if></td>
																	</tr>
																</c:forEach>
															</tbody>
														</table>
													</div>
													<!-- Open Task End -->
													<!-- add task popup start -->
													<div class="modal fade customscroll" id="task-add"
														tabindex="-1" role="dialog">
														<div class="modal-dialog modal-dialog-centered"
															role="document">
															<div class="modal-content">
																<div class="modal-header">
																	<h5 class="modal-title" id="exampleModalLongTitle">Add
																		Educational Qualification</h5>
																	<button type="button" class="close"
																		data-dismiss="modal" aria-label="Close"
																		data-toggle="tooltip" data-placement="bottom" title=""
																		data-original-title="Close Modal">
																		<span aria-hidden="true">&times;</span>
																	</button>
																</div>
																<div class="modal-body pd-0">
																	<div class="task-list-form">
																		<ul>
																			<li>
																				<div class="form-group row">
																					<label class="col-md-4">Select Category</label>
																					<div class="col-md-8">
																						<select id="degreeSelector" class="form-control"
																							style="display: inline; height: 100%;">
																							<option disabled="disabled" selected="selected">--Select Category--</option>
																							<option value="${ProjectConstants.student_education_ssc}">SSC</option>
																							<option value="${ProjectConstants.student_education_hsc}">HSC</option>
																							<c:if test="${category!=ProjectConstants.student_education_diploma}">
																								<option value="${ProjectConstants.student_education_diploma}">DIPLOMA</option>
																							</c:if>
																							<c:if test="${category==ProjectConstants.student_education_pg||category==ProjectConstants.student_education_phd||category=='none'||category==null}">
																								<option value="${ProjectConstants.student_education_ug}">UG</option>
																							</c:if>
																							<c:if test="${category==ProjectConstants.student_education_phd||category=='none'||category==null}">
																								<option value="${ProjectConstants.student_education_pg}">PG</option>
																							</c:if>
																							<c:if test="${category=='none'||category==null}">
																								<option value="${ProjectConstants.student_education_phd}">PHD</option>
																							</c:if>
																						</select>

																					</div>
																				</div>
																			
																			</li>
																		</ul>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<!-- add task popup End -->
												</div>
											</div>
										</div>

										<div class="tab-pane fade height-100-p" id="setting"
											role="tabpanel">
											<div class="pd-20 profile-task-wrap">
												<div class="container pd-0">
													<!-- Open Task start -->
													<div class="task-title row align-items-center">
														<div class="col-md-8 col-sm-12">
															<h5></h5>
														</div>
														<div class="col-md-4 col-sm-12 text-right">
															<a href="prof-add1" data-toggle="modal"
																data-target="#prof-add1"
																class="bg-light-blue btn text-blue weight-500"><i
																class="ion-plus-round"></i> Add</a>
														</div>
													</div>
													<div class="profile-task-list pb-30">
														<table id="training_table" class="table table-bordered nowrap table-responsive">
															<thead class="thead-light">
																<tr>
																	<th>Institute Name</th>
																	<th>Training Program</th>
																	<th>Skill</th>
																	<th>Location</th>
																	<th>Start Date</th>
																	<th>End Date</th>
																	<th style="width: 12px;">Action</th>
																</tr>
															</thead>
															<tbody></tbody>
														</table>
													</div>
													<div id="project_div" class="professional_div">
														<legend>Project(s)</legend>
														<table id="project_table" class="table table-bordered nowrap table-responsive">
															<thead class="thead-light">
																<tr>
																	<th>Project Title</th>
																	<th>Role</th>
																	<th>Skill</th>
																	<th>Start Date</th>
																	<th>End Date</th>
																	<th>Project Link</th>
																	<th>Description</th>
																	<th style="width: 12px;"></th>
																</tr>
															</thead>
															<tbody></tbody>
														</table>
													</div>
													<div id="training_div" class="professional_div">
														<legend>Training(s)</legend>
														<table id="training_table" class="table table-bordered">
															<thead>
																<tr>
																	<th>Institute Name</th>
																	<th>Training Program</th>
																	<th>Skill</th>
																	<th>Location</th>
																	<th>Start Date</th>
																	<th>End Date</th>
																	<th style="width: 12px;"></th>
																</tr>
															</thead>
															<tbody></tbody>
														</table>
													</div>
													<div id="worksample_div" class="professional_div">
														<legend>Work Sample(s)</legend>
														<table id="worksample_table" class="table table-bordered">
															<thead>
																<tr>
																	<th>Work Sample Link</th>
																	<th style="width: 12px;"></th>
																</tr>
															</thead>
															<tbody></tbody>
														</table>
													</div>

													<div id="internship_div" class="professional_div">
														<legend>Internship(s)</legend>
														<table id="internship_table"
															class="table table-bordered nowrap table-responsive">
															<thead>
																<tr>
																	<th>Industry</th>
																	<th>Location</th>
																	<th>Role</th>
																	<th>Skill</th>
																	<th>Start Date</th>
																	<th>End Date</th>
																	<th>Project Link</th>
																	<th>Description</th>
																	<th style="width: 12px; white-space:nowrap;"></th>
																</tr>
															</thead>
															<tbody></tbody>
														</table>
													</div>

													<div id="job_div" class="professional_div">
														<legend>Job(s)</legend>
														<table id="job_table"
															class="table table-bordered nowrap table-responsive">
															<thead>
																<tr>
																	<th>Industry</th>
																	<th>Location</th>
																	<th>Role</th>
																	<th>Skill</th>
																	<th>Start Date</th>
																	<th>End Date</th>
																	<th>Description</th>
																	<th style="width: 12px;"></th>
																</tr>
															</thead>
															<tbody></tbody>
														</table>
													</div>
													<!-- Open Task End -->
													<!-- add task popup start -->
													<div class="modal fade customscroll" id="prof-add1"
														tabindex="-1" role="dialog">
														<div class="modal-dialog modal-dialog-centered"
															role="document">
															<div class="modal-content">
																<div class="modal-header">
																	<h5 class="modal-title" id="exampleModalLongTitle">Add Professional Details</h5>
																	<button type="button" class="close"
																		data-dismiss="modal" aria-label="Close"
																		data-toggle="tooltip" data-placement="bottom" title=""
																		data-original-title="Close Modal">
																		<span aria-hidden="true">&times;</span>
																	</button>
																</div>
																<div class="modal-body pd-0">
																	<div class="task-list-form">
																		<ul>
																			<li>
																				<div class="form-group row">
																					<label class="col-md-4">Select Category</label>
																					<div class="col-md-8">
																						<select id="professionSelector1"
																							class="form-control"
																							style="display: inline; width: 150px">
																							<option disabled="disabled" selected="selected">--Select
																								Category--</option>
																							<option value="P">Project</option>
																							<option value="T">Training</option>
																							<option value="W">Work Sample</option>
																							<option value="I">Internship</option>
																							<option value="J">Job</option>
																						</select>

																					</div>
																				</div>
																				<div id="prof_div1" style="display:none">
				<form id="prof_form1">
					<input type="hidden" name="stud_past_id" id="prof_stud_past_id1"/>
					<input type="hidden" value="${user_data.user_id}" name="student_id1" />
					<input type="hidden" name="category" id="prof_category1"/>
					<div class="row" style="margin-right: 0px;margin-left: 0px;">
						<div class="col-md-6" id="organization_div1">
							<div class="form-group">
								<label id="organization_label1">Company Name</label>
								<input type="text" id="prof_organization1" name="organization" class="form-control" 
									required maxlength="100"/>
							</div>
						</div>
						<div class="col-md-6" id="profile_div1">
							<div class="form-group">
								<label id="profile_label1">Role</label>
								<input type="text" name="profile" id="prof_profile1" maxlength="50"	class="form-control" required/>
							</div>
						</div>
						<div class="col-md-6" id="description_div1">
							<div class="form-group">
								<label>Description</label> <input type="text" name="description" id="prof_description1"
									class="form-control" required maxlength="1000"/>
							</div>
						</div>
						<div class="col-md-6" id="location_div1">
							<div class="form-group">
								<label>Location</label> <input type="text" name="location" id="prof_location1"
									class="form-control" required maxlength="100"/>
							</div>
						</div>
						<div class="col-md-6" id="department_div1">
							<div class="form-group">
								<label>Skills</label> <input type="text" name="department" id="prof_department1" value="hhh"
									class="form-control" required maxlength="80"/>
							</div>
						</div>
						<div class="col-md-6" id="link_div1">
							<div class="form-group">
								<label>Link</label>
								<input type="text" name="link" id="prof_link1" class="form-control" required maxlength="100"
									pattern="[a-zA-Z0-9_\-]+(\.[a-zA-Z0-9_\-]+){2,3}$" title="www.example.com"/>
							</div>
						</div>
					</div>
					<div class="row" style="margin-right: 0px;margin-left: 0px;">
						<div class="col-md-6">
							<div class="form-group" id="startdate_div1">
								<label>Start Date</label> <input type="text" name="start_date" id="prof_start_date1"
									class="form-control date-picker" readonly='true' pattern="dd/MM/yyyy" required/>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group" id="enddate_div1">
								<label>End Date</label> <input type="text" name="end_date" id="prof_end_date1"
									class="form-control date-picker" readonly='true' required/>
							</div>
						</div>
					</div>
					<div class="form-group" style="text-align: center;"><input type="submit" class="btn btn-primary" value="Save"/></div>
				</form>
			</div>
																			</li>
																		</ul>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<!-- add task popup End -->
												</div>
											</div>
										</div>
										<!-- Setting Tab End -->
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
<input type="hidden" value="${user_data.email_id}" id="existing_emailid">
			<input type="hidden" value="${user_data.contact_no}" id="existing_contact">
			</div>

			<%@include file="modal_common.jsp"%>	
			<%@include file="footer.jsp"%>
		</div>
	</div>
	<!-- js -->
	<%@include file="modal_stud_past.jsp"%>
	<%@include file="scriptfiles.jsp"%>
	<script src="/dist/js/myjs/common.js"></script>
	<script src="/dist/js/myjs/projectConstants.js"></script>
	<script type="text/javascript" src="/dist/js/myjs/form_elements.js"></script>
	<script type="text/javascript" src="/dist/js/myjs/registration_utility.js"></script>
	<script src="/dist/js/myjs/student_past_edu.js"></script>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAUlCQ6MBRc_JIpz68S5-7prwYjevo1s1M&libraries=places&callback=initAutocomplete"
		async defer></script>
	<script src="/dist/js/myjs/geolocation2.js"></script>
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
		$('#homeCityCheck').change(function() {
			if ($(this).is(":checked")) {
				var returnVal = $('#address-autocomplete').val();
				$('#address-autocomplete2').val(returnVal);
			} else {
				$('#address-autocomplete2').val("");
			}
		});

		var project_table = $("#project_table").DataTable({
			searching : false,
			paging : false,
			info : false,
		});
		var training_table = $("#training_table").DataTable({
			searching : false,
			paging : false,
			info : false,
		});
		var worksample_table = $("#worksample_table").DataTable({
			searching : false,
			paging : false,
			info : false,
		});
		var internship_table = $("#internship_table").DataTable({
			searching : false,
			paging : false,
			info : false,
		});
		var job_table = $("#job_table").DataTable({
			searching : false,
			paging : false,
			info : false,
		});
		$(document).ready(function() {
							$ .ajax({
										type : 'get',
										url : 'getStudentPastProfessions',
										success : function(
												studentPastProfession) {
											if (studentPastProfession.length > 0) {
												$("#empty_professional_div")
														.hide();
												for (i = 0; i < studentPastProfession.length; i++) {
													addStudentProfRow(studentPastProfession[i]);
												}
												if (project_table.rows().any())
													$("#project_div").show();
												else
													$("#project_div").hide();

												if (training_table.rows().any())
													$("#training_div").show();
												else
													$("#training_div").hide();

												if (worksample_table.rows()
														.any())
													$("#worksample_div").show();
												else
													$("#worksample_div").hide();

												if (internship_table.rows()
														.any())
													$("#internship_div").show();
												else
													$("#internship_div").hide();

												if (job_table.rows().any())
													$("#job_div").show();
												else
													$("#job_div").hide();
											} else {
												$("#project_div").hide();
												$("#training_div").hide();
												$("#worksample_div").hide();
												$("#internship_div").hide();
												$("#job_div").hide();
												$("#empty_professional_div")
														.show();
											}
										},
										error : function(error) {
											alert(error);
										}
									});

							//this code checkbox address is same checkbox already checked  
							if ($('#address-autocomplete').val() == $(
									'#address-autocomplete2').val()) {
								$('#homeCityCheck').prop('checked', true);
							}
						});

		function clear_prof_form() {
			$('#prof_stud_past_id').val('0');
			$('#prof_category').val('');
			$('#professionSelector').prop('disabled', false);
			$('#professionSelector1').prop('disabled', false);
			document.getElementById("prof_div").style.display = "none";
			document.getElementById("prof_div1").style.display = "none";
			$('#prof_organization').val('');
			$('#prof_profile').val('');
			$('#prof_description').val('');
			$('#prof_location').val('');
			$('#prof_department').val('');
			$('#prof_link').val('');
			$('#prof_start_date').val('');
			$('#prof_end_date').val('');
			$('#prof_stud_past_id1').val('0');
			$('#prof_category1').val('');
		
			$('#prof_organization1').val('');
			$('#prof_profile1').val('');
			$('#prof_description1').val('');
			$('#prof_location1').val('');
			$('#prof_department1').val('');
			$('#prof_link1').val('');
			$('#prof_start_date1').val('');
			$('#prof_end_date1').val('');
		}

		function editprofession(stud_past_id, category, organization, location,
				profile, department, start_date, end_date, link, description) {
			clear_prof_form();
			console.log(stud_past_id);
			if (stud_past_id != '0') {
				$("#prof_stud_past_id").val(stud_past_id);
				$("#prof_category").val(category);
				$('#professionSelector').val(category);
				$('#professionSelector').prop('disabled', true);
				$('#professionSelector').change();
				$('#prof_organization').val(organization);
				$('#prof_location').val(location);
				$('#prof_profile').val(profile);
				$('#prof_department').val(department);
				$('#prof_start_date').val(start_date);
				$('#prof_end_date').val(end_date);
				$('#prof_link').val(link);
				$('#prof_description').val(description);
			} else
				$('#professionSelector').val('');
			$("#addMoreProfession").modal('show');
			document.getElementById("prof_div").style.display="block";
		}

		$('#professionSelector').change(function() {
							if ($("#prof_stud_past_id").val() == "0")
								clear_prof_form();
							$("#prof_category").val($(this).val());
							if ($(this).val() != "W") {
								$('#organization_div').show();
								$('#prof_organization').prop('required', true);
								$('#profile_div').show();
								$('#prof_profile').prop('required', true);
								$('#department_div').show();
								$('#prof_department').prop('required', true);
								$('#startdate_div').show();
								$('#prof_start_date').prop('required', true);
								$('#enddate_div').show();
								$('#prof_end_date').prop('required', true);

								if ($(this).val() != "P") {
									$('#location_div').show();
									$('#prof_location').prop('required', true);
								} else {
									$('#location_div').hide();
									$('#prof_location').prop('required', false);
								}

								if ($(this).val() == "I"
										|| $(this).val() == "P") {
									$('#link_div').show();
								} else {
									$('#link_div').hide();
									$('#prof_link').prop('required', false);
								}

								if ($(this).val() == "T") {
									$('#organization_label').text(
											'Institute/Organization Name');
									$('#profile_label')
											.text('Training Program');
									$('#description_div').hide();
									$('#prof_description').prop('required',
											false);
								} else if ($(this).val() == "P") {
									$('#organization_label').text(
											'Project Title');
								} else {
									$('#organization_label').text('Industry');
									$('#profile_label').text('Role');
									$('#description_div').show();
									$('#prof_description').prop('required',
											true);
								}
							} else {
								$('#organization_div').hide();
								$('#prof_organization').prop('required', false);
								$('#profile_div').hide();
								$('#prof_profile').prop('required', false);
								$('#description_div').hide();
								$('#prof_description').prop('required', false);
								$('#location_div').hide();
								$('#prof_location').prop('required', false);
								$('#department_div').hide();
								$('#prof_department').prop('required', false);
								$('#link_div').show();
								$('#prof_link').prop('required', true);
								$('#startdate_div').hide();
								$('#prof_start_date').prop('required', false);
								$('#enddate_div').hide();
								$('#prof_end_date').prop('required', false);
							}
							//document.getElementById("prof_div").style.display = "block";
							document.getElementById("prof_div").style.display = "block";
						});
		
		$('#professionSelector1').change(function() {
			if ($("#prof_stud_past_id1").val() == "0")
				clear_prof_form();
			$("#prof_category1").val($(this).val());
			if ($(this).val() != "W") {
				$('#organization_div1').show();
				$('#prof_organization1').prop('required', true);
				$('#profile_div1').show();
				$('#prof_profile1').prop('required', true);
				$('#department_div1').show();
				$('#prof_department1').prop('required', true);
				$('#startdate_div1').show();
				$('#prof_start_date1').prop('required', true);
				$('#enddate_div1').show();
				$('#prof_end_date1').prop('required', true);

				if ($(this).val() != "P") {
					$('#location_div1').show();
					$('#prof_location1').prop('required', true);
				} else {
					$('#location_div1').hide();
					$('#prof_location1').prop('required', false);
				}

				if ($(this).val() == "I"
						|| $(this).val() == "P") {
					$('#link_div1').show();
				} else {
					$('#link_div1').hide();
					$('#prof_link1').prop('required', false);
				}

				if ($(this).val() == "T") {
					$('#organization_label1').text(
							'Institute/Organization Name');
					$('#profile_label1')
							.text('Training Program');
					$('#description_div1').hide();
					$('#prof_description1').prop('required',
							false);
				} else if ($(this).val() == "P") {
					$('#organization_label1').text(
							'Project Title');
				} else {
					$('#organization_label1').text('Industry');
					$('#profile_label1').text('Role');
					$('#description_div1').show();
					$('#prof_description1').prop('required',
							true);
				}
			} else {
				$('#organization_div1').hide();
				$('#prof_organization1').prop('required', false);
				$('#profile_div1').hide();
				$('#prof_profile1').prop('required', false);
				$('#description_div1').hide();
				$('#prof_description1').prop('required', false);
				$('#location_div1').hide();
				$('#prof_location1').prop('required', false);
				$('#department_div1').hide();
				$('#prof_department1').prop('required', false);
				$('#link_div1').show();
				$('#prof_link1').prop('required', true);
				$('#startdate_div1').hide();
				$('#prof_start_date1').prop('required', false);
				$('#enddate_div1').hide();
				$('#prof_end_date1').prop('required', false);
			}
			//document.getElementById("prof_div").style.display = "block";
			document.getElementById("prof_div1").style.display = "block";
		});

		$("#prof_form1").on("submit",function(event) {
					event.preventDefault();
					if (new Date($("#prof_end_date1").val()) < new Date($(
							"#prof_start_date1").val())) {
						alert('End date should be after Start date.');
						return false;
					}
					var fdata = $(this).serialize();
					console.log(fdata);
					$.ajax({
						type : 'get',
						url : 'saveStudentPast',
						data : fdata,
						datatype : 'json',
						success : function(response) {
							alert("Successfully Saved!");
							if ($("#prof_stud_past_id1").val() != "0")
								removeStudentProfRow($("#prof_stud_past_id1")
										.val(), $("#prof_category1").val())

							addStudentProfRow({
								stud_past_id : response,
								category : $('#prof_category1').val(),
								organization : $('#prof_organization1').val(),
								profile : $('#prof_profile1').val(),
								description : $('#prof_description1').val(),
								location : $('#prof_location1').val(),
								department : $('#prof_department1').val(),
								link : $('#prof_link1').val(),
								start_date : $('#prof_start_date1').val(),
								end_date : $('#prof_end_date1').val()
							});

							$("#empty_professional_div").hide();
							$("#addMoreProfession").modal('hide');
							window.location.reload();
						},
						error : function(error) {
							alert(error);
							alert(error_fetch);
						}
						
					});
				});
		

		$("#prof_form").on("submit",function(event) {
					event.preventDefault();
					if (new Date($("#prof_end_date").val()) < new Date($(
							"#prof_start_date").val())) {
						alert('End date should be after Start date.');
						return false;
					}
					var fdata = $(this).serialize();
					console.log(fdata);
					$.ajax({
						type : 'get',
						url : 'saveStudentPast',
						data : fdata,
						datatype : 'json',
						success : function(response) {
							alert("Successfully Saved!");
							if ($("#prof_stud_past_id").val() != "0")
								removeStudentProfRow($("#prof_stud_past_id")
										.val(), $("#prof_category").val())

							addStudentProfRow({
								stud_past_id : response,
								category : $('#prof_category').val(),
								organization : $('#prof_organization').val(),
								profile : $('#prof_profile').val(),
								description : $('#prof_description').val(),
								location : $('#prof_location').val(),
								department : $('#prof_department').val(),
								link : $('#prof_link').val(),
								start_date : $('#prof_start_date').val(),
								end_date : $('#prof_end_date').val()
							});

							$("#empty_professional_div").hide();
							$("#addMoreProfession").modal('hide');
							window.location.reload();
						},
						error : function(error) {
							alert(error);
							alert(error_fetch);
						}
						
					});
				});

		function removeStudentPast(studentPastId, category) {
			$.ajax({
				type : 'get',
				url : 'removeStudentPast?past_id=' + studentPastId,
				success : function(response) {
					removeStudentProfRow(studentPastId, category);
				},
				error : function(error) {
					alert(error);
				}
			});
		}

		function addStudentProfRow(studentPastProfession) {
			var action_col = "<i class='fa fa-pencil pr-2'"
					+ "style=\"background: #0da0e2;color:white;padding: 3px 7px 3px 7px;margin-right: 4px;border-radius: 3px;\" onclick=\"editprofession('"
					+ studentPastProfession.stud_past_id
					+ "','"
					+ studentPastProfession.category
					+ "','"
					+ studentPastProfession.organization
					+ "','"
					+ studentPastProfession.location
					+ "','"
					+ studentPastProfession.profile
					+ "','"
					+ studentPastProfession.department
					+ "','"
					+ studentPastProfession.start_date
					+ "','"
					+ studentPastProfession.end_date
					+ "','"
					+ studentPastProfession.link
					+ "','"
					+ studentPastProfession.description
					+ "')\"></i><i class='fa fa-times' style=\"background: red;color:white;padding: 3px 7px 3px 7px;border-radius: 3px;\" id='rem"
					+ studentPastProfession.stud_past_id
					+ "'"
					+ "onclick=\"removeStudentPast('"
					+ studentPastProfession.stud_past_id
					+ "','"
					+ studentPastProfession.category + "')\"></i>";
			if (studentPastProfession.category == 'P') {
				project_table.row.add([ studentPastProfession.organization,
										studentPastProfession.profile,
										studentPastProfession.department,
										studentPastProfession.start_date,
										studentPastProfession.end_date,
										studentPastProfession.link,
										studentPastProfession.description,
										action_col ]).draw(false);
				$("#project_div").show();
			} else if (studentPastProfession.category == 'T') {
				training_table.row.add([ studentPastProfession.organization,
								studentPastProfession.profile,
								studentPastProfession.department,
								studentPastProfession.location,
								studentPastProfession.start_date,
								studentPastProfession.end_date, action_col ])
						.draw(false);
				$("#training_div").show();
			} else if (studentPastProfession.category == 'W') {
				worksample_table.row.add(["<a href='http://"+studentPastProfession.link+"' target='_blank'>"
										+ studentPastProfession.link + "</a>",action_col ]).draw(false);
				$("#worksample_div").show();
			} else if (studentPastProfession.category == 'I') {
				internship_table.row.add([ studentPastProfession.organization,
										studentPastProfession.location,
										studentPastProfession.profile,
										studentPastProfession.department,
										studentPastProfession.start_date,
										studentPastProfession.end_date,
										studentPastProfession.link,
										studentPastProfession.description,
										action_col ]).draw(false);
				$("#internship_div").show();
			} else if (studentPastProfession.category == 'J') {
				job_table.row.add([ studentPastProfession.organization,
										studentPastProfession.location,
										studentPastProfession.profile,
										studentPastProfession.department,
										studentPastProfession.start_date,
										studentPastProfession.end_date,
										studentPastProfession.description,
										action_col ]).draw(false);
				$("#job_div").show();
			}
		}

		function removeStudentProfRow(studentPastId, category) {
			if (category == 'P')
				project_table.row($('#rem' + studentPastId).parents('tr'))
						.remove().draw();
			else if (category == 'T')
				training_table.row($('#rem' + studentPastId).parents('tr'))
						.remove().draw();
			else if (category == 'W')
				worksample_table.row($('#rem' + studentPastId).parents('tr'))
						.remove().draw();
			else if (category == 'I')
				internship_table.row($('#rem' + studentPastId).parents('tr'))
						.remove().draw();
			else if (category == 'J')
				job_table.row($('#rem' + studentPastId).parents('tr')).remove()
						.draw();
		}


		function removeStudentEdu(studPastId) {
    console.log("Attempting to remove student education with ID:", studPastId);

    if (confirm('Are you sure you want to delete this record?')) {
        $.ajax({
            url: '/removeStudentPast/' + studPastId,
            type: 'DELETE',
            success: function(response) {
                // Check response from the server
                if(response === 'success') {
                   
                    window.location.reload();
                } else {
                    console.log("Delete failed: ", response);
                    // Handle failure (e.g., show message to user)
                }
            },
            error: function(xhr, status, error) {
                console.log("Error during delete:", xhr.responseText);
                // Handle error (e.g., show message to user)
            }
        });
    }
}



	</script>
</body>
</html>