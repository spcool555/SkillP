
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- Basic Page Info -->
<meta charset="utf-8">
<title>SkillPilots | Internships</title>
<link rel="apple-touch-icon" sizes="180x180" href="/dist/dash/vendors/images/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="16x16" href="/dist/dash/vendors/images/favicon.ico">
<!-- Site favicon -->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="/dist/dash/vendors/styles/core.css">
<link rel="stylesheet" type="text/css" href="/dist/dash/vendors/styles/icon-font.min.css">
<link rel="stylesheet" type="text/css" href="/dist/dash/src/plugins/datatables/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet" type="text/css" href="/dist/dash/src/plugins/datatables/css/responsive.bootstrap4.min.css">
<link rel="stylesheet" type="text/css" href="/dist/dash/vendors/styles/style.css">
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
.sidebar-menu .dropdown-toggle {
		padding: 15px 12px 15px 54px!important;
		font-size: 15px!important;
	}
.user-notification .dropdown-toggle .badge {
    position: absolute;
    right: 5px;
    top: 7px;
   /*  background: #0f2c7eeb; */
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
				src="<c:url value='/dist/dash/vendors/images/deskapp-logo.svg'/>" alt="" class="dark-logo"> 
				<img src="<c:url value='/dist/dash/vendors/images/skillpilot_white.svg'/>" alt="" class="light-logo">
			</a>
			<div class="close-sidebar" data-toggle="left-sidebar-close">
				<i class="ion-close-round"></i>
			</div>
		</div>
		<c:if test="${user_data.role eq '1'}">
		<c:set var = "theString" value = "${user_data.user_id }
		<c:if test = "${fn:contains(theString, 'CL')}">
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
									<span class="micon dw dw-time-management"></span><span class="mtext">Manage
										Departments</span>
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
									<span class="micon dw dw-certificate-1"></span><span class="mtext">Certificate</span>
							</a></li>
						</ul>
					</div>
				</div></c:if></c:if>
		<c:if test="${user_data.role eq '1'}">
			<c:set var="theString" value="${user_data.user_id }" />
			<c:if test="${fn:contains(theString, 'US')}">
				
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
									class="micon dw dw-computer-1""></span><span class="mtext">External
										Requests</span>
							</a></li>
							<li><a href="college_internal_req"
								class="dropdown-toggle no-arrow"> <span
									class="micon dw dw-computer-1""></span><span class="mtext">Internal
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
							<!-- <li><a href="college_dept" class="dropdown-toggle no-arrow">
									<span class="micon dw dw-time-management"></span><span class="mtext">Manage
										Departments</span>
							</a></li> -->
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
									<span class="micon dw dw-certificate-1"></span><span class="mtext">View
										Certificate</span>
							</a></li>
							<li><a href="live_chat" class="dropdown-toggle no-arrow">
									<span class="micon dw dw-chat-2"></span><span class="mtext">Live
										Chat</span>
							</a></li>

						</ul>
					</div>
				</div>
			
			</c:if>
		</c:if>

		<c:if test="${user_data.role eq '1'}">
			<c:set var="theString" value="${user_data.user_id }" />
			<c:if test="${fn:contains(theString, 'US')}">
				
			</c:if>
		</c:if>

		<c:if test="${user_data.role eq '2'}">
			<div class="menu-block customscroll">
			<div class="sidebar-menu">
				<ul id="accordion-menu">
					<li><a href="college_dashboard" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-house-1"></span><span class="mtext">Dashboard</span>
					</a></li>
					<li><a href="collegeViewInternships" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-certificate"></span><span class="mtext">Internships</span>
					</a></li>
					<li><a href="college_internal_req" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-computer-1"></span><span class="mtext">Internal Requests</span>
					</a></li>
					<li><a href="student_list" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-user3"></span><span class="mtext">Enroll Students</span>
					</a></li>
					<li><a href="getAppliedStudentsOfCollege" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-computer-1"></span><span class="mtext">Students Request</span>
					</a></li>
					<li><a href="college_report" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-edit-2"></span><span class="mtext">Internship Report</span>
					</a></li>
					<li><a href="certificate" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-certificate-1"></span><span class="mtext">View Certificate</span>
					</a></li>
					<li><a href="live_chat" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-chat3"></span><span class="mtext">Live Chat</span>
					</a></li>

				</ul>
			</div>
		</div>
		</c:if>
		<c:if test="${user_data.role eq '3'}">
		<div class="menu-block customscroll">
			<div class="sidebar-menu">
				<ul id="accordion-menu">
					<li><a href="college_dashboard" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-house-1"></span><span class="mtext">Dashboard</span>
					</a></li>
					<li><a href="collegeViewInternships" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-certificate"></span><span class="mtext">Internships</span>
					</a></li>
					<li><a href="college_internal_req" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-computer-1"></span><span class="mtext">Internal Requests</span>
					</a></li>
					<li><a href="student_list" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-user3"></span><span class="mtext">Enroll Students</span>
					</a></li>
					<li><a href="getAppliedStudentsOfCollege" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-computer-1"></span><span class="mtext">Students Request</span>
					</a></li>
					<li><a href="college_report" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-edit-2"></span><span class="mtext">Internship Report</span>
					</a></li>
					<li><a href="certificate" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-certificate-1"></span><span class="mtext">View Certificate</span>
					</a></li>
					<li><a href="live_chat" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-chat3"></span><span class="mtext">Live Chat</span>
					</a></li>

				</ul>
			</div>
		</div>
		</c:if>
	</div>
	<div class="mobile-menu-overlay"></div>

	<div class="main-container">
		<div class="xs-pd-20-10 pd-ltr-20">
			<div class="title pb-20">
				<h5 class="h4 mb-0" style="background: #0f2c7eeb;color: white;border-radius: 4px;text-align:center; padding: 4px 16px 4px 16px;">Internship's</h5>
			</div>
			<div class="pd-20 card-box">
				<div class="tab">
					<ul class="nav nav-tabs customtab" role="tablist">
						<li class="nav-item"><a class="nav-link active"
							data-toggle="tab" href="#pendingTab" role="tab"
							aria-selected="true">Pending Internships</a></li>
						<li class="nav-item"><a class="nav-link" data-toggle="tab"
							href="#ongoingTab" role="tab" aria-selected="false">Ongoing
								Internships</a></li>
						<li class="nav-item"><a class="nav-link" data-toggle="tab"
							href="#completedTab" role="tab" aria-selected="false">Completed
								Internships</a></li>
						<li class="nav-item"><a class="nav-link" data-toggle="tab"
							href="#canceledTab" role="tab" aria-selected="false">Canceled
								Internships</a></li>
					</ul>
					<div class="tab-content">
						<div class="tab-pane fade show active" id="pendingTab"
							role="tabpanel">
							<div class="pd-20">
								<c:if test="${not empty pendingInternships}">
									<table class="data-table table hover multiple-select-row">
										<tr>
											<th>Student Name</th>
											<th>Company Name</th>
											<th>Skill</th>
											<th>Start Date</th>
											<th>Duration</th>
										</tr>
										<tbody id="tablist">
											<c:forEach items="${pendingInternships}" var="internship">
												<tr>
													<%-- <td><span>${internship[12]}</span></td> --%>
													<td><span class="pointer actionSpan"
														data-toggle="modal" data-target="#studentDetailsModal"
														onclick="dispStudentData('${internship[0]}');">${internship[12]}</span></td>
													<td><span>${internship[13]}</span></td>
													<td><span>${internship[7]}</span></td>
													<td><span><fmt:formatDate
																pattern="${ProjectConstants.date_format}"
																value="${internship[8]}" /></span></td>
													<td><span>${internship[5]}</span></td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</c:if>
								<c:if test="${empty pendingInternships}">
									<label>No Pending Internships</label>
								</c:if>
							</div>
						</div>
						<div class="tab-pane fade" id="ongoingTab" role="tabpanel">
							<div class="pd-20">
								<c:if test="${not empty ongoingInternships}">
									<table
										class="data-table table hover multiple-select-row nowrap">
										<tr>
											<th>Student Name</th>
											<th>Company Name</th>
											<th>Skill</th>
											<th>Start Date</th>
											<th>Duration</th>
											<c:if test="${role eq 2 || role eq 3}">
												<th>Feedback</th>
											</c:if>
										</tr>
										<tbody id="tablist">
											<c:forEach items="${ongoingInternships}" var="internship">
												<tr>
													<td><span class="pointer actionSpan"
														data-toggle="modal" data-target="#studentDetailsModal"
														onclick="dispStudentData('${internship[0]}');">${internship[12]}</span></td>
													<%-- <td><span>${internship[12]}</span></td> --%>
													<td><span>${internship[13]}</span></td>
													<td><span>${internship[7]}</span></td>
													<td><span><fmt:formatDate
																pattern="${ProjectConstants.date_format}"
																value="${internship[8]}" /></span></td>
													<td><span>${internship[5]}</span></td>
													<c:if test="${role eq 2 || role==3}">
														<td><span title="Feedback"
															class="pointer greenHov actIcon"
															onclick="viewFeedback('${internship[6]}');"> <i
																class="fa fa-commenting-o"></i></span></td>
													</c:if>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</c:if>
								<c:if test="${empty ongoingInternships}">
									<label>No Ongoing Internships</label>
								</c:if>
							</div>
						</div>
						<div class="tab-pane fade" id="completedTab" role="tabpanel">
							<div class="pd-20">
								<c:if test="${not empty completedInternships}">
									<table class="data-table table hover multiple-select-row">
										<tr>
											<th>Student Name</th>
											<th>Company Name</th>
											<th>Skill</th>
											<th>Start Date</th>
											<th>Date Of Completion</th>
											<th>Duration</th>
											<th>Action</th>
										</tr>
										<tbody id="tablist">
											<c:forEach items="${completedInternships}" var="internship">
												<tr>
													<td><span class="pointer actionSpan"
														data-toggle="modal" data-target="#studentDetailsModal"
														onclick="dispStudentData('${internship[0]}');">${internship[12]}</span></td>
													<%-- <td><span>${internship[12]}</span></td> --%>
													<td><span>${internship[13]}</span></td>
													<td><span>${internship[7]}</span></td>
													<td><span><fmt:formatDate
																pattern="${ProjectConstants.date_format}"
																value="${internship[8]}" /></span></td>
													<td><span><fmt:formatDate
																pattern="${ProjectConstants.date_format}"
																value="${internship[9]}" /></span></td>
													<td><span>${internship[5]}</span></td>
													<td>
														<%-- <span title="Give feedback to company." class="pointer greenHov actIcon"
														onclick="showFeed('${internship[6]}','${internship[1]}','CL');"><i
															class="fa fa-commenting-o"></i></span>&nbsp;&nbsp; | &nbsp;&nbsp; --%>
														<span title="View Feedback From Company"
														class="pointer greenHov actIcon"
														onclick="viewFeedback('${internship[6]}');"><i
															class="fa fa-eye"></i></span>&nbsp;&nbsp; | &nbsp;&nbsp;<span
														title="View Feedback From Student"
														class="pointer greenHov actIcon"
														onclick="viewStudsFeedback('${internship[6]}','${internship[0]}');"><i
															class="fa fa-eye"></i></span>
													</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</c:if>
								<c:if test="${empty completedInternships}">
									<label>No Completed Internships</label>
								</c:if>
							</div>
						</div>
						<div class="tab-pane fade" id="canceledTab" role="tabpanel">
							<div class="pd-20">
								<c:if test="${not empty canceledInternships}">
									<table class="data-table table hover multiple-select-row">
										<tr>
											<th>Student Name</th>
											<th>Company Name</th>
											<th>Skill</th>
											<th>Duration</th>
											<th>Start Date</th>
											<th>Cancellation Date</th>
											<th>Cancellation Reason</th>
										</tr>
										<tbody id="tablist">
											<c:forEach items="${canceledInternships}" var="internship">
												<tr>
													<td><span class="pointer actionSpan"
														data-toggle="modal" data-target="#studentDetailsModal"
														onclick="dispStudentData('${internship[0]}');">${internship[12]}</span></td>
													<%-- <td><span>${internship[12]}</span></td> --%>
													<td><span>${internship[13]}</span></td>
													<td><span>${internship[7]}</span></td>
													<td><span>${internship[5]}</span></td>
													<td><span><fmt:formatDate
																pattern="${ProjectConstants.date_format}"
																value="${internship[8]}" /></span></td>
													<td><span><fmt:formatDate
																pattern="${ProjectConstants.date_format}"
																value="${internship[10]}" /></span></td>
													<td><span>${internship[14]}</span></td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</c:if>
								<c:if test="${empty canceledInternships}">
									<label>No Canceled Internships</label>
								</c:if>
							</div>
						</div>
					</div>
				</div>
			</div>
			<br>
			<%@include file="modalFeedback.jsp"%>
			<!--End 2st model-->
			<%@include file="modalStudentDetails.jsp"%>
			<div class="footer-wrap pd-20 mb-20 card-box" style="position: fixed; bottom: 0%; width: 76%;">
				<i class="fa fa-copyright" style="font-size: 17px; color: red"></i>
				<script>
					document.write(new Date().getFullYear())
				</script>
				All Rights Reserved SkillPilots | Designed & Developed By <a
					href="https://www.cluematrix.com/" target="_blank"
					style="color: #2800b4;">Cluematrix</a> Technologies Pvt.Ltd.
			</div>
		</div>
	</div>
	<!-- js -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.0/jquery-confirm.min.js"></script>
	<script src="/dist/js/myjs/common.js"></script>
	<script src="/dist/js/myjs/projectConstants.js"></script>
	<script src="/dist/js/myjs/alert.js"></script>
	<script src="/dist/js/myjs/form_elements.js"></script>
	<script src="/dist/js/myjs/company_feedback.js"></script>
	<script src="/dist/js/myjs/students_feedback_script.js"></script>
	<script	src="/dist/js/myjs/userDetails.js"></script>
	<script src="/dist/dash/vendors/scripts/core.js"></script>
	<script src="/dist/dash/vendors/scripts/script.min.js"></script>
	<script src="/dist/dash/vendors/scripts/process.js"></script>
	<script src="/dist/dash/vendors/scripts/layout-settings.js"></script>
	<script src="/dist/dash/src/plugins/datatables/js/jquery.dataTables.min.js"></script>
	<script src="/dist/dash/src/plugins/datatables/js/dataTables.bootstrap4.min.js"></script>
	<script src="/dist/dash/src/plugins/datatables/js/dataTables.responsive.min.js"></script>
	<script src="/dist/dash/src/plugins/datatables/js/responsive.bootstrap4.min.js"></script>
	<script src="/dist/dash/src/plugins/datatables/js/buttons.print.min.js"></script>
	<script src="/dist/dash/src/plugins/datatables/js/buttons.html5.min.js"></script>
	<script src="/dist/dash/src/plugins/datatables/js/buttons.flash.min.js"></script>
	<script src="/dist/dash/src/plugins/datatables/js/pdfmake.min.js"></script>
	<script src="/dist/dash/src/plugins/datatables/js/vfs_fonts.js"></script>
	<script src="/dist/dash/src/plugins/switchery/switchery.min.js"></script>
	<script src="/dist/dash/src/plugins/bootstrap-tagsinput/bootstrap-tagsinput.js"></script>
	<script src="/dist/dash/vendors/scripts/datatable-setting.js"></script>
</body>
</html>