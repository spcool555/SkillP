
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- Basic Page Info -->
<meta charset="utf-8">
<title>SkillPilots | Internship Request</title>

<!-- Site favicon -->
<link rel="apple-touch-icon" sizes="180x180" href="/dist/dash/vendors/images/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="16x16" href="/dist/dash/vendors/images/favicon.ico">

<!-- Mobile Specific Metas -->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

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
				src="/dist/dash/vendors/images/deskapp-logo.svg" alt="" class="dark-logo"> 
				<img src="/dist/dash/vendors/images/skillpilot_white.svg" alt="" class="light-logo">
			</a>
			<div class="close-sidebar" data-toggle="left-sidebar-close">
				<i class="ion-close-round"></i>
			</div>
		</div>
		<c:if test="${user_data.role eq '1'}">
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
					<li><a href="college_tie_up" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-repeat-1"></span><span class="mtext">Institute Tie-Ups</span>
					</a></li>
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
				<h4 class="h4 mb-0 text-center" style="color: white;background: #0f2c7eeb;border-radius: 5px;">Internship Request</h4>
			</div>
			<div class="card-box mb-30">
					<div class="pd-20">
						<c:if test="${not empty com_internal_req}">
							<div class="panel-heading text-center">
								<h5 class="panel-title" style="color:#1b00ff">
									Internal Internship Requests
								</h5>
							</div>
							<div class="mb-15">
								<table class="data-table table hover">
									<thead class="thead-light">
										<tr>
											<th class="table-plus datatable-nosort">Request ID</th>
											<th>Requester</th>
											<th>Request</th>
											<th>Skill</th>
											<th style="width: 70px;">Duration</th>
											<th>Interns Group</th>
											<th>Assigned Team</th>
											<th>Status</th>
											<th>Request Expires on</th>
										</tr>
									</thead>
									<tbody id="tablist">
										<c:forEach items="${com_internal_req}" var="com_internal_req">
											<tr>
												<td><span>${com_internal_req[0]}</span></td>
												<c:set var = "reqtype" value = "${fn:substring(com_internal_req[9], 0, 2)}" />
												<td>
													<c:if test="${reqtype eq ProjectConstants.external_request_id_initial}">
														<span class="pointer" onclick="getCollegeDetails('${com_internal_req[8]}',false);">
															<strong style="color:#1b00ff;">${com_internal_req[1]}</strong></span>
													</c:if>
													<c:if test="${reqtype eq ProjectConstants.student_request_id_initial}">
														<span>Student</span>
													</c:if>
												</td>
												<td><span>${com_internal_req[3]}</span></td>
												<td><span>${com_internal_req[4]}</span></td>
												<td><center><span>${com_internal_req[5]}</span></center></td>
												<td>
													<c:if test="${reqtype eq ProjectConstants.external_request_id_initial}">
														<span class="pointer intrngrp" style="font-size:14px !important;"
															onclick="studentId(this);" data-toggle="modal" data-target="#all_interns_details"
															id="${com_internal_req[6]}">
																<strong style="color: #1b00ff;">Group Details</strong>
														</span>
													</c:if>
													<c:if test="${reqtype eq ProjectConstants.student_request_id_initial}">
														<span class="pointer intrngrp" style="font-size:14px !important;"
															onclick="dispStudentData('${com_internal_req[6]}');" data-toggle="modal"
															data-target="#studentDetailsModal" id="${com_internal_req[6]}">
																<strong>Student Details</strong>
														</span>
													</c:if>
												</td>
												<td><span>${com_internal_req[2]}</span></td>
												<td>
													<c:if test="${role eq ProjectConstants.manager_Role && com_internal_req[7] eq ProjectConstants.comp_internal_req_approval_status_manager}">
														<c:forEach items="${compDeptLink}" var="deptlink">
														<c:if test="${deptlink.comp_dept_link_id == com_internal_req[11]}">
															<c:if test="${ deptlink.internship_lead_id == null }">
																<a class="btn btn-warning" data-toggle="collapse" data-target="#schedule${com_internal_req[0]}" 
																	style="margin: 0px !important; font-size: 17px !important; padding: 0px !important;">
																	Schedule <i class="fa fa-sort-desc" aria-hidden="true" style="vertical-align: 3px;"></i>
																</a>
																<div id="schedule${com_internal_req[0]}" class="collapse">
																	<div class="col-sm-12" style="width: 100%; border: 1px solid; border-color:#1974c3; background-color:#eeeeee; padding:10px;">
																		<p>
																			<b>Start Date:</b>
																			<input type="text" id="datepicker${com_internal_req[0]}" 
																				class="mydatepicker" style="width:95%; height: auto;" readonly='true'>
																		</p>
																		<p>
																			<button class="btn btn-primary btn-xs"
																				style="float:right; border-radius:10pc !important;"
																				onclick="scheduleInternship('${com_internal_req[0]}','${com_internal_req[2]}');">
																			Confirm</button>
																		</p>
																	</div>
																</div>
															</c:if>
															<c:if test="${ deptlink.internship_lead_id != null }">
																<a class="btn btn-warning " data-toggle="collapse" data-target="#a${com_internal_req[0]}"
																	style="margin: 0px !important; font-size: 14px !important; padding: 0px !important;">
																	Assign to lead <i class="fa fa-sort-desc" aria-hidden="true" style="vertical-align: 3px;"></i>
																</a>
																<%-- <button style="background-color: red; border-color: red; border-radius: 10px;"
																	class='btn-primary' data-toggle="modal" data-target="#rejectModelfor_External_req"
																	onclick="rejectReqId('${com_internal_req[0]}');">Reject</button> --%>
																<div id="a${com_internal_req[0]}" class="collapse">
																	<div class="col-sm-12" style="width: 100%; border: 1px solid; border-color:#1974c3; background-color:#eeeeee; padding:10px;">
																		<input type="hidden" class="cmp_role_three_id cmp_role_three_id${deptlink.internship_lead_id}"
																			id="${deptlink.internship_lead_id}" style="width:50%; border-radius: 8px; margin-top: 3px;"
																			disabled="disabled">
																		<button class="btn btn-primary btn-xs" style="margin-left:3px !important; border-radius:10pc !important; margin-top: 4px;"
																			onclick="approveReqId('${com_internal_req[0]}');">Confirm</button>
																	</div>
																</div>
															</c:if>
														</c:if>
														</c:forEach>
													</c:if> 
													<c:if test="${role eq ProjectConstants.internship_lead_Role && com_internal_req[7] eq ProjectConstants.comp_internal_req_approval_status_internship_lead }">
														<a class="btn btn-warning " data-toggle="collapse" data-target="#schedule${com_internal_req[0]}"
															style="margin: 0px !important; font-size: 17px !important; padding: 0px !important;">
															Schedule <i class="fa fa-sort-desc" aria-hidden="true" style="vertical-align: 3px;"></i>
														</a>
														<%-- <button class='btn-primary' data-toggle="modal" data-target="#rejectModelfor_External_req"
															onclick="rejectReqId('${com_internal_req[0]}');">
															Reject</button> --%>
														<div id="schedule${com_internal_req[0]}" class="collapse">
															<div class="col-sm-12" style="width: 100%; border: 1px solid; border-color:#1974c3; background-color:#eeeeee; padding:10px;">
																<p>
																	<b>Start Date:</b>
																	<input type="text" id="datepicker${com_internal_req[0]}" 
																		class="mydatepicker" style="width:95%; height: auto;" readonly='true'>
																</p>
																<p>
																	<button class="btn btn-primary btn-xs"
																		style="float:right; border-radius:10pc !important;"
																		onclick="scheduleInternship('${com_internal_req[0]}','${com_internal_req[2]}');">
																	Confirm</button>
																</p>
															</div>
														</div>
													</c:if>
													<c:if test="${(role eq ProjectConstants.hr_Role || role eq ProjectConstants.manager_Role) && com_internal_req[7] eq ProjectConstants.comp_internal_req_approval_status_internship_lead }">
														<i class="fa fa-clock-o fa-spin"></i><span style="color: #ff0000c7;">Pending at Lead</span>
													</c:if>
													<c:if test="${(role eq ProjectConstants.hr_Role || role eq ProjectConstants.internship_lead_Role) && com_internal_req[7] eq ProjectConstants.comp_internal_req_approval_status_manager }">
														<i class="fa fa-clock-o fa-spin"></i> <span style="color: #ff0000c7;">Pending at Manager</span>
													</c:if>
													<c:if test="${com_internal_req[7] eq ProjectConstants.comp_internal_req_approval_status_approved }">
														<span>Scheduled</span>
													</c:if>
													<%-- <c:if test="${com_internal_req[7] eq ProjectConstants.comp_internal_req_approval_status_rejected }">
														<span>Rejected</span>
														<span onclick="rejectionReason(this);" id="${com_internal_req[0]}">
															<i class="fa fa-info-circle" aria-hidden="true" title="Rejection Reason"
																style="color:#0073b7; padding-left:3px;"></i>
													</c:if> --%>
													<c:if test="${com_internal_req[7] eq ProjectConstants.request_cancelled_by_system}">
														<span title="Internship started in some other company.">Cancelled by Admin</span>
													</c:if>
												</td>
												<td><span>${com_internal_req[10]}</span></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
					</c:if>
					<c:if test="${empty com_internal_req}">
						<div class="box text-center">
							<label class="text-center">${ empty_internal_request } </label>
						</div>
					</c:if>
					</div>
				</div>
			<%@include file="modal_common.jsp"%>			
			<%@include file="modal.jsp"%>
			<%@include file="modal_adv_schedule.jsp"%>
			<%@include file="modalStudentDetails.jsp"%>
			
			<%@include file="footer.jsp"%>
		</div>
	</div>
	<!-- js -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.0/jquery.min.js"></script>
	<script src="/dist/js/myjs/common.js"></script>
	<script src="/dist/js/myjs/projectConstants.js"></script>
	<script src="/dist/js/myjs/company_internal_request.js"></script>
	<script src="/dist/js/myjs/internship_schedule.js"></script>
	<script type="text/javascript" src="/dist/js/myjs/userDetails.js"></script>
	<script src="/dist/dash/vendors/scripts/core.js"></script>
	<script src="/dist/dash/vendors/scripts/script.min.js"></script>
	<script src="/dist/dash/vendors/scripts/process.js"></script>
	<script src="/dist/dash/vendors/scripts/layout-settings.js"></script>
	<script src="/dist/dash/src/plugins/datatables/js/jquery.dataTables.min.js"></script>
	<script src="/dist/dash/src/plugins/datatables/js/dataTables.bootstrap4.min.js"></script>
	<script src="/dist/dash/src/plugins/datatables/js/dataTables.responsive.min.js"></script>
	<script src="/dist/dash/src/plugins/datatables/js/responsive.bootstrap4.min.js"></script>
	<script src="/dist/dash/src/plugins/datatables/js/dataTables.buttons.min.js"></script>
	<script src="/dist/dash/src/plugins/datatables/js/buttons.bootstrap4.min.js"></script>
	<script src="/dist/dash/src/plugins/datatables/js/buttons.print.min.js"></script>
	<script src="/dist/dash/src/plugins/datatables/js/buttons.html5.min.js"></script>
	<script src="/dist/dash/src/plugins/datatables/js/buttons.flash.min.js"></script>
	<script src="/dist/dash/src/plugins/datatables/js/pdfmake.min.js"></script>
	<script src="/dist/dash/src/plugins/datatables/js/vfs_fonts.js"></script>
	<!-- Datatable Setting js -->
	<script src="/dist/dash/src/plugins/switchery/switchery.min.js"></script>
	<!-- bootstrap-tagsinput js -->
	<script src="/dist/dash/src/plugins/bootstrap-tagsinput/bootstrap-tagsinput.js"></script>
	<script src="/dist/dash/vendors/scripts/datatable-setting.js"></script>
	<script src="/dist/dash/vendors/scripts/dashboard3.js"></script>
	<script src="/dist/dash/vendors/scripts/advanced-components.js"></script>
	<script type="text/javascript">
	$(document).ready( function () {
	    $('#internal_internship_requests').DataTable({
	    "lengthMenu": [[100, 125, 150, -1], [100, 125, 150, "All"]]
	    });
	} );
	
	</script>
	<script type="text/javascript">
	//Date picker
	$(function () {
	  var datepicker_ids = [];
	  $('.mydatepicker').each(function () {
		  datepicker_ids.push(this.id);
	  });
	  for(var i=0;i<datepicker_ids.length;i++){
		  $('#'+datepicker_ids[i]).datepicker({
				autoclose: true,
				format: 'yyyy-mm-dd',
				todayHighlight: true,
				 language: 'en'
			});
	  }
	});
	</script>
</body>
</html>