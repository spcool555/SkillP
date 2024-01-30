<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@include file="user_session.jsp" %>
	
<!DOCTYPE html>
<html>
<head>
<!-- Basic Page Info -->
<meta charset="utf-8">
<title>SkillPilots | College Dashboard</title>

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
#style-3::-webkit-scrollbar-track
{ -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3); background-color: #F5F5F5; }
.pointer {cursor: pointer;}
#style-3::-webkit-scrollbar
{ width: 6px; background-color: #0f2c7eeb; }

#style-3::-webkit-scrollbar-thumb
{ background-color: #0f2c7eeb; }
#div_location::-webkit-scrollbar-track
{ -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3); background-color: #F5F5F5; }

#div_location::-webkit-scrollbar
{ width: 6px; background-color: #0f2c7eeb; }

#div_location::-webkit-scrollbar-thumb
{ background-color: #0f2c7eeb; }
#div_tech::-webkit-scrollbar-track
{ -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3); background-color: #F5F5F5; }

#div_tech::-webkit-scrollbar
{ width: 6px; background-color: #F5F5F5; }

#div_tech::-webkit-scrollbar-thumb
{ background-color: #0f2c7eeb; }
#div_dept::-webkit-scrollbar-track
{ -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3); background-color: #F5F5F5;}

#div_dept::-webkit-scrollbar
{ width: 6px; background-color: #F5F5F5; }

#div_dept::-webkit-scrollbar-thumb { background-color: #0f2c7eeb;}
hr{
	border-top-width: medium;
	background: #0f2c7eeb;
}

#companyList::-webkit-scrollbar-track
{ -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3); background-color: #F5F5F5; }
#companyList::-webkit-scrollbar
{ width: 6px; background-color: #0f2c7eeb; }

#style-4::-webkit-scrollbar-thumb
{ background-color: #0f2c7eeb; }
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
				src="/dist/dash/vendors/images/deskapp-logo.svg" alt="" class="dark-logo"> 
				<img src='/dist/dash/vendors/images/skillpilot_white.svg' alt="" class="light-logo">
			</a>
			<div class="close-sidebar" data-toggle="left-sidebar-close">
				<i class="ion-close-round"></i>
			</div>
		</div>
		<c:if test="${user.role eq '5'}">
	
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
		<c:if test="${user.role eq '6'}">
		
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
							<li><a href="live_chat" class="dropdown-toggle no-arrow">
									<span class="micon dw dw-chat3"></span><span class="mtext">Live
										Chat</span>
							</a></li>
						</ul>
					</div>
				</div>
			</c:if>
		<c:if test="${user.role eq '7'}">
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
					<li><a href="college_dept" class="dropdown-toggle no-arrow">
									<span class="micon dw dw-time-management"></span><span class="mtext">Manage
										Departments</span>
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
		<c:if test="${user.role eq '8'}">
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
			<div class="title pb-20 text-center">
				<h2 class="h3 mb-0"
					style="background: #0f2c7eeb; color: white; border-radius: 5px;">
					<span>Available Internship's</span>
				</h2>
				
			</div>

				<div class="row">
					<div class="col-xl-4 mb-30" style="height: 440px;">
						<div class="card-box height-100-p pd-20 scrollbar force-overflow"
							id="style-3" style="position: relative; max-height: 100%; overflow: auto;">
							<h6 class="h4 mb-0"
								style="text-align: center; font-weight: 100; margin-bottom: 0px; background: #213c87; color: white; border-radius: 6px;">
								Filters</h6>
							<hr>
							<h6 class="h6"
								style="font-weight: 100; background: #213c87; padding: 3px 6px 3px 5px; color: white; border-radius: 3px;">
								<i class="fa fa-filter" style="color: white;"></i>&nbsp;Filter
								by location <span
									id="location_reset" title="Reset filter"
									style="float: right; color:white;" class="pointer"
									onclick="resetSearch('location','location_reset');"> <i
									class="fa fa-refresh"></i></span>
							</h6>
							<div class="row">
								<div class="col-md-10">
									<input type="text" id="location"
										class="form-control search_control"
										style="height: 100%; width: 105%;">
								</div>
								<div class="col-md-2" style="padding-left: 0;">
									<button class="btn btn-sm btn-primary"
										style="padding: 4px 10px 4px 10px;"
										onclick="getnextAdvertisement('0','0');">
										<i class="fa fa-search"></i>
									</button>
								</div>
							</div>
							<div class="form-group scroll scrollbar force-overflow"
								id="div_location" style="overflow: auto;  height: 180px;">
								<c:forEach items="${cities}" var="location">
									<div class="checkbox">
										<label id="lbl_${location}"><input type="checkbox"
											class="filter_checkbox" name="location" value="${location}">&nbsp;${location}</label>
									</div>
								</c:forEach>
							</div>
							<hr>
							<h6 class="h6"
								style="font-weight: 100; background: #213c87; padding: 3px 6px 3px 5px; color: white; border-radius: 3px;">
								<i class="fa fa-building" style="color: white;"></i>&nbsp;Filter
								by Departments <span
									title="Reset" id="dept_reset"
									style="float: right; color: white;" class="pointer"
									onclick="resetSearch('dept','dept_reset');"> <i
									class="fa fa-refresh"></i></span>
							</h6>
							<div class="row">
								<div class="col-md-10">
									<input type="text" id="location"
										class="form-control search_control"
										style="height: 100%; width: 105%;">
								</div>
								<div class="col-md-2" style="padding-left: 0;">
									<button class="btn btn-sm btn-primary"
										style="padding: 4px 10px 4px 10px;"
										onclick="getnextAdvertisement('0','0');">
										<i class="fa fa-search"></i>
									</button>
								</div>
							</div>
							<div class="form-group scroll scrollbar force-overflow"
								id="div_dept" style="overflow: auto;  height: 200px;">
								<c:forEach items="${dept_names}" var="dept_name">
									<div class="checkbox">
										<c:set var="deptall_sp_remv"
											value="${fn:replace(fn:replace(fn:replace(fn:replace(fn:replace(dept_name,')', ''),
												'(', ''),'&', ''),'.', ''),' ', '')}" />
										<label id="lbl_${deptall_sp_remv}" class="showall"><input
											type="checkbox" class="filter_checkbox" name="dept"
											value="${deptall_sp_remv}"> ${dept_name}</label>
									</div>
								</c:forEach>
							</div>
							<hr>
							<h6 class="h6"
								style="font-weight: 100; background: #213c87; padding: 3px 6px 3px 5px; color: white; border-radius: 3px;">
								<i class="fa fa-briefcase" style="color: white;"></i>&nbsp;Filter
								by skill <span
									title="Reset" id="tech_reset"
									style="float: right; color: white;" class="pointer"
									onclick="resetSearch('tech','tech_reset');"> <i
									class="fa fa-refresh"></i></span>
							</h6>
							<div class="row">
								<div class="col-md-10">
									<input type="text" id="tech"
										class="form-control search_control"
										style="height: 100%; width: 105%;">
								</div>
								<div class="col-md-2" style="padding-left: 0;">
									<button class="btn btn-sm btn-primary"
										style="padding: 4px 10px 4px 10px;"
										onclick="getnextAdvertisement('0','0');">
										<i class="fa fa-search"></i>
									</button>
								</div>
							</div>
							<div class="form-group scroll scrollbar force-overflow" id="div_tech" style="overflow: auto; height: 200px;">
    <c:forEach items="${tech_names}" var="tech_name">
        <div class="checkbox">
            
            <label id="lbl_${techall_sp_remv}" class="showall_tech">
                <input type="checkbox" class="filter_checkbox" name="tech" value="${techall_sp_remv}">
                ${tech_name}
            </label>
        </div>
    </c:forEach>
</div>
							<hr>
							<h6 class="h6"
								style="font-weight: 100; background: #213c87; padding: 3px 6px 3px 5px; color: white; border-radius: 3px;">
								<i class="fa fa-rupee" style="color: white;"></i>&nbsp;Filter by
								Stipend <span id="sti_reset"
									title="Reset" style="float: right; color: white;"
									class="pointer" onclick="resetSearch('stipend','sti_reset');">
									<i class="fa fa-refresh"></i>
								</span>
							</h6>
							<div class="form-group" style="margin: 0px !important;">
								<div class="input-group input-group-sm"
									style="margin-bottom: 0px;">
									<div class="form-group is-empty">
										<div class="radio">
											<label><input type="radio" class="sti_check"
												name="stipend" value="1"> Paid</label>
										</div>
										<div class="radio">
											<label><input type="radio" class="sti_check"
												name="stipend" value="0"> Unpaid</label>
										</div>
									</div>
									<div class="input-group-btn">
										<button class="btn btn-sm btn-primary"
											style="padding: 4px 10px 4px 10px; position: relative; left: 172px;">
											<i class="fa fa-search"></i>
										</button>
									</div>
								</div>
							</div>
							<hr>
							<h6 class="h6"
								style="font-weight: 100; background: #213c87; padding: 3px 6px 3px 5px; color: white; border-radius: 3px;">
								<i class="fa fa-clock-o" style="color: white;"></i>&nbsp;Filter
								by Duration <span
									id="duration_reset" title="Reset"
									style="float: right; color: white;" class="pointer"
									onclick="resetSearch('duration','duration_reset');"> <i
									class="fa fa-refresh"></i></span>
							</h6>
							<div class="form-group">
								<div class="radio">
									<label><input type="radio" class="duration_check"
										name="duration" value=">="> Greater Than </label> <label><input
										type="radio" class="duration_check" name="duration" value="<=">
										Less Than </label>
								</div>
								<div class="row">
									<div class="col-md-10">
										<input type="text" id="duration_val" required="true"
											class="form-control search_control"
											style="height: 100%; width: 105%;">
									</div>
									<div class="col-md-2" style="padding-left: 0;">
										<button class="btn btn-sm btn-primary"
											style="padding: 4px 10px 4px 10px;"
											onclick="getnextAdvertisement('0','0');">
											<i class="fa fa-search"></i>
										</button>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-8 mb-30" style="height: 440px;">
						<div class="card-box " id="style-3"
							style="position: relative; max-height: 100%; overflow: auto;">
					
					<c:forEach items="${compAdvertisements}" var="comp_add">
						
						<div class="row">
							<div class="col-md-9">
								<h6 class="h5 mb-20" data-toggle="tooltip"
									data-placement="top" title="Description of internship"
									style="font-weight: 100; background: #e9edf1cc; padding-left: 9px; color: #0C0C0C; font-weight: 400; border-radius: 12px;">
									${comp_add.description}</h6>
									
							</div>
							<div class="col-md-3 text-center">
								<img
									src="/get_logo?id=${comp_add.company_id}"
									class="img-thumbnail"
									style="max-width: 70px; max-height: 78px;">
							</div>
						</div>
						<div class="row">
							<div class="col-md-3">
								<h6 class="h6 mb-20" style="font-weight: 100;">
									<i class="fa fa-map-marker" style="color: red"></i>&nbsp;${comp_add.location}
								</h6>
							</div>
							<div class="col-md-9 truncate-normal">
								<a href="javascript:void(0);"><span class="pointer cmpname cmp${comp_add.company_id}"
									onclick="getCompanyDetails('${comp_add.company_id}');"
									id="${comp_add.company_id}" style="color: #33A6F8;">${comp_add.company_id}</span></a>
							</div>
						</div>
						<div class="row">
							<div class="col-md-3">
								<span style="font-size: 12px; color: gray;"><i
									class="fa fa-play-circle-o"></i>&nbsp;START DATE</span><br>Immediately
							</div>
							<div class="col-md-3 text-center">
								<span style="font-size: 12px; color: gray;"><i
									class="fa fa-clock-o"></i>&nbsp;DURATION</span><br>${comp_add.duration}&nbsp;Week</div>
							<div class="col-md-3 text-center">
								<span style="font-size: 12px; color: gray;"><i
									class="fa fa-rupee"></i>&nbsp;STIPEND</span><br> <i
									class="fa fa-rupee"></i>&nbsp;${comp_add.stipend}
							</div>
							<div class="col-md-3 text-center">
								<span style="font-size: 12px; color: gray;"><i
									class="fa fa-users"></i>&nbsp;CAPACITY</span><br>${ comp_add.capacity }</div>
						</div>
						<br>
						<div class="row">
							<div class="col-md-6">
								<span style="font-size: 12px; color: gray;"><i
									class="fa fa-briefcase"></i>&nbsp;SKILL/TECHNOLOGY</span><br>${comp_add.technology_name}
							</div>
							<div class="col-md-3 text-center">
								<br>
								<button type="button" id="s_skill_wise"
									onclick="show_schedule_modal('${comp_add.id}','${comp_add.duration}','ADV');"
									class="btn btn-sm testme"
									style="background: #0090f7cc; padding: 2px 6px 3px 6px; color: white;">
									View Schedule&nbsp;<i class="fa fa-angle-double-right"></i>
								</button>
							</div>
							<div class="col-md-3 text-center">
								<br>
							<c:if test="${user.role eq '7'}">
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
					<li><a href="college_dept" class="dropdown-toggle no-arrow">
									<span class="micon dw dw-time-management"></span><span class="mtext">Manage
										Departments</span>
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
		</c:if><c:if test="${user.role ne  '6' and  user.role ne  '5'}">
								<button type="button" id="applyButton" class="btn btn-sm margin"
							data-toggle="modal" data-target="#confirmAdvertisement"
							onclick="applyInternship('${comp_add.company_id}', '${comp_add.description}', '${comp_add.location}', '${comp_add.duration}', '${comp_add.stipend}', '${comp_add.capacity}', '${comp_add.technology_name}')"
							style="background: #0090f7cc; padding: 2px 6px 2px 6px; color: white;">
							Apply
							<div class="ripple-container"></div>
							</button>
						</c:if>
							</div>
						</div>
						<hr style="border: solid 1px;">
					</c:forEach>
					</div>
				</div>
			</div>
			
				<input type="hidden" id="role" value="${role}" />
			<c:if test="${log_type eq 'ST' }">
				<input type="hidden" id="student_log" value="${log_type}" />
			</c:if>
			<div class="footer-wrap pd-20 mb-20 card-box" style="position: fixed; bottom: 0%; width: 76%;">
				<i class="fa fa-copyright" style="font-size: 17px; color: red"></i>
				<script>
					document.write(new Date().getFullYear())
				</script>
				All Rights Reserved SkillPilots | Designed & Developed By <a
					href="https://www.cluematrix.com/" target="_blank"
					style="color: #2800b4;">Cluematrix</a> Technologies Pvt.Ltd.
			</div>
			<%@include file="modal_common.jsp"%>
			<%@include file="modal.jsp"%>
			<%@include file="modal_adv_schedule.jsp"%>
		<%-- 	<%@include file="comp_coll_details_modal.jsp"%>sk --%>
		</div>
	</div>
	<!-- js -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.0/jquery.min.js"></script>
	<script src="/dist/js/myjs/common.js"></script>
	<script src="/dist/js/myjs/userDetails.js"></script>
	<script src="/dist/js/myjs/projectConstants.js"></script>
	<script src="/dist/js/myjs/showmore_or_showless.js"></script>
	<script src="/dist/js/myjs/internship_schedule.js"></script>
	<script src="/dist/js/myjs/sendinternshipGroup.js"></script>
	<script src="/dist/js/myjs/companyadvforcollege.js"></script>
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
	
	$( document ).ready(function() {
		getnextAdvertisement(0,0);
	});
	function getCompany(compid) {
		alert()
		$.ajax({
			type:"GET",
			url : "getCompanyDetails?company_id="+compid,
			success : function(response) {
				alert(response)
			},
			error: function() {
			}
		});  
	}
	
	</script>
	<script>
		document.addEventListener("DOMContentLoaded", function() {
			var modal = document.getElementById("raised_Modal2");
			var btn = document.getElementById("applyButton");
	
			btn.onclick = function() {
				modal.classList.add("show");
				modal.style.display = "block";
			}
		});
	</script>
	
</body>
</html>