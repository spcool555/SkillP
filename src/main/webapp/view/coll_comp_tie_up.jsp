
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- Basic Page Info -->
<meta charset="utf-8">
<title>SkillPilots | Industry Tie-Ups</title>

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
	.ttl{
		background: #317c9e29;
    padding: 0px 3px 1px 2px;
    border-radius: 5px;
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
							<!-- <li><a href="college_dept" class="dropdown-toggle no-arrow">
									<span class="micon dw dw-time-management"></span><span class="mtext">Manage
										Departments</span>
							</a></li> -->
							<li><a href="live_chat" class="dropdown-toggle no-arrow">
									<span class="micon dw dw-chat3"></span><span class="mtext">Live
										Chat</span>
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
			</c:if></c:if>
	</div>
	<div class="mobile-menu-overlay"></div>

	<div class="main-container">
		<div class="xs-pd-20-10 pd-ltr-20">

			<div class="title pb-20">
				<h4 class="h4 mb-0 text-center" style="color: white;background: #0f2c7eeb;border-radius: 5px;">Company List</h4>
			</div>
			<div class="pd-20 card-box">
			<div class="tab">
								<ul class="nav nav-tabs customtab" role="tablist">
									<c:if test="${ role eq ProjectConstants.iii_Role || role  eq ProjectConstants.hod_Role}">
									<li class="nav-item">
										<a class="nav-link active" data-toggle="tab" href="#availTab" role="tab" aria-selected="true">Companies Available For Tie Up</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" data-toggle="tab" href="#tieupTab" role="tab" aria-selected="false">Tied Up Companies</a>
									</li></c:if>
									<c:if test="${ user_data.role eq ProjectConstants.iii_Role }">
									<li class="nav-item">
										<a class="nav-link" data-toggle="tab" href="#recTab" role="tab" aria-selected="false">Received Requests</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" data-toggle="tab" href="#sentTab" role="tab" aria-selected="false">Sent Requests</a>
									</li></c:if>
								</ul>
								<div class="tab-content">
									<div class="tab-pane fade show active" id="availTab" role="tabpanel">
										<div class="pd-20">
											<c:if test="${ not empty companies }">
								<table class="data-table table hover"
									style="margin-top: 7px;">
									<thead class="thead-light">
										<tr>
											<th>Company Name</th>
											<th>Established Date</th>
											<th>Web URL</th>
											<!-- <th>Rating</th> -->
											<c:if test="${role eq ProjectConstants.iii_Role}">
												<th>Action</th>
											</c:if>
										</tr>
									</thead>
									<tbody id="tablist">
										<c:forEach var="company" items="${companies}">
											<tr>
												<td style="color: #0947f5"><span class="pointer compLink"
													onclick="getCompanyDetails('${company.company_id}');">${company.company_name}</span></td>
												<td><span>${company.estd_date}</span></td>
												<td><span>${company.web_url}</span></td>
												<!-- <td><i class="fa fa-star actStar" aria-hidden="true"></i><i class="fa fa-star actStar" aria-hidden="true"></i><i class="fa fa-star actStar" aria-hidden="true"></i><i class="fa fa-star defStar" aria-hidden="true"></i><i class="fa fa-star defStar" aria-hidden="true"></i></td> -->
												<c:if test="${role eq ProjectConstants.iii_Role}">
													<td class="btn-td" style="width: 1%"><form:form
															modelAttribute="collCompTieUp" action="comp_tieup_req"
															method="post" id="${company.company_id}">
															<form:hidden path="company.company_id"
																value="${company.company_id}" />
															<span class="pointer label label-success"
																onclick="tieupTerms('${company.company_id}');" style="background:#213c87;color: white;padding: 2px 8px 4px 8px;border-radius: 3px;">Apply</span>
														</form:form></td>
												</c:if>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</c:if>
							<c:if test="${  empty companies }">
								<label>No Companies are available For Tie-Up</label>
							</c:if>
										</div>
									</div>
									<div class="tab-pane fade" id="tieupTab" role="tabpanel">
										<div class="pd-20">
											<c:if test="${ not  empty tiedupcompanies  }">
								<table class="data-table table hover"
									style="margin-top: 7px;">
									<thead class="thead-light">
										<tr>
											<th>Company Name</th>
											<th>Tied up Date</th>
											<th>Valid Till</th>
											<c:if test="${role==ProjectConstants.iii_Role }">
												<th>Give Ratings</th>
											</c:if>
											<th>Agreement</th>
										</tr>
									</thead>
									<tbody id="tablist">
										<c:forEach var="collcomptieup" items="${tiedupcompanies}">
											<tr>
												<td style="color: #0947f5"><span class="pointer compLink"
													onclick="getCompanyDetails('${collcomptieup.company.company_id}');">${collcomptieup.company.company_name}</span></td>
												<td><span><fmt:formatDate
															pattern="${ProjectConstants.date_format}"
															value="${collcomptieup.effective_date}" /></span></td>
												<td><span><fmt:formatDate
															pattern="${ProjectConstants.date_format}"
															value="${collcomptieup.expiration_date}" /></span></td>

												<c:if test="${role==ProjectConstants.iii_Role }">
													<td><span title="Give feedback to company."
														class="pointer greenHov actIcon"
														onclick="feedbackAgainstCompany('${collcomptieup.company.company_id}');"><i
															class="fa fa-commenting-o"></i></span> <!-- <span class="label label-info pointer">Avg Ratings Of Stud</span> -->
													</td>
												</c:if>
												<td class="btn-td" width="1%"><span
													class="label label-info pointer" style="padding: 3px 7px 3px 7px;border-radius: 3px;color: white;"
													onclick="viewAgreement('${institute_id}','${collcomptieup.company.company_id}','${collcomptieup.requested_by}','<fmt:formatDate value="${collcomptieup.updation_date}" pattern="${ProjectConstants.date_format}"/>');">
														<i class="fa fa-download"> Download</i>
												</span></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</c:if>
							<c:if test="${   empty tiedupcompanies  }">
								<label>No Tied-Up Companies</label>
							</c:if>
										</div>
									</div>
									<div class="tab-pane fade" id="recTab" role="tabpanel">
										<div class="pd-20">
											<c:if test="${not empty receivedRequest }">
								<table class="data-table table hover"
									style="margin-top: 7px;">
									<thead class="thead-light">
										<tr>
											<th>Request ID</th>
											<th>Company Name</th>
											<th>Receive Request</th>
											<th>Status</th>
										</tr>
									</thead>
									<tbody id="tablist">
										<c:forEach var="rec_req" items="${receivedRequest}">

											<tr>
												<td>${rec_req.tieup_id}</td>
												<td style="color: #0947f5"><span class="pointer compLink"
													onclick="getCompanyDetails('${rec_req.company.company_id}');">${rec_req.company.company_name}</span></td>
												<td><span><fmt:formatDate
															pattern="${ProjectConstants.date_format}"
															value="${rec_req.creation_date}" /></span></td>
												<td class="btn-td"><c:if
														test="${rec_req.status eq ProjectConstants.coll_comp_tieup_status_pending}">
														<span class="pointer label label-success" style="background: #49b910;padding: 4px 8px 4px 4px; color: white; border-radius: 3px;"
															id="accept-${rec_req.tieup_id}"
															onclick="acceptReject(this)"><i
															class="fa fa-check"></i> Accept</span>
														&nbsp;&nbsp;<span class="pointer label label-danger"
															id="reject-${rec_req.tieup_id}" style="background: red;padding: 4px 8px 4px 4px; color: white; border-radius: 3px;"
															onclick="acceptReject(this)"><i
															class="fa fa-times"></i> Reject</span>
													</c:if> <c:if
														test="${rec_req.status eq ProjectConstants.coll_comp_tieup_status_rejected}">
														<span style="color: red; font-weight: #F10104;"><i
															class="fa fa-ban"></i> Rejected</span>
													</c:if></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</c:if>
							<c:if test="${ empty receivedRequest  }">
								<label>No Receive Request</label>
							</c:if>
										</div>
									</div>
									<div class="tab-pane fade" id="sentTab" role="tabpanel">
										<div class="pd-20">
											<c:if test="${ not empty sentRequest }">
								<table class="data-table table hover">
									<thead class="thead-light">
										<tr>
											<th>Request ID</th>
											<th>Company Name</th>
											<th>Sent Date</th>
											<th>Status</th>
										</tr>
									</thead>
									<tbody id="tablist">
										<c:forEach var="sent_req" items="${sentRequest}">
											<tr>
												<td>${sent_req.tieup_id}</td>
												<td style="color: #0947f5"><span class="pointer compLink"
													onclick="getCompanyDetails('${sent_req.company.company_id}');">${sent_req.company.company_name}</span></td>
												<td><span><fmt:formatDate
															pattern="${ProjectConstants.date_format}"
															value="${sent_req.creation_date}" /></span></td>
												<td class="btn-td"><c:if
														test="${sent_req.status eq ProjectConstants.coll_comp_tieup_status_pending}">
														<span style="color: #8E75D2; font-weight: bold;"><i
															class="fa fa-clock-o"></i> Pending</span>
													</c:if> <c:if
														test="${sent_req.status eq ProjectConstants.coll_comp_tieup_status_rejected}">
														<span style="color: #F10104; font-weight: bold;"><i
															class="fa fa-ban"></i> Rejected</span>
													</c:if></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</c:if>
							<c:if test="${  empty sentRequest }">
								<label> No Sent Requests</label>
							</c:if>
										</div>
									</div>
								</div>
							</div></div><br>
			<%@include file="modalFeedback.jsp"%>
	<%-- <%@include file="comp_coll_details_modal.jsp"%> --%>
	<%@include file="modal_tieup_terms_and_conditions.jsp"%>
			<%@include file="footer.jsp"%>
			</div>
		</div>
	<!-- js -->
	<%@include file="scriptfiles.jsp"%>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.0/jquery-confirm.min.js"></script>
	<script src="/dist/js/myjs/userDetails.js"></script>
	<script src="/dist/js/myjs/form_elements.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.2/jspdf.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.4/jspdf.debug.js"></script>
	<script src="/dist/jspdf/addimage.js"></script>
	<script src="/dist/jspdf/png.js"></script>
	<script src="/dist/jspdf/zlib.js"></script>
	<script src="/dist/jspdf/png_support.js"></script>
	<script src="/dist/js/myjs/coll_comp_tie_up.js"></script>
	<script src="/dist/js/myjs/students_feedback_script.js"></script>
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