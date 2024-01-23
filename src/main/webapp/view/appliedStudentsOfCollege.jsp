
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<title>SkillPilots | Internship Requests by Students</title>
	<link rel="apple-touch-icon" sizes="180x180" href='/dist/dash/vendors/images/apple-touch-icon.png'>
	<link rel="icon" type="image/png" sizes="16x16" href='/dist/dash/vendors/images/favicon.ico'>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href='/dist/dash/vendors/styles/core.css'>
	<link rel="stylesheet" type="text/css" href='/dist/dash/vendors/styles/icon-font.min.css'>
	<link rel="stylesheet" type="text/css" href='/dist/dash/src/plugins/datatables/css/dataTables.bootstrap4.min.css'>
	<link rel="stylesheet" type="text/css" href='/dist/dash/src/plugins/datatables/css/responsive.bootstrap4.min.css'>
	<link rel="stylesheet" type="text/css" href='/dist/dash/vendors/styles/style.css'>


	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-119386393-1"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag(){dataLayer.push(arguments);}
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
</style>
</head>
<body>
	<div class="pre-loader">
		<div class="pre-loader-box">
			<div class="loader-logo">
				<img src='/dist/dash/vendors/images/deskapp-logos.svg' alt="">
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
									<span class="micon dw dw-chat3"></span><span class="mtext">Live
										Chat</span>
							</a></li>

						</ul>
					</div>
				</div>
			
			</c:if>
		</c:if>
		<c:if test="${user_data.role eq '1'}">
			<c:set var="theString" value="${user_data.user_id }" />
			<c:if test="${fn:contains(theString, 'CL')}">
				
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
				</div>
			</c:if>
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
		<div class="pd-ltr-20 xs-pd-20-10">
		<div class="title pb-20 text-center">
				<h5 class="h4 mb-0 text-center" style="background: #0f2c7eeb;color: white;border-radius: 4px;padding: 4px 16px 4px 16px;">Internship's</h5>
			</div>
			<div class="min-height-200px">
				<div class="pd-20 bg-white border-radius-4 box-shadow mb-30">
					<table class="data-table table hover">
								<thead>
									<tr>
										<th>Student Name</th>
										<th>Company Name</th>
										<th>Date Applied</th>
										<th>Skill</th>
										<th>Duration</th>
										<th>Status</th>
										<th>Request Message</th>
										<th>Request Note</th>
									</tr>
								</thead>
								<tbody id="tablist">
									<c:forEach var="stApplied" items="${studentsAppliedToCompanies}">
										<tr>
											<td>
												<span class="pointer actionSpan" data-toggle="modal" data-target="#studentDetailsModal"
													onclick="dispStudentData('${stApplied[0]}');">${stApplied[10]}</span>
											</td>
											<td>${stApplied[11]}</td>
											<td><fmt:formatDate pattern="${ProjectConstants.date_format}" value="${stApplied[8]}"/></td>
											<td>${stApplied[4]}</td>
											<td>${stApplied[5]}</td>
											<td style="white-space: nowrap;">
												<c:choose>
													<c:when test="${(role==ProjectConstants.hod_Role && stApplied[9] eq ProjectConstants.student_req_approval_status_hod_approval)||(role==ProjectConstants.iii_Role && stApplied[9] eq ProjectConstants.student_req_approval_status_iii_approval)}">
														
														<c:if test="${empty stApplied[12]}">
														<span class="label label-success pointer" style="background: #0f2c7eebf2;margin-right: 4px;color: white;padding: 4px 4px 4px 4px;border-radius: 4px;" onclick="collegeReqMsg('${stApplied[7]}','none');">
															<i class="fa fa-edit" aria-hidden="true"></i> Add Note
														</span>
														</c:if>
														
														<c:if test="${not empty stApplied[12]}">
														<span class="label label-success pointer" onclick="collegeReqMsg('${stApplied[7]}','${stApplied[12]}');">
															<i class="fa fa-edit" aria-hidden="true"></i> Edit Note
														</span>
														</c:if>
														
														<span class="label label-success pointer" style="background: #25ab23f2;margin-right: 4px;color: white;padding: 4px 4px 4px 4px;border-radius: 4px;" onclick="approve('${stApplied[7]}');">
															<i class="fa fa-check" aria-hidden="true"></i> Approve
														</span>
														<span id="reject_btn" class="label label-danger pointer" style="background: red;color: white;padding: 4px 4px 4px 4px;border-radius: 4px;" data-toggle="modal" data-target="#student_req_reject"
																onclick="setRejection_id('${stApplied[7]}');">
																<i class="fa fa-times" aria-hidden="true"></i> Reject
														</span>		
													</c:when>
													
													<c:when test="${(role==ProjectConstants.iii_Role || role==ProjectConstants.dept_incharge_Role) && stApplied[9] eq ProjectConstants.student_req_approval_status_hod_approval}">
														<span>HOD approval pending</span>
													</c:when>
													
													<c:when test="${(role==ProjectConstants.hod_Role || role==ProjectConstants.dept_incharge_Role) && stApplied[9] eq ProjectConstants.student_req_approval_status_iii_approval}">
														<span style="background: #89daffc2;padding: 4px 4px 4px 4px;border-radius: 3px;">T&P/III head approval pending</span>
													</c:when>
													
													<c:when test="${stApplied[9] eq ProjectConstants.student_req_approval_status_team_assigned}">
														<span style="background: #89daffc2;padding: 4px 4px 4px 4px;border-radius: 3px;">Assigned</span>
													</c:when>
													
													<c:when test="${stApplied[9] eq ProjectConstants.student_req_approval_status_pending}">
														<span style="background: #89daffc2;padding: 4px 4px 4px 4px;border-radius: 3px;">Company approval pending</span>
													</c:when>
													
													<c:when test="${stApplied[9] eq ProjectConstants.student_req_approval_status_approved}">
														<span style="background: #89daffc2;padding: 4px 4px 4px 4px;border-radius: 3px;">Approved</span>
													</c:when>
													
													<c:when test="${stApplied[9] eq ProjectConstants.student_req_approval_status_test_assigned}">
														<span style="background: #89daffc2;padding: 4px 4px 4px 4px;border-radius: 3px;">Test Assigned</span>
													</c:when>
													
													<c:when test="${stApplied[9] eq ProjectConstants.student_req_approval_status_result_declared}">
														<span style="background: #89daffc2;padding: 4px 4px 4px 4px;border-radius: 3px;">Test Submitted.Waiting for Industry to evaluate results.</span>
													</c:when>
													
													<c:when test="${stApplied[9] eq ProjectConstants.request_cancelled_by_system}">
														<span title="Internship started in some other company.">Cancelled</span>
													</c:when>
													
													<c:when test="${stApplied[9] eq ProjectConstants.student_req_approval_status_rejected}">
														<span class="tooltip">Rejected<span class="tooltiptext" style="background: red;padding: 4px 4px 4px 4px;border-radius: 3px;">${stApplied[3]}</span></span>
													</c:when>
												</c:choose>
											</td>
											<td>${stApplied[2]}</td>
											<c:if test="${not empty stApplied[12]}"><td>${stApplied[12]}</td></c:if>
											<c:if test="${empty stApplied[12]}"><td>None</td></c:if>
										</tr>
									</c:forEach>
								</tbody>
							</table>
				</div>
				<div class="modal fade" id="balanceDataModal" role="dialog">
				<div class="modal-dialog" style="width: 750px;">
					Modal content
					<div class="modal-content">
						<div class="panel-heading">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="modal-title" id="table_heading"></h4>
						</div>
						<div class="modal-body">
							<input type="hidden" id="renew_coll_dept_link_id">
							<div id="balance_table_div">
								<table class="table table-striped">
									<tr>
										<th></th>
										<th>No of Internship</th>
										<th>Expiration Date</th>
									</tr>
									<tbody id="balance_departments"></tbody>
								</table>
								<button type="button" id="renew_dept_button" class="btn btn-success" style="width: 100%;">RENEW</button>
							</div>

							<div id="package_table_div">
								<table class="table table-striped">
									<tr>
										<th></th>
										<th>Package Name</th>
										<th>No of Internships</th>
										<th>Validity</th>
										<th>Amount</th>
									</tr>
									<tbody id="package_avail"></tbody>
								</table>
								<div class="modal-footer">
									<button type="button" id="btn-payAndRecharge" class="btn btn-success">PAY AND RE-CHARGE</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			</div>
			<%-- <div id="editReqMsgModal" class="modal fade" role="dialog">
			<div class="modal-dialog">
				<!-- Modal content-->
				<div class="modal-content">
					<div class="panel-heading">
						<button type="button" class="close" data-dismiss="modal">×</button>
						<h4 class="modal-title">Edit Request Message</h4>
					</div>
					<c:url value="/editInternalRequestMessage" var="editFormAction"></c:url>
					<form action="${editFormAction}" method="post">
						<div class="modal-body">
							<input type="text" class="form-control" id="txtRequestMessage" name="requestMessage" maxlength="450">
							<input type="hidden" id="txtInternalReqId" name="internalReqId">
						</div>
						<div class="modal-footer">
							<input type="submit" value="Submit" class="btn btn-success">
						</div>
					</form>
				</div>
			</div>
		</div> --%>

			<div class="modal fade show" id="collReqMsgModal" tabindex="-1"
				role="dialog" aria-labelledby="myLargeModalLabel"
				 aria-modal="true">
				<div class="modal-dialog modal-dialog-centered">
					<div class="modal-content">
						<div class="modal-header" style="background: #0f2c7eeb;">
							<h6 class="modal-title" id="myLargeModalLabel" style="color: white">Edit Request Message</h6>
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">×</button>
						</div>
						<c:url value="/editInternalRequestMessage" var="editFormAction"></c:url>
						<div class="modal-body">
							<input type="text" class="form-control" id="collReqMsg" maxlength="450">
					<input type="hidden" id="reqId">
						</div>
						<div class="modal-footer" style="border-top: 0px;">
							<input type="button" value="Submit & Approve" class="btn btn-success btn-sm" onclick="addNote();">
						</div>
					</div>
				</div>
			</div>
			<%-- <div id="collReqMsgModal" class="modal fade" role="dialog">
		<div class="modal-dialog">
		    <!-- Modal content-->
		    <div class="modal-content">
			    <div class="panel-heading">
					<button type="button" class="close" data-dismiss="modal">×</button>
					<h4 class="modal-title">Edit Request Message</h4>
				</div>
				<c:url value="/editInternalRequestMessage" var="editFormAction"></c:url>
				<div class="modal-body">
					<input type="text" class="form-control" id="collReqMsg" maxlength="450">
					<input type="hidden" id="reqId">
			    </div>
				<div class="modal-footer">
					<input type="button" value="Submit & Approve" class="btn btn-success" onclick="addNote();">
				</div>
		    </div>
		</div>
	</div> --%>
<%-- 	<%@include file="comp_coll_details_modal.jsp"%>sk --%>
	<%@include file="modal_common.jsp"%>
	<%@include file="modalStudentDetails.jsp"%>
	<%@include file="modal.jsp"%>
		<!--End Content Wrapper. Contains page content-->
			<%@include file="footer.jsp"%>
		</div>
	</div>
	<!-- js -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.0/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.0/jquery-confirm.min.js"></script>
	<script src="/dist/js/myjs/common.js"></script>
	<script src="/dist/js/myjs/projectConstants.js"></script>
	<script src="/dist/js/myjs/form_elements.js"></script>
	<script src="/dist/js/myjs/student_internship_request_to_comapny.js"></script>
	<script src="/dist/js/myjs/userDetails.js"></script>
	<script src='/dist/dash/vendors/scripts/core.js'></script>
	<script src='/dist/dash/vendors/scripts/script.min.js'></script>
 <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script src='/dist/dash/vendors/scripts/process.js'></script>
	<script src='/dist/dash/vendors/scripts/layout-settings.js'></script>
	<script src='/dist/dash/src/plugins/datatables/js/jquery.dataTables.min.js'></script>
	<script src='/dist/dash/src/plugins/datatables/js/dataTables.bootstrap4.min.js'></script>
	<script src='/dist/dash/src/plugins/datatables/js/dataTables.responsive.min.js'></script>
	<script src='/dist/dash/src/plugins/datatables/js/responsive.bootstrap4.min.js'></script>
	<script src='/dist/dash/src/plugins/datatables/js/buttons.print.min.js'></script>
	<script src='/dist/dash/src/plugins/datatables/js/buttons.html5.min.js'></script>
	<script src='/dist/dash/src/plugins/datatables/js/buttons.flash.min.js'></script>
	<script src='/dist/dash/src/plugins/datatables/js/pdfmake.min.js'></script>
	<script src='/dist/dash/src/plugins/datatables/js/vfs_fonts.js'></script>
	<script src='/dist/dash/src/plugins/switchery/switchery.min.js'></script>
	<script src='/dist/dash/src/plugins/bootstrap-tagsinput/bootstrap-tagsinput.js'></script>
	<script src='/dist/dash/vendors/scripts/datatable-setting.js'></script>
		<script type="text/javascript">
	function setRejection_id(request_id) {
		$('#txt_request_id').val(request_id);
	}
	// Rejection student Request
	</script>
	
</body>
</html>