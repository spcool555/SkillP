
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- Basic Page Info -->
<meta charset="utf-8">
<title>SkillPilots | Internship Requests</title>

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
    .dataTable{
    	white-space: nowrap;
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
		</div>
	</div>
	<div class="mobile-menu-overlay"></div>

	<div class="main-container">
		<div class="xs-pd-20-10 pd-ltr-20">

			<div class="title pb-20 text-center">
			<h4 class="h4 mb-0 text-center" style="color: white;background: #0f2c7eeb;border-radius: 5px;">Internship Request</h4>
			</div>
			<div class="card-box mb-30">
					<div class="pd-20">
						<c:if test="${not empty external_requests}">
							<table class="data-table table hover">
								<thead class="thead-light">
									<tr>
										<th class="table-plus datatable-nosort">Request ID</th>
										<th>Institute Name</th>
										<th>Request Date</th>
										<th>Interns Group</th>
										<th>Status/Action</th>
										<th>Expiration Date</th>
										<th>Request Message</th>
									</tr>
								</thead>
								<tbody id="tablist">
									<!-- today Date -->
									<jsp:useBean id="now" class="java.util.Date" />
									<c:forEach items="${external_requests}" var="external_request">
										<tr>
											<td>${external_request[0]}</td>
											<td><span class="pointer" id="${external_request[2]}"
												onclick="getCollegeDetails('${external_request[12]}',false);">
													${external_request[13]}</span></td>
											<td><span><fmt:formatDate
														value="${external_request[3]}"
														pattern="${ProjectConstants.date_format}" /></span></td>
											<td><span class="pointer intrngrp"
												onclick="studentId(this);" data-toggle="modal"
												data-target="#all_interns_details"
												id="${external_request[4]}"> <strong style="color: #1b00ff;">Group
														Details</strong>
											</span></td>
											<td><c:if
													test="${external_request[5] eq ProjectConstants.external_req_approval_status_assigned}">
													<b><span style="color: #ffffff; background: #13aef5;padding: 3px 7px 3px 7px;border-radius: 4px;"><i class="fa fa-check-circle" style="color: greenyellow;"></i>&nbsp;Team Assigned</span></b>
													<%-- <a class="btn btn-warning " onclick="assigned_test('${external_request[0]}','${external_request[1]}')" data-toggle="collapse" data-target="#collapse${student[0]}">Test Assigned <i class="fa fa-sort-desc" aria-hidden="true"></i>
														</a> --%>
												</c:if> <c:if
													test="${external_request[5] eq ProjectConstants.external_req_approval_status_approved}">
													<b><span style="color: #ffffff;background: #0ea6ea;padding: 6px 7px 6px 5px;border-radius: 4px;">Approved</span></b>
													<a class="btn btn-primary mb-1" data-toggle="collapse" style="background: #5ac323c7;border-color: #7ed053;color: white;padding: 1px 6px 2px 6px;"
														data-target="#s${external_request[0]}"> Assign<i
														class="fa fa-sort-desc" aria-hidden="true" style="padding: 0 0px 4px 4px;"></i>
													</a>
													<div id="s${external_request[0]}" class="collapse">
														<div class="col-sm-12 form-inline"
															style="width: 100%; border: 1px solid; border-color: #1974c3; background-color: #317c9e40; padding: 10px;">
															<p class="form-inline" style="width: 100%">
																<b>Team :&nbsp;</b> <select class="selectteam form-control"
																	id="teamToAssign${external_request[0]}" style="width: 180px;height: 33px;margin-left: 17px;">
																	<option value="-1" selected="selected" 
																		disabled="disabled">Select a Team</option>
																	<c:forEach var="team" items="${listDept_name}">
																		<option id="${team.comp_dept_link_id}"
																			value="${team.dept_name}">${team.dept_name}</option>
																	</c:forEach>
																</select>
															</p>
															<p class="form-inline">
																<b>Skill: </b>
																<c:if test="${empty external_request[8]}">
																	<select id="tech${external_request[0]}" class="form-control"
																		style="padding: 4px; margin-left: 4px;">
																		<option value="-1">Select a Skill</option>
																		<c:forEach var="technology" items="${technologylist}">
																			<option value="${technology.technology_name}">
																				${technology.technology_name}</option>
																		</c:forEach>
																	</select>
																</c:if>
																<c:if test="${not empty external_request[8] }">
																	<input id="tech${external_request[0]}" class="form-control" style="width: 180px;margin-left: 34px;height: 33px;"
																		value='${external_request[8]}'
																		disabled="disabled">
																</c:if>
															</p>
															<p class="form-inline">
																<b>Duration: </b>
																<c:if test="${external_request[9] eq 0}">
																	<select id="duration${external_request[0]}" class="form-control">
																		<option value="0" selected="selected"
																			disabled="disabled">Select Duration</option>
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
																	<span>&nbsp;Week's</span>
																</c:if>
																<c:if test="${external_request[9] ne 0}">
																	<input id="duration${external_request[0]}" class="form-control" style="width: 50px; margin-left: 4px; height: 33px;"
																		value='${external_request[9]}'
																		disabled="disabled"> week(s)
																</c:if>
															</p>
															<button class="btn btn-primary btn-sm" style="background: #5ac323c7;color: white;padding: 1px 6px 2px 6px;margin-left: 13px;margin-bottom: 16px;"
																style="margin: 0px !important; border-radius: 10pc !important; position: absolute; left: 75%; top: 60%;"
																onclick="checkAvailabiltyOfInterns('${external_request[0]}');">
																Assign</button>
														</div>
													</div>
												</c:if> <c:if
													test="${external_request[5] eq ProjectConstants.external_req_approval_status_cancelled}">
													<b><span class="Rcolor">Canceled</span></b>
												</c:if> <c:if
													test="${external_request[5] eq ProjectConstants.external_req_approval_status_rejected}">
													<span class="tooltip">Rejected <span
														class="tooltiptext">${external_request[7]}</span>
													</span>
													<span class="label label-success pointer"
														onclick="undoExtReqRejection('${external_request[0]}');"
														style="margin-right: 5%; float: right; padding: 5px;background: #317c9e96;color: white;border-radius: 5px;"><i
														class="fa fa-undo" aria-hidden="true"></i> UNDO</span>
												</c:if> <c:if
													test="${external_request[5] eq ProjectConstants.request_cancelled_by_system}">
													<b><span
														title="Internship started in some other company.">Cancelled</span></b>
												</c:if> <c:if
													test="${external_request[5] eq ProjectConstants.external_req_approval_status_pending}">
													<c:if
														test="${external_request[5]  eq ProjectConstants.external_req_approval_status_pending && now gt external_request[11] }">
														<b><span class="Rcolor">Canceled Request </span></b>
													</c:if>
													<c:if
														test="${external_request[5]  eq ProjectConstants.external_req_approval_status_pending && now le external_request[11] }">
														<c:if test="${compTestFlag=='Y' || compTestFlag=='y'}">
															<span class="label label-success pointer" style="background: #0e9dde;color: white;padding: 3px 5px 7px 8px;border-radius: 3px;"
																onclick="viewTests('${external_request[0]}','${external_request[5]}');">
																Assign Test
															</span>
														</c:if>&nbsp;

														<a class="btn btn-primary" style="background: #5ac323c7;color: white;padding: 2px 6px 2px 6px;border: aliceblue;"
															href="ext_req_status_change?status=${ProjectConstants.external_req_approval_status_approved}&req_id=${external_request[0]}&stud_list=">
															Approve</a>
														<button class='btn btn-danger' data-toggle="modal" style="background: red;color: white;padding: 1px 6px 1px 6px;"
															data-target="#rejectModelfor_External_req"
															onclick="rejectReqId('${external_request[0]}');">Reject</button>
													</c:if>
												</c:if> <c:if
													test="${external_request[5] eq ProjectConstants.external_req_approval_status_test_assigned}">
													<c:if test="${compTestFlag=='Y' || compTestFlag=='y'}">
														<c:forEach items="${assigned_status}" var="status">
															<c:if test="${status.key eq external_request[0]}">
																<c:if
																	test="${status.value eq ProjectConstants.student_test_data_status_pending}">
																	<span class="label" style="background: #4fc0f3;padding: 3px 4px 7px 7px;border-radius: 3px;">Test Assigned&nbsp;</span>
																	<i class="fa fa-pencil" aria-hidden="true"
																		onclick="viewTests('${external_request[0]}','${external_request[5]}');"></i>
																</c:if>
																<c:if test="${status.value eq 'AP'}">
																	<span class="label label-info pointer"
																		style="color: #36be60;"
																		onclick="viewResultsOfStud('${external_request[4]}','${external_request[0]}')">Check
																		Test Status</span>
																</c:if>
																<c:if test="${status.value eq 'exp'}">
																	<span class="label label-info pointer">Test
																		Expired</span>
																	<i class="fa fa-pencil" aria-hidden="true"
																		onclick="viewTests('${external_request[0]}','exp_external');"></i>
																</c:if>
															</c:if>
														</c:forEach>
													</c:if>
												</c:if></td>
												<td>${external_request[11]}</td>
											<td>${external_request[6]}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</c:if>
					</div></div>
					<div class="card-box mb-30">
					<div class="pd-20">
						<c:if test="${not empty studentRequestList }">
							<table class="data-table table hover">
								<thead class="thead-light">
									<tr>
										<th>Request ID</th>
										<!-- <th>Student Details</th> -->
										<th>Apply for Skill</th>
										<th>Apply To</th>
										<th>Expiration Date</th>
										<th>Status/Action</th>
										<th>Request Message</th>
										<th>Note from College</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${studentRequestList}" var="student">
										<tr>
											<td>${student[0]}</td>
											<%-- <td><span class="pointer actionSpan" data-toggle="modal"
												data-target="#studentDetailsModal"
												onclick="dispStudentData('${student[1]}');">${student[10]}</span></td> --%>
												<%-- <td>${ }</td> --%>
											<td id="${student[2]}">${student[2]}</td>
											<td><fmt:formatDate value="${student[7]}"
													pattern="${ProjectConstants.date_format}" /></td>
											<td><fmt:formatDate value="${student[8]}"
													pattern="${ProjectConstants.date_format}" /></td>
											<td><c:if
													test="${student[3] eq ProjectConstants.student_req_approval_status_pending && not empty student[7]}">
													<c:if test="${compTestFlag=='Y' || compTestFlag=='y'}">
														<span class="label label-success pointer" style="background: #10ea2b80;padding: 3px 5px 5px 4px;border-radius: 4px;"
															onclick="viewTests('${student[0]}','${student[3]}');"><i
															class="fa fa-file-text" aria-hidden="true"></i> Assign
															Test</span>
													</c:if>
													<span class="label label-success pointer" style="background: #10ea2b80;padding: 3px 5px 5px 4px;border-radius: 4px;"
														onclick="approve('${student[0]}');"><i
														class="fa fa-check" aria-hidden="true"></i> Approve</span>
													<span id="reject_btn" class="label label-danger pointer"
														data-toggle="modal" data-target="#student_req_reject" style="background: red;padding: 3px 5px 5px 4px;border-radius: 4px;"
														onclick="setRejection_id('${student[0]}');"> <i
														class="fa fa-times" aria-hidden="true"></i> Reject
													</span>
												</c:if> <c:if
													test="${student[3] eq ProjectConstants.student_req_approval_status_rejected}">
													<span class="label label-danger tooltip" style="opacity:1; background: red;padding: 3px 5px 3px 5px;color:white; border-radius: 4px;left: 602px;">Rejected By <span
														class="tooltiptext">${student[4]}</span></span>
													<span class="btn btn-primary btn-sm"
														onclick="undoRejection('${student[0]}');"
														style="padding: 2px 6px 2px 6px;background: #1b00ff;color: white;border-radius: 4px;float: right;"><i
														class="fa fa-undo fa-spin" aria-hidden="true" style="color: #13fd13;"></i> UNDO</span>
												</c:if> <c:if
													test="${student[3] eq ProjectConstants.student_req_approval_status_team_assigned}">
													<span class="label label-success">Team Assigned</span>
												</c:if> <!-- -------------start of assign button code--------------- -->
												<c:if
													test="${student[3] eq ProjectConstants.student_req_approval_status_approved || (empty student[7] && student[3] eq ProjectConstants.student_req_approval_status_pending)}">
													<a class="btn btn-success btn-sm" data-toggle="collapse" style="padding: 3px;color: white;"
														data-target="#collapse${student[0]}">Assign <i
														class="fa fa-sort-desc" aria-hidden="true"></i>
													</a>
													<span id="reject_btn" class="label label-danger pointer" style="background: red;padding: 4px 3px 8px 3px;color: white;border-radius: 4px;" 
														data-toggle="modal" data-target="#student_req_reject"
														onclick="setRejection_id('${student[0]}');"><i
														class="fa fa-times" aria-hidden="true"></i> Reject</span>
													<div id="collapse${student[0]}" class="collapse" style="padding-top: 4px;">
														<div class="col-sm-12 form-inline"
															style="width: 100%; border: 1px solid; border-color: #1974c3; background-color: #317c9e40; padding: 10px;">
															<p class="form-inline" style="width: 100%">
																<b>Team :&nbsp;</b> <select class="selectteam form-control" 
																	id="teamToAssign${student[0]}" style="width: 150px;height: 33px;">
																	<option value="-1" selected="selected"
																		disabled="disabled">Select a Team</option>
																	<c:forEach var="team" items="${listDept_name}">
																		<option id="${team.comp_dept_link_id}"
																			value="${team.dept_name}">${team.dept_name}</option>
																	</c:forEach>
																</select>
															</p>
															<p class="form-inline">
																<b>Duration :&nbsp;</b>
																<c:if test="${empty student[9] || student[9]==0}">
																	<select id="duration${student[0]}" class="form-control">
																		<option value="0" selected="selected"
																			disabled="disabled">Select Duration</option>
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
																	<span> week(s)</span>
																</c:if>
																<c:if test="${student[9]>0}">
																	<input id="duration${student[0]}" class="form-control"
																		value='${student[9]}' disabled="disabled">&nbsp;week(s)
																</c:if>
															</p>
															<p class="form-inline">
																<b>Skill: </b>
																<c:if test="${empty student[2]}">
																	<select id="tech${student[0]}" class="form-control"
																		style="padding: 4px; margin-left: 4px;">
																		<option value="-1">Select a Skill</option>
																		<c:forEach var="technology" items="${technologylist}">
																			<option value="${technology.technology_name}">${technology.technology_name}</option>
																		</c:forEach>
																	</select>
																</c:if>
																<c:if test="${not empty student[2] }">
																	<input id="tech${student[0]}" style="height: 1%;" class="form-control"
																		value='${student[2]}' disabled="disabled">
																</c:if>
															</p>
															<button class="btn btn-primary btn-xs"
																id="assignBtn${student[0]}"
																style="margin: 0px !important; border-radius: 4px!important; position: absolute;padding: 0px 7px 3px 7px; left: 70%; top: 65%;"
																onclick="assignTeamToStudent('${student[0]}');">Assign</button>
														</div>
													</div>
												</c:if> <!-- -------------end of assign button code--------------- -->
												<c:if
													test="${student[3] eq ProjectConstants.student_req_approval_status_iii_approval && not empty student[7]}">
													<span class="label label-info">Pending At T&P</span>
												</c:if> <c:if
													test="${student[3] eq ProjectConstants.student_req_approval_status_hod_approval && not empty student[7]}">
													<span class="label label-info" style="padding: 3px 3px 3px 3px;border-radius: 3px;color: white;">Pending At HOD</span>
												</c:if> <c:if
													test="${student[3] eq ProjectConstants.request_cancelled_by_system}">
													<span class="label label-info"
														title="Internship started in some other company.">Cancelled</span>
												</c:if> <c:if
													test="${student[3] eq ProjectConstants.student_req_approval_status_test_assigned}">
													<c:if test="${compTestFlag=='Y' || compTestFlag=='y'}">
														<input type="hidden" id="student_test_id">
														<c:forEach items="${assigned_status}" var="status">
															<c:if test="${status.key eq student[0]}">
																<c:if test="${status.value eq 'test'}">
																	<span class="label pointer" style="background: #0fea0b85;padding: 4px 4px 4px 4px;border-radius: 4px;">Test
																		Assigned</span>
																	<i class="fa fa-pencil" aria-hidden="true"
																		onclick="viewTests('${student[0]}','${student[3]}');"></i>
																</c:if>
																<c:if test="${status.value eq 'exp'}">
																	<span class="label label-info pointer" style="background: red;color: white;padding: 2px 4px 3px 4px;border-radius: 3px;">Test
																		Expired</span>
																	<i class="fa fa-pencil-square-o" aria-hidden="true" style="color: #1b00ff;font-size: 17px;"
																		onclick="viewTests('${student[0]}','exp_student');"></i>
																</c:if>
															</c:if>
														</c:forEach>

													</c:if>
												</c:if> <c:if
													test="${student[3] eq ProjectConstants.student_req_approval_status_result_declared}">
													<c:if test="${compTestFlag=='Y' || compTestFlag=='y'}">
														<span class="label label-info pointer" style="padding: 3px 5px 3px 5px;border-radius: 3px;color: white;"
															onclick="view_testresult('${student[0]}','${student[1]}')">View
															Result</span>
													</c:if>
												</c:if></td>
											<td>${student[5]}</td>
											<td>${student[12]}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</c:if>
					</div>
				</div>
	<%@include file="modal_common.jsp"%>		
	<%@include file="modal.jsp"%>
	<%@include file="modalStudentDetails.jsp"%>
	<%@include file="setTest.jsp"%>
	
	<%@include file="testResult.jsp"%>
	
			<%@include file="footer.jsp"%>
		</div>
	</div>
	<!-- js -->
	<%@include file="scriptfiles.jsp"%>
	<script src="/dist/js/myjs/companyCollegeExternalReq.js"></script>
	<script src="/dist/js/myjs/student_internship_request_to_comapny.js"></script>
	<script src="/dist/js/myjs/onlineTestScript.js"></script>
	<script src="/dist/js/myjs/userDetails.js"></script>
	<script src="/dist/js/myjs/form_elements.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
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
	<script src="/dist/dash/src/plugins/switchery/switchery.min.js"></script>
	<script src="/dist/dash/src/plugins/bootstrap-tagsinput/bootstrap-tagsinput.js"></script>
	<script src="/dist/dash/vendors/scripts/datatable-setting.js"></script>
	
	<script type="text/javascript">
		//set id on model
		function setRejection_id(id) {
			$('#txt_request_id').val(id);
		}
		function rejectReqId(req_id) {
			$('#rejection_id').val(req_id);
		}

		function assigned_test(request_id, student_id) {
			console.log("Req Id :" + request_id);
			console.log("Instu Id :" + student_id);
			$.ajax({
				type : "GET",
				url : "getAssignedTestName?request_id=" + request_id,
				success : function(response) {
					$("#student_test_id").val(response[0]);
					$("#test_name_" + student_id).text(response[1]);
					$(".assigned_test_name" + request_id).tooltip({
						title : response[1]
					});
				},
				error : function() {
					alert('not assigned');
				}
			});
		}
	</script>
</body>
</html>