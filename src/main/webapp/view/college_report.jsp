
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Basic Page Info -->
<meta charset="utf-8">
<title>SkillPilots | College Report</title>

<!-- Site favicon -->
<link rel="apple-touch-icon" sizes="180x180" href='/dist/dash/vendors/images/apple-touch-icon.png'>
<link rel="icon" type="image/png" sizes="16x16" href='/dist/dash/vendors/images/favicon.ico'>

<!-- Mobile Specific Metas -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap"
	rel="stylesheet">
<!-- CSS -->
<link rel="stylesheet" type="text/css" href='/dist/dash/vendors/styles/core.css'>
	<link rel="stylesheet" type="text/css" href='/dist/dash/vendors/styles/icon-font.min.css'>
	<link rel="stylesheet" type="text/css" href='/dist/dash/vendors/styles/style.css'>
<link href="/dist/css/live_chat.css" rel="stylesheet"
	type="text/css" />
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
	.parameter {
    padding: 0;
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
.bootstrap-select .dropdown-toggle {
    height: 35px;
    padding-right: 30px;
    font-size: 14px;
    font-weight: 400;
}
label {
    min-width: 25%;
    max-width: 0%;
    color: #1974c3;
    display: contents;
    margin-bottom: .5rem;
}
#style-3::-webkit-scrollbar-track
{
	-webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
	background-color: #F5F5F5;
}

#style-3::-webkit-scrollbar
{
	width: 6px;
	background-color: #F5F5F5;
}

#style-3::-webkit-scrollbar-thumb
{
	background-color: #c1c1c1;
}
#div_location::-webkit-scrollbar-track
{
	-webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
	background-color: #F5F5F5;
}

#div_location::-webkit-scrollbar
{
	width: 6px;
	background-color: #F5F5F5;
}

#div_location::-webkit-scrollbar-thumb
{
	background-color: #c1c1c1;
}
#div_tech::-webkit-scrollbar-track
{
	-webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
	background-color: #F5F5F5;
}

#div_tech::-webkit-scrollbar
{
	width: 6px;
	background-color: #F5F5F5;
}

#div_tech::-webkit-scrollbar-thumb
{
	background-color: #c1c1c1;
}
#div_dept::-webkit-scrollbar-track
{
	-webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
	background-color: #F5F5F5;
}

#div_dept::-webkit-scrollbar
{
	width: 6px;
	background-color: #F5F5F5;
}

#div_dept::-webkit-scrollbar-thumb
{
	background-color: #c1c1c1;
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
				</div>
			</c:if>
		</c:if>
		<%-- <c:if test="${user_data.role eq '1'}">
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
		</c:if> --%>
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
		<div>
		<div class="title pb-20">
				<h4 class="h4 mb-0 text-center" style="color: white;background: #0f2c7eeb;border-radius: 5px;">College Internship's Report</h4>
			</div>
			<div class="page-header">
				<div class="row">
					<div class="col-md-4 col-sm-12">
						<c:if test="${role eq ProjectConstants.iii_Role}">
								<div class="form-group parameter">
									<label>Departments</label>
									<select id="department">
										<option selected value="">--Select Departments--</option>
										<c:forEach items="${dept_data}" var="dept">
												<option value="${dept[0]}">${dept[1]}</option>
										</c:forEach>
									</select>
								</div>
							</c:if>
							<c:if test="${role ne ProjectConstants.iii_Role}">
								<input type="hidden" id="department" value="${dept_data}">
							</c:if>
					</div>
					<div class="col-md-4 col-sm-12">
						<div class="form-group parameter">
							<label>Status</label>
								<select id="status">
									<option value="">--Select Status--</option>
									<option value="${ProjectConstants.internships_status_pending}">Pending</option>
									<option value="${ProjectConstants.internships_status_ongoing}">Ongoing</option>
									<option value="${ProjectConstants.internships_status_completed}">Completed</option>
									<option value="${ProjectConstants.internships_status_cancelled}">Cancelled</option>
								</select>
						</div>
					</div>
					<div class="col-md-4 col-sm-12">
						<div class="form-group parameter">
							<label>Skill</label>
								<select id="technology">
									<option selected value="">--Select Skill--</option>
									<c:forEach items="${technology_data}" var="tech">
										<option value="${tech}">${tech}</option>
									</c:forEach>
								</select>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4 col-sm-12">
						<div class="form-group parameter">
							<label>Duration</label>
								<select id="duration">
									<option value="">--Select no of Weeks--</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									<option value="11">11</option>
									<option value="12">12</option>
									<option value="16">16</option>
									<option value="20">20</option>
									<option value="24">24</option>
									<option value="32">32</option>
									<option value="40">40</option>
									<option value="52">52</option>
								</select>
						</div>
					</div>
					<div class="col-md-4 col-sm-12">
						<div class="form-group parameter">
							<label>Industry</label>
								<select id="industry">
									<option selected value="">--Select Industry--</option>
									<c:forEach items="${industry_data}" var="ind">
										<option value="${ind[1]}">${ind[0]}</option>
									</c:forEach>
								</select>
						</div>
					</div>
					<div class="col-md-4 col-sm-12">
						<div class="form-group parameter text-center radio">
							<label>Internship Dates</label><br>
							<label style="color: black;"><input type="radio" name="internship_dates" value="started_bet">&nbsp;Started Between</label>
							<label style="color: black;"><input type="radio" name="internship_dates" value="ended_bet">&nbsp;Ended Between</label><br>
							<label style="color: black;"><input type="radio" name="internship_dates" value="complete_bet" style="margin-top: 10px;">&nbsp;Complete Internship Between</label>
						</div><br>
						<div id="report_dates" style="display:none;">
									<input id="from_date" data-date-format='yyyy-mm-dd' style="width: 45%;margin: 5px;" 
										placeholder="From Date" readonly='true'/>
									<input id="to_date" data-date-format='yyyy-mm-dd' style="width: 45%;margin: 5px;"
										placeholder="To Date" readonly='true'/>
								</div>
				</div>
			</div>
			<div class="parameter" style="text-align:center">
						<input type="button" value="Generate" id="generate_report"
							class="btn btn-success btn-sm" onclick="view_report()" />
					</div>
		</div>
	</div>
		<div>
			<div class="page-header table-responsive scrollbar force-overflow"
							id="style-3" style="margin-bottom: 8px;padding:0px;max-height:373px; overflow:auto;">
				<table style="width: 100%;" class="table resp_data_table nowrap">
					<thead class="thead-light">
						<tr>
							<th>Student</th>
							<th>Team/Dept.</th>
							<th>Industry</th>
							<th>Duration</th>
							<th>Skill</th>
							<th>Start Date</th>
							<th nowrap="nowrap">Completion Date</th>
							<th>Status</th>
						</tr>
					</thead>
					<tbody id="interns_data" style="white-space: nowrap"></tbody>
				</table>
				<!--End data table-->
				<div id="no_data">
					<center>
						<b>Select some parameters and generate your Internship report.
						</b>
					</center>
				</div>
			</div>
			<center>
					<a href="#" id="download_pdf" onclick="view_report()" style="background: #28a745;color: white;padding: 3px 8px 3px 8px;border-radius: 4px;">Download PDF</a>
				</center><br>
			<%@include file="modal_common.jsp"%>
			<!-- <div class="footer-wrap pd-20 mb-20 card-box" style="position: fixed; bottom: 0%; width: 79%;">
				<i class="fa fa-copyright" style="font-size: 17px; color: red"></i>
				<script>
					document.write(new Date().getFullYear())
				</script>
				All Rights Reserved SkillPilots | Designed & Developed By <a
					href="https://www.cluematrix.com/" target="_blank"
					style="color: #2800b4;">Cluematrix</a> Technologies Pvt.Ltd.
			</div> -->
		</div>
	</div>
	
	<!-- js -->
	<%@include file="scriptfiles.jsp"%>
	<script src="/dist/js/myjs/common.js"></script>
	<script src="/dist/js/myjs/projectConstants.js"></script>
	<script src="/dist/dash/vendors/scripts/core.js"></script>
	<script src="/dist/dash/vendors/scripts/script.min.js"></script>
	<script src="/dist/dash/vendors/scripts/process.js"></script>
	<script src="/dist/dash/vendors/scripts/layout-settings.js"></script>
	<script type="text/javascript">
	$('#from_date').datepicker({
		uiLibrary : 'bootstrap4',
		autoclose : true,
		dateFormat : 'yy-mm-dd',
		todayHighlight : true
	});

	$('#to_date').datepicker({
		uiLibrary : 'bootstrap4',
		autoclose : true,
		dateFormat : 'yy-mm-dd',
		todayHighlight : true
	});
	
	$("#datepicker1").hover(function() {
		$("#datepicker1").prop('title', '');
	});
	
	var selected_date_option;
	$('input[type=radio][name=internship_dates]').click(function(){
		if (!$("input[type='radio']:checked").val()) {
			alert("Select type of input date first.");
		}else{
			if($("input[type='radio']:checked").val()!=selected_date_option){
				selected_date_option = $("input[type='radio']:checked").val(); 
				$("#report_dates").show();
			}else{
				$("#report_dates").hide();
				$("input[type='radio']:checked").removeAttr('checked');
				selected_date_option = '';
			}
		}
	});
	
	function view_report() {
		/* if ($("#department").val() == "" && $("#technology").val() == ""
		&& $("#status").val() == "" && $("#industry").val() == "" && $("#duration").val() == ""
		&& $("#from_date").val() == "" && $("#to_date").val() == "")
		alert("Please select at-least one parameter."); */
		if(($("input[type='radio']:checked").val()) && ($("#from_date").val() == "" || $("#to_date").val() == "")){
			alert("Please select From and To dates.");
			return;
		}
		$.ajax({
			type : "GET",
			dataType : 'json',
			url : "get_college_report?department="+$("#department").val()+"&technology="+$("#technology").val()
				+"&internship_status="+$("#status").val()+"&industry="+$("#industry").val()+"&duration="+$("#duration").val()
				+"&date_type="+$("input[type='radio']:checked").val()+"&fromdate="+$("#from_date").val()+"&todate="+$("#to_date").val(),
			success : function(response) {
				$("#interns_data").empty();
				$("#no_data").empty();
				if (response.student_data != undefined && response.student_data.length>0){
						for (var i = 0; i < response.student_data.length; i++) {
							var row = "<tr>";
							row += "<td><span>"+response.student_data[i][18]+"</span></td>";
							row += "<td><span>"+response.student_data[i][16]+"</span></td>";
							row += "<td><span>"+response.student_data[i][20]+"</span></td>";
							row += "<td><span>"+response.student_data[i][10]+"</span></td>";
							row += "<td><span>"+response.student_data[i][12]+"</span></td>";
							row += "<td><span>"+response.student_data[i][13]+"</span></td>";
							if(response.student_data[i][14]!=null)
								row += "<td><span>"+response.student_data[i][14]+"</span></td>";
							else
								row += "<td><span>-</span></td>";
							if(response.student_data[i][11]==internships_status_pending)
								row += "<td><span>Pending</span></td></tr>";
							else if(response.student_data[i][11]==internships_status_ongoing)
								row += "<td><span>Ongoing</span></td></tr>";
							else if(response.student_data[i][11]==internships_status_completed)
								row += "<td><span>Completed</span></td></tr>";
							else if(response.student_data[i][11]==internships_status_cancelled)
								row += "<td><span>Cancelled</span></td></tr>";
							$("#interns_data").append(row);
						}
						$("#download_pdf").attr("onclick", 'download_pdf()');
						$("#download_pdf").attr("title","");
					}else{
						$("#no_data").append("<center><b>No Internship Data Found</b></center>");
						$("#download_pdf").attr("onclick", '');
						$("#download_pdf").attr("title","No Internship data found to be added the the PDF.");
						$("#download_pdf").attr("href", '#');
					}
			},error : function() {
				alert(error_fetch);
			}
		});
	}

	function download_pdf() {
		var url = "collegepdfdownload?department="+$("#department").val()+"&technology="+$("#technology").val()
			+"&internship_status="+$("#status").val()+"&industry="+$("#industry").val()+"&duration="+$("#duration").val()
			+"&date_type="+$("input[type='radio']:checked").val()+"&fromdate="+$("#from_date").val()+"&todate="+$("#to_date").val();
		$("#download_pdf").attr("href", url);
	}
	</script>
</body>
</html>