

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@include file="user_session.jsp" %>
<!DOCTYPE html>
<html>
<head>
<!-- Basic Page Info -->
<meta charset="utf-8">
<title>SkillPilots | Internship's</title>

<!-- Site favicon -->
<link rel="apple-touch-icon" sizes="180x180" href="/dist/dash/vendors/images/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="16x16" href="/dist/dash/vendors/images/favicon.ico">

<!-- Mobile Specific Metas -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap"
	rel="stylesheet">
<!-- CSS -->
<link rel="stylesheet" type="text/css" href="/dist/dash/vendors/styles/core.css">
<link rel="stylesheet" type="text/css" href="/dist/dash/vendors/styles/icon-font.min.css">
<link rel="stylesheet" type="text/css" href="/dist/dash/src/plugins/datatables/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet" type="text/css" href="/dist/dash/src/plugins/datatables/css/responsive.bootstrap4.min.css">
<link rel="stylesheet" type="text/css" href="/dist/dash/vendors/styles/style.css">

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
				src="/dist/dash/vendors/images/deskapp-logo.svg'/>" alt="" class="dark-logo"> 
				<img src="/dist/dash/vendors/images/skillpilot_white.svg'/>" alt="" class="light-logo">
			</a>
			<div class="close-sidebar" data-toggle="left-sidebar-close">
				<i class="ion-close-round"></i>
			</div>
		</div>
		<c:if test="${user.role eq '1'}">
		<div class="menu-block customscroll">
			<div class="sidebar-menu">
				<ul id="accordion-menu">
					<li><a href="company_dashboard" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-house-1"></span><span class="mtext">Dashboard</span>
					</a></li>
					<li><a href="company_internships" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-certificate"></span><span class="mtext">Internships</span>
					</a></li>
					<li><a href="company_posts" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-computer"></span><span class="mtext">Manage Advertisements</span>
					</a></li>
					<li><a href="external_internship_request_company" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-computer-1"></span><span class="mtext">External Request</span>
					</a></li>
					<li><a href="company_internal_request" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-computer-1"></span><span class="mtext">Internal Request</span>
					</a></li>
					<li><a href="college_tie_up" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-repeat-1"></span><span class="mtext">Institute Tie-Ups</span>
					</a></li>
					<li><a href="add_company_member" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-user-11"></span><span class="mtext">Manage Teams</span>
					</a></li>
					<li><a href="company_online_test" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-personal-computer"></span><span class="mtext">Manage Test</span>
					</a></li>
					<li><a href="companyTransactions" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-money-2"></span><span class="mtext">Balances</span>
					</a></li>
					<li><a href="company_report" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-file3"></span><span class="mtext">Internship Reports</span>
					</a></li>
					<li><a href="certificate" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-certificate-1"></span><span class="mtext">Certificates</span>
					</a></li>
				</ul>
			</div>
		</div></c:if>
		<c:if test="${user_data.role eq '2'}">
			<div class="menu-block customscroll">
			<div class="sidebar-menu">
				<ul id="accordion-menu">
					<li><a href="company_dashboard" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-house-1"></span><span class="mtext">Dashboard</span>
					</a></li>
					<li><a href="company_internships" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-certificate"></span><span class="mtext">Internships</span>
					</a></li>
					<li><a href="company_internal_request" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-computer-1"></span><span class="mtext">Internal Request</span>
					</a></li>
					<li><a href="college_tie_up" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-repeat-1"></span><span class="mtext">Institute Tie-Ups</span>
					</a></li>
					<li><a href="add_company_member" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-user-11"></span><span class="mtext">Manage Teams</span>
					</a></li> 
					<li><a href="live_chat" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-chat3"></span><span class="mtext">Live
								Chat</span>
					</a></li>
				</ul>
			</div>
		</div>
		</c:if>
		<c:if test="${user_data.role eq '3'}">
			<div class="menu-block customscroll">
			<div class="sidebar-menu">
				<ul id="accordion-menu">
					<li><a href="company_dashboard" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-house-1"></span><span class="mtext">Dashboard</span>
					</a></li>
					<li><a href="company_internships" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-certificate"></span><span class="mtext">Internships</span>
					</a></li>
					<li><a href="company_internal_request" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-computer-1"></span><span class="mtext">Internal Request</span>
					</a></li>
					<!-- <li><a href="college_tie_up" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-repeat-1"></span><span class="mtext">Institute Tie-Ups</span>
					</a></li> -->
					<!-- <li><a href="add_company_member" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-user-11"></span><span class="mtext">Manage Teams</span>
					</a></li> -->
					<li><a href="live_chat" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-chat3"></span><span class="mtext">Live
								Chat</span>
					</a></li>
				</ul>
			</div>
		</div>
		</c:if>
	</div>
	<div class="mobile-menu-overlay"></div>

	<div class="main-container">
		<div class="xs-pd-20-10 pd-ltr-20">

			<div class="title pb-20 text-center">
				<h5 class="h4 mb-0"><span style="background: #13aef5;color: white;border-radius: 4px;padding: 4px 16px 4px 16px;">Internships</span></h5>
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
								<c:if test="${not empty internship}">
									<table
										class="data-table table hover table-responsive">
										<thead class="thead-light">
											<tr>
												<th class="table-plus datatable-nosort">Student Name</th>
												<th>Institute Name</th>
												<th>Department</th>
												<c:if test="${role eq ProjectConstants.hr_Role}">
													<th>Assigned Team</th>
												</c:if>
												<th>Skill</th>
												<th>Duration</th>
												<th>Start Date</th>
												<c:if
													test="${role eq ProjectConstants.manager_Role || role eq ProjectConstants.internship_lead_Role}">
													<th nowrap="nowrap">Action</th>
												</c:if>
											</tr>
										</thead>
${internship}
										<tbody id="tablist">
											<c:forEach items="${pendingInternships}" var="internship">
												<tr>
													<td><span class="pointer actionSpan"
														data-toggle="modal" data-target="#studentDetailsModal"
														onclick="dispStudentData('${internship.student_id}');">${internship.student_name}</span></td>
													<td><c:if test="${not empty internship.college_name}">
															<span>${internship.college_name}</span>
														</c:if> <c:if test="${empty internship.college_name}">
															<span>External Intern</span>
														</c:if></td>
													<td><c:if test="${not empty internship.dept_name}">
															<span>${internship.dept_name}</span>
														</c:if> <c:if test="${empty internship.dept_name}">-</c:if></td>
													<c:if test="${role eq ProjectConstants.hr_Role}">
														<td><span>${internship.assigned_team}</span></td>
													</c:if>
													<td><span>${internship.technology}</span></td>
													<td><span>${internship.duration}</span></td>
													<td><span><fmt:formatDate
																pattern="${ProjectConstants.date_format}"
																value="${internship.date_started}" /></span></td>
													<c:if
														test="${role eq ProjectConstants.manager_Role || role eq ProjectConstants.internship_lead_Role}">
														<td style="white-space: nowrap;"><span
															title="Start Internship" class="pointer greenHov actIcon"
															onclick="editInternship('${internship.internship_id}','${ProjectConstants.internships_status_ongoing}','pending');"><i
																class="fa fa-play"></i></span> &nbsp;&nbsp;|&nbsp;&nbsp;<%-- <span
														title="Cancel Internship" class="pointer redHov actIcon"
														onclick="editInternship('${internship.internship_id}','${ProjectConstants.internships_status_cancelled}','pending');"><i
															class="fa fa-ban" aria-hidden="true"></i></span> --%> <span
															title="Cancel Internship" class="pointer redHov actIcon"
															onclick="cancelInternshipModal('${internship.internship_id}','pending');"><i
																class="fa fa-ban" aria-hidden="true"></i></span></td>
													</c:if>
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
										class="data-table table hover nowrap table-responsive">
										<thead class="thead-light">
											<tr>
												<th class="table-plus datatable-nosort">Student Name</th>
												<th>Institute Name</th>
												<th>Department</th>
												<c:if test="${role eq ProjectConstants.hr_Role}">
													<th>Assigned Team</th>
												</c:if>
												<th>Skill</th>
												<th>Start Date</th>
												<th>Duration</th>
												<c:if
													test="${role eq ProjectConstants.manager_Role || role eq ProjectConstants.internship_lead_Role}">
													<th nowrap="nowrap">Action</th>
												</c:if>
											</tr>
										</thead>

										<tbody id="tablist">
											<c:forEach items="${ongoingInternships}" var="internship">
												<tr>
													<td><span class="pointer actionSpan"
														data-toggle="modal" data-target="#studentDetailsModal"
														onclick="dispStudentData('${internship.student_id}');">${internship.student_name}</span></td>
													<td><c:if test="${not empty internship.college_name}">
															<span>${internship.college_name}</span>
														</c:if> <c:if test="${empty internship.college_name}">
															<span>External Intern</span>
														</c:if></td>
													<td><c:if test="${not empty internship.dept_name}">
															<span>${internship.dept_name}</span>
														</c:if> <c:if test="${empty internship.college_name}">-</c:if></td>
													<c:if test="${role eq ProjectConstants.hr_Role}">
														<td><span>${internship.assigned_team}</span></td>
													</c:if>
													<td><span>${internship.technology}</span></td>
													<td><span><fmt:formatDate
																pattern="${ProjectConstants.date_format}"
																value="${internship.date_started}" /></span></td>
													<td><span>${internship.duration}</span></td>
													<c:if
														test="${role eq ProjectConstants.manager_Role || role eq ProjectConstants.internship_lead_Role}">
														<td style="white-space: nowrap;"><span
															title="Feedback" class="pointer greenHov actIcon"
															onclick="showFeedback('${internship.duration}','${internship.internship_id}');"><i
																class="fa fa-commenting-o"></i></span>
															&nbsp;&nbsp;|&nbsp;&nbsp;<%-- <span
														title="Cancel Internship" class="pointer redHov actIcon"
														onclick="editInternship('${internship.internship_id}','${ProjectConstants.internships_status_cancelled}','ongoing');"><i
															class="fa fa-ban" aria-hidden="true"></i></span> --%> <span
															title="Cancel Internship" class="pointer redHov actIcon"
															onclick="cancelInternshipModal('${internship.internship_id}','ongoing');"><i
																class="fa fa-ban" aria-hidden="true"></i></span></td>
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
									<table
										class="data-table table hover nowrap table-responsive">
										<thead class="thead-light">
											<tr>
												<th class="table-plus datatable-nosort">Student Name</th>
												<th>Institute Name</th>
												<th>Department</th>
												<c:if test="${role eq ProjectConstants.hr_Role}">
													<th>Assigned Team</th>
												</c:if>
												<th>Skill</th>
												<th>Start Date</th>
												<th>End Date</th>
												<th>Duration</th>
												<th nowrap="nowrap">Action</th>
											</tr>
										</thead>

										<tbody>
											<c:forEach items="${completedInternships}" var="internship">
												<tr>
													<td><span class="pointer actionSpan"
														data-toggle="modal" data-target="#studentDetailsModal"
														onclick="dispStudentData('${internship.student_id}');">${internship.student_name}</span></td>
													<td><c:if test="${not empty internship.college_name}">
															<span>${internship.college_name}</span>
														</c:if> <c:if test="${empty internship.college_name}">
															<span>External Intern</span>
														</c:if></td>
													<td><c:if test="${not empty internship.dept_name}">
															<span>${internship.dept_name}</span>
														</c:if> <c:if test="${empty internship.college_name}">-</c:if></td>
													<c:if test="${role eq ProjectConstants.hr_Role}">
														<td><span>${internship.assigned_team}</span></td>
													</c:if>
													<td><span>${internship.technology}</span></td>
													<td><span><fmt:formatDate
																pattern="${ProjectConstants.date_format}"
																value="${internship.date_started}" /></span></td>
													<td><span><fmt:formatDate
																pattern="${ProjectConstants.date_format}"
																value="${internship.date_completed}" /></span></td>
													<td><span>${internship.duration}</span></td>
													<td style="white-space: nowrap;"><span
														title="View Feedback" class="pointer greenHov actIcon"
														onclick="viewFeedback('${internship.internship_id}');"><i
															class="fa fa-eye"></i></span> &nbsp;&nbsp; | &nbsp;&nbsp;<span
														title="View feedback from college."
														class="pointer greenHov actIcon"
														onclick="showFeed('${internship.internship_id}','${internship.college_id}','CP');"><i
															class="fa fa-eye"></i></span>&nbsp;&nbsp; | &nbsp;&nbsp;<span
														title="View Feedback From Student"
														class="pointer greenHov actIcon"
														onclick="viewStudsFeedback('${internship.internship_id}','${internship.student_id}');"><i
															class="fa fa-eye"></i></span></td>
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
									<table
										class="data-table table hover nowrap table-responsive">
										<thead class="thead-light">
											<tr>
												<th></th>
												<th class="table-plus datatable-nosort">Student Name</th>
												<th>Institute Name</th>
												<th>Department</th>
												<c:if test="${role eq ProjectConstants.hr_Role}">
													<th>Assigned Team</th>
												</c:if>
												<th>Skill</th>
												<th>Duration</th>
												<th>Start Date</th>
												<th>Cancellation Date</th>
												<th>Cancellation Reason</th>
											</tr>
										</thead>

										<tbody id="tablist">
											<c:forEach items="${canceledInternships}" var="internship">
												<tr>
													<td></td>
													<td><span class="pointer actionSpan"
														data-toggle="modal" data-target="#studentDetailsModal"
														onclick="dispStudentData('${internship.student_id}');">${internship.student_name}</span></td>
													<td><c:if test="${not empty internship.college_name}">
															<span>${internship.college_name}</span>
														</c:if> <c:if test="${empty internship.college_name}">
															<span>External Intern</span>
														</c:if></td>
													<td><c:if test="${not empty internship.dept_name}">
															<span>${internship.dept_name}</span>
														</c:if> <c:if test="${empty internship.dept_name}">-</c:if></td>
													<c:if test="${role eq ProjectConstants.hr_Role}">
														<td><span>${internship.assigned_team}</span></td>
													</c:if>
													<td><span>${internship.technology}</span></td>
													<td><span>${internship.duration}</span></td>
													<td><span><fmt:formatDate
																pattern="${ProjectConstants.date_format}"
																value="${internship.date_started}" /></span></td>
													<td><span><fmt:formatDate
																pattern="${ProjectConstants.date_format}"
																value="${internship.updation_date}" /></span></td>

													<td><span>${internship.reason}</span></td>
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
			<%@include file="modal_common.jsp"%>	
			<%@include file="modalFeedback.jsp"%>
			<%@include file="footer.jsp"%>
		</div>
	</div>
	<!-- js -->	
	<script src="/dist/js/jquery.min.js"></script>
	<script src="/dist/js/jquery-confirm.min.js"></script>
	<script src="/dist/js/myjs/alert.js"></script>
	<script src="/dist/js/myjs/common.js"></script>
	<script src="/dist/js/myjs/projectConstants.js"></script>
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