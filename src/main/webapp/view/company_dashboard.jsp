<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<%@include file="user_session.jsp" %>
<!DOCTYPE html>
<html>
<head>
<!-- Basic Page Info -->
<meta charset="utf-8">
<title>SkillPilots | Company Dashboard</title>

<!-- Site favicon -->
<link rel="apple-touch-icon" sizes="180x180"
	href="/dist/dash/vendors/images/apple-touch-icon.png">
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
				src="/dist/dash/vendors/images/deskapp-logo.svg" alt="" class="dark-logo"> 
				<img src="/dist/dash/vendors/images/skillpilot_white.svg" alt="" class="light-logo">
			</a>
			<div class="close-sidebar" data-toggle="left-sidebar-close">
				<i class="ion-close-round"></i>
			</div>
		</div>
		<c:if test="${user.role eq '2' || user.role eq '1'}">
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
		<c:if test="${user.role eq '4'}">
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
		<c:if test="${user.role eq '3'}">
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
	</div>
	<div class="mobile-menu-overlay"></div>

	<div class="main-container">
		<div class="xs-pd-20-10 pd-ltr-20">
			<div class="page-header">
				<div class="row">
					<div class="col-md-6 col-sm-12">
						<div class="title">
							<h4>Dashboard</h4>
						</div>
						<nav aria-label="breadcrumb" role="navigation">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="company_dashboard">Home</a></li>
								<li class="breadcrumb-item active" aria-current="page">Dashboard</li>
							</ol>
						</nav>
					</div>
				</div>
			</div>
			<div class="row pb-10">
			<div class="col-md-3 mb-20">
					<div class="card-box min-height-200px pd-20 mb-20" data-bgcolor="#455a64" style="background-color: rgb(69, 90, 100);">
						<div class="d-flex justify-content-between pb-20 text-white">
							<div class="icon h1 text-white">
								<i class="icon-copy fa fa-university" aria-hidden="true"></i>
								<!-- <i class="icon-copy fa fa-stethoscope" aria-hidden="true"></i> -->
							</div>
							<div class="font-14 text-right">
							</div>
						</div>
						<div class="d-flex justify-content-between align-items-end">
							<div class="text-white">
								<div class="font-14">Pending Internship's</div>
								<div class="font-24 weight-500">${pendingCount}</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 mb-20">
					<div class="card-box min-height-200px pd-20" data-bgcolor="#265ed7" style="background-color: rgb(38, 94, 215);">
						<div class="d-flex justify-content-between pb-20 text-white">
							<div class="icon h1 text-white">
								<i class="icon-copy fa fa-university" aria-hidden="true"></i>
							</div>
							<div class="font-14 text-right">
							</div>
						</div>
						<div class="d-flex justify-content-between align-items-end">
							<div class="text-white">
								<div class="font-14">Ongoing Internship's</div>
								<div class="font-24 weight-500">${ongoingCount}</div>
							</div>
							<div class="resize-triggers"><div class="expand-trigger"><div style="width: 151px; height: 71px;"></div></div><div class="contract-trigger"></div></div></div>
						</div>
					</div>
					<div class="col-md-3 mb-20">
					<div class="card-box min-height-200px pd-20" data-bgcolor="#455a64" style="background-color: rgb(69, 90, 100);">
						<div class="d-flex justify-content-between pb-20 text-white">
							<div class="icon h1 text-white">
								<i class="icon-copy fa fa-certificate" aria-hidden="true"></i>
							</div>
							<div class="font-14 text-right">
							</div>
						</div>
						<div class="d-flex justify-content-between align-items-end">
							<div class="text-white">
								<div class="font-14">Completed Internship's</div>
								<div class="font-24 weight-500">${completedCount }</div>
							</div>
							<div class="resize-triggers"><div class="expand-trigger"><div style="width: 151px; height: 71px;"></div></div><div class="contract-trigger"></div></div></div>
						</div>
					</div>
					<div class="col-md-3 mb-20">
					<div class="card-box min-height-200px pd-20" data-bgcolor="#265ed7" style="background-color: rgb(38, 94, 215);">
						<div class="d-flex justify-content-between pb-20 text-white">
							<div class="icon h1 text-white">
								<i class="icon-copy fa fa-external-link" aria-hidden="true"></i>
							</div>
							<div class="font-14 text-right">
							</div>
						</div>
						<div class="d-flex justify-content-between align-items-end">
							<div class="text-white">
								<div class="font-14">Internal Internship's Requests</div>
								<div class="font-24 weight-500">${company_internal_request_count}</div>
							</div>
							<div class="resize-triggers"><div class="expand-trigger"><div style="width: 151px; height: 71px;"></div></div><div class="contract-trigger"></div></div></div>
						</div>
					</div>
				</div>
			</div>
			<%@include file="modal_common.jsp"%>			
			<%@include file="footer.jsp"%>
		</div>
	<!-- js -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.0/jquery.min.js"></script>
	<script src="/dist/js/myjs/common.js"></script>
	<script src="/dist/js/myjs/projectConstants.js"></script>
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
</body>
</html>