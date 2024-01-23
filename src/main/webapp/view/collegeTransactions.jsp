
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<!-- Basic Page Info -->
	<meta charset="utf-8">
	<title>SkillPilots | College Transactions</title>

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
		<c:if test="${user_data.role eq '2'}">
			<div class="menu-block customscroll">
			<div class="sidebar-menu">
				<ul id="accordion-menu">
					<li><a href="college_dashboard" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-house-1"></span><span class="mtext">Dashboard</span>
					</a></li>
					<li><a href="collegeViewInternships" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-house-1"></span><span class="mtext">Internships</span>
					</a></li>
					<li><a href="college_internal_req" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-house-1"></span><span class="mtext">Internal Requests</span>
					</a></li>
					<li><a href="student_list" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-house-1"></span><span class="mtext">Enroll Students</span>
					</a></li>
					<li><a href="getAppliedStudentsOfCollege" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-house-1"></span><span class="mtext">Students Request</span>
					</a></li>
					<li><a href="college_report" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-house-1"></span><span class="mtext">Internship Report</span>
					</a></li>
					<li><a href="certificate" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-house-1"></span><span class="mtext">View Certificate</span>
					</a></li>
				</ul>
			</div>
		</div>
		</c:if>
		<c:if test="${user_data.role eq '1'}">
		<c:set var = "theString" value = "${user_data.user_id }"/>
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
							<li><a href="live_chat" class="dropdown-toggle no-arrow">
									<span class="micon dw dw-chat3"></span><span class="mtext">Live
										Chat</span>
							</a></li>
						</ul>
					</div>
				</div>
			</c:if></c:if>
	</div>
	<div class="mobile-menu-overlay"></div>

	<div class="main-container">
		<div class="pd-ltr-20 xs-pd-20-10">
		<div class="title pb-20">
				<h4 class="h4 mb-0 text-center" style="color: white;background: #0f2c7eeb;border-radius: 5px;">Transaction Details</h4>
			</div>
			<div class="min-height-200px">
				<div class="pd-20 bg-white border-radius-4 box-shadow mb-30">
					<table class="data-table table hover table-responsive">
								<thead>
							<tr>
								<th>Package</th>
								<th>Purchase Date</th>
								<th>Expiration Date</th>
								<th>Balance Internship's</th>
								<th>Balance Department's</th>
								<th>Usages</th>
							</tr>
						</thead>
						<tbody id="tablist">
							<c:forEach var="balanceDetail" items="${balanceDetails}">
								<tr>
									<td><span class="actionSpan pointer" style="color: #1017ef"
										onclick="viewPkgDetailsClg('pkg','${balanceDetail[1]}')">${balanceDetail[7]}</span></td>
									<td><span><fmt:formatDate
												pattern="${ProjectConstants.date_format}"
												value="${balanceDetail[2]}" /></span></td>
									<td><span><fmt:formatDate
												pattern="${ProjectConstants.date_format}"
												value="${balanceDetail[3]}" /></span></td>
									<td><span>${balanceDetail[5]}</span></td>
									<td><span>${balanceDetail[6]}</span></td>
									<td><span class="actionSpan pointer" style="color: #1017ef"
										onclick="viewPkgDetailsClg('bal','${balanceDetail[0]}')">View
											Usages</span></td>
								</tr>
							</c:forEach>
						</tbody>
							</table>
				</div>
			</div>
		<!--End Content Wrapper. Contains page content-->
			<%@include file="footer.jsp"%>
		</div>
	</div>
	<!-- js -->
	<%@include file="scriptfiles.jsp"%>
	<%@include file="modal_transactionsAndBalances.jsp"%>
	<script src="/dist/js/myjs/transactionsAndBalances.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="//cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
	<script src="/dist/dash/vendors/scripts/core.js"></script>
	<script src="/dist/dash/vendors/scripts/script.min.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script src="/dist/dash/vendors/scripts/process.js"></script>
	<script src="/dist/dash/vendors/scripts/layout-settings.js"></script>
	<script src="/dist/dash/src/plugins/datatables/js/jquery.dataTables.min.js"></script>
	<script src="/dist/dash/src/plugins/datatables/js/dataTables.bootstrap4.min.js"></script>
	<script src="/dist/dash/src/plugins/datatables/js/dataTables.responsive.min.js"></script>
	<script src="/dist/dash/src/plugins/datatables/js/responsive.bootstrap4.min.js"></script>
	<!-- buttons for Export datatable -->
	<script src="/dist/dash/src/plugins/datatables/js/dataTables.buttons.min.js"></script>
	<script src="/dist/dash/src/plugins/datatables/js/buttons.bootstrap4.min.js"></script>
	<script src="/dist/dash/src/plugins/datatables/js/buttons.print.min.js"></script>
	<script src="/dist/dash/src/plugins/datatables/js/buttons.html5.min.js"></script>
	<script src="/dist/dash/src/plugins/datatables/js/buttons.flash.min.js"></script>
	<script src="/dist/dash/src/plugins/datatables/js/pdfmake.min.js"></script>
	<script src="/dist/dash/src/plugins/datatables/js/vfs_fonts.js"></script>
	<!-- Datatable Setting js -->
	<script src="/dist/dash/vendors/scripts/datatable-setting.js"></script>
</body>
</html>