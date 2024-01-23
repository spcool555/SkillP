<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<!DOCTYPE html>
		<html>

		<head>
			<!-- Basic Page Info -->
			<meta charset="utf-8">
			<title>SkillPilots | Manage Teams</title>

			<!-- Site favicon -->
			<link rel="apple-touch-icon" sizes="180x180" href="/dist/dash/vendors/images/apple-touch-icon.png">
			<link rel="icon" type="image/png" sizes="16x16" href="/dist/dash/vendors/images/favicon.ico">

			<!-- Mobile Specific Metas -->
			<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

			<!-- Google Font -->
			<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap"
				rel="stylesheet">
			<!-- CSS -->
			<link rel="stylesheet" type="text/css" href="/dist/dash/vendors/styles/core.css">
			<link rel="stylesheet" type="text/css" href="/dist/dash/vendors/styles/icon-font.min.css">
			<link rel="stylesheet" type="text/css"
				href="/dist/dash/src/plugins/datatables/css/dataTables.bootstrap4.min.css">
			<link rel="stylesheet" type="text/css"
				href="/dist/dash/src/plugins/datatables/css/responsive.bootstrap4.min.css">
			<link rel="stylesheet" type="text/css" href="/dist/dash/vendors/styles/style.css">
			<link rel="stylesheet"
				href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.0/jquery-confirm.min.css"
				integrity="sha512-JdK5FqWm6zRt5GSmEJT7M4HpaGAiod0U3kLehOSz1NKpbL3QS7rHrcw2hvTwM8hKteBjyn7yzLCFzJE1F3+90w=="
				crossorigin="anonymous" referrerpolicy="no-referrer" />
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
				.form-group {
					margin-bottom: 8px;
				}

				.fade:not(.show) {
					opacity: 1;
				}

				.sidebar-menu .dropdown-toggle {
					padding: 15px 12px 15px 54px !important;
					font-size: 15px !important;
				}

				.user-notification .dropdown-toggle .badge {
					position: absolute;
					right: 5px;
					top: 7px;
					background: #0f2c7eeb;
					width: 5px;
					height: 5px;
					display: block;
					padding: 0;
				}

				.notification-list ul li a {
					display: block;
					position: relative;
					padding: 0px 15px 1px 7px !important;
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
						<img src="/dist/dash/vendors/images/deskapp-logos.svg" alt="">
					</div>
					<div class='loader-progress' id="progress_div">
						<div class='bar' id='bar1'></div>
					</div>
					<div class='percent' id='percent1'>0%</div>
					<div class="loading-text">Loading...</div>
				</div>
			</div>

			<%@include file="header.jsp" %>

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
								<a href="javascript:void(0);" class="btn btn-outline-primary header-white">White</a> <a
									href="javascript:void(0);"
									class="btn btn-outline-primary header-dark active">Dark</a>
							</div>

							<h4 class="weight-600 font-18 pb-10">Sidebar Background</h4>
							<div class="sidebar-btn-group pb-30 mb-10">
								<a href="javascript:void(0);" class="btn btn-outline-primary sidebar-light ">White</a>
								<a href="javascript:void(0);"
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
						<a href="javascript:;"> <img src='/dist/dash/vendors/images/deskapp-logo.svg' alt=""
								class="dark-logo">
							<img src='/dist/dash/vendors/images/skillpilot_white.svg' alt="" class="light-logo">
						</a>
						<div class="close-sidebar" data-toggle="left-sidebar-close">
							<i class="ion-close-round"></i>
						</div>
					</div>
					<%-- <c:if test="${user_data.role eq '1'}"> --%>
						<div class="menu-block customscroll">
							<div class="sidebar-menu">
								<ul id="accordion-menu">
									<li><a href="company_dashboard" class="dropdown-toggle no-arrow">
											<span class="micon dw dw-house-1"></span><span
												class="mtext">Dashboard</span>
										</a></li>
									<li><a href="company_internships" class="dropdown-toggle no-arrow">
											<span class="micon dw dw-certificate"></span><span
												class="mtext">Internships</span>
										</a></li>
									<li><a href="company_posts" class="dropdown-toggle no-arrow">
											<span class="micon dw dw-computer"></span><span class="mtext">Manage
												Advertisements</span>
										</a></li>
									<li><a href="external_internship_request_company" class="dropdown-toggle no-arrow">
											<span class="micon dw dw-computer-1"></span><span class="mtext">External
												Request</span>
										</a></li>
									<li><a href="company_internal_request" class="dropdown-toggle no-arrow">
											<span class="micon dw dw-computer-1"></span><span class="mtext">Internal
												Request</span>
										</a></li>
									<li><a href="college_tie_up" class="dropdown-toggle no-arrow">
											<span class="micon dw dw-repeat-1"></span><span class="mtext">Institute
												Tie-Ups</span>
										</a></li>
									<li><a href="add_company_member" class="dropdown-toggle no-arrow">
											<span class="micon dw dw-user-11"></span><span class="mtext">Manage
												Teams</span>
										</a></li>
									<li><a href="company_online_test" class="dropdown-toggle no-arrow">
											<span class="micon dw dw-personal-computer"></span><span
												class="mtext">Manage Test</span>
										</a></li>
									<li><a href="companyTransactions" class="dropdown-toggle no-arrow">
											<span class="micon dw dw-money-2"></span><span class="mtext">Balances</span>
										</a></li>
									<li><a href="company_report" class="dropdown-toggle no-arrow">
											<span class="micon dw dw-file3"></span><span class="mtext">Internship
												Reports</span>
										</a></li>
									<li><a href="certificate" class="dropdown-toggle no-arrow">
											<span class="micon dw dw-certificate-1"></span><span
												class="mtext">Certificates</span>
										</a></li>
								</ul>
							</div>
						</div><%-- </c:if> --%>
							<%-- <c:if test="${user_data.role eq '2'}"> --%>
								<c:set var="theString" value="${user_data.institute_id }" />
								<c:if test="${fn:contains(theString, 'CP')}">
									<div class="menu-block customscroll">
										<div class="sidebar-menu">
											<ul id="accordion-menu">
												<li><a href="company_dashboard" class="dropdown-toggle no-arrow">
														<span class="micon dw dw-house-1"></span><span
															class="mtext">Dashboard</span>
													</a></li>
												<li><a href="company_internships" class="dropdown-toggle no-arrow">
														<span class="micon dw dw-certificate"></span><span
															class="mtext">Internships</span>
													</a></li>
												<li><a href="company_internal_request" class="dropdown-toggle no-arrow">
														<span class="micon dw dw-computer-1"></span><span
															class="mtext">Internal Request</span>
													</a></li>
												<li><a href="college_tie_up" class="dropdown-toggle no-arrow">
														<span class="micon dw dw-repeat-1"></span><span
															class="mtext">Institute Tie-Ups</span>
													</a></li>
												<li><a href="add_company_member" class="dropdown-toggle no-arrow">
														<span class="micon dw dw-user-11"></span><span
															class="mtext">Manage Teams</span>
													</a></li>
												<li><a href="live_chat" class="dropdown-toggle no-arrow">
														<span class="micon dw dw-chat3"></span><span class="mtext">Live
															Chat</span>
													</a></li>
											</ul>
										</div>
									</div>
								</c:if><%-- </c:if> --%>
									<%-- <c:if test="${user_data.role eq '3'}"> --%>
										<div class="menu-block customscroll">
											<div class="sidebar-menu">
												<ul id="accordion-menu">
													<li><a href="company_dashboard" class="dropdown-toggle no-arrow">
															<span class="micon dw dw-house-1"></span><span
																class="mtext">Dashboard</span>
														</a></li>
													<li><a href="company_internships" class="dropdown-toggle no-arrow">
															<span class="micon dw dw-certificate"></span><span
																class="mtext">Internships</span>
														</a></li>
													<li><a href="company_internal_request"
															class="dropdown-toggle no-arrow">
															<span class="micon dw dw-computer-1"></span><span
																class="mtext">Internal Request</span>
														</a></li>
													<li><a href="college_tie_up" class="dropdown-toggle no-arrow">
															<span class="micon dw dw-repeat-1"></span><span
																class="mtext">Institute Tie-Ups</span>
														</a></li>
													<li><a href="add_company_member" class="dropdown-toggle no-arrow">
															<span class="micon dw dw-user-11"></span><span
																class="mtext">Manage Teams</span>
														</a></li>
												</ul>
											</div>
										</div>
										<%-- </c:if> --%>
				</div>
				<div class="mobile-menu-overlay"></div>

				<div class="main-container">
					<div class="xs-pd-20-10 pd-ltr-20">
						<%-- <div class="title pb-20 text-center">
							<h2 class="h3 mb-0">Teams</h2>
							<c:if test="${not empty message}">
								<div class="alert alert-danger fade in"
									style="margin-bottom:0px; margin-top:10px; padding:0px">
									<a href="#" class="close" data-dismiss="alert">&times;</a>
									${message}
								</div>
								<%-- </c:if> --%>
					</div>
					<div class="pd-20 card-box" style="margin-bottom: 20px;">

						<h5 class="h4 text-blue mb-20">
							<font style="vertical-align: inherit;">
								<font style="vertical-align: inherit;">Teams</font>
							</font>
						</h5>
						<div class="tab">
							<ul class="nav nav-tabs" role="tablist">
								<li class="nav-item">
									<a class="nav-link active text-blue" data-toggle="tab" href="#activeteam" onclick="showActiveTeam()" role="tab"
										aria-selected="true">
										<font style="vertical-align: inherit;">
											<font style="vertical-align: inherit;">Active</font>
										</font>
									</a>
								</li>
								<li class="nav-item">
									<a class="nav-link text-blue" data-toggle="tab" href="#delteam" onclick="showDelTeam()" role="tab"
										aria-selected="false">
										<font style="vertical-align: inherit;">
											<font style="vertical-align: inherit;">Deleted</font>
										</font>
									</a>
								</li>
							</ul>
							<div class="tab-content">
								<div class="tab-pane fade show active" id="activeteam" role="tabpanel">
									<div class="pd-1">
										<%-- <c:if test="${not empty compTeamLinkList }"> --%>

											<table class="table table-bordered" id="table_comp_team">
												<thead class="thead-light">
													<tr>

														<th></th>
														<th hidden>id</th>
														<th>Team</th>
														<th>Manager</th>
														<th>Internship Lead</th>
													</tr>
												</thead>

												<tbody>
													<c:forEach var="data" items="${userList}">
														<tr>
															<td id="tdRadioSelector_manager" class="manager_radio">
																<input type="radio" name="rowid"
																	id="${collDeptList.coll_dept_link_id}"
																	class="${collDeptListcoll_dept_link_id}"></td>
															<td hidden>${data.id}</td>
															<td>${data.team_name}</td>
															<td>${data.username}</td>
															<td>${data.username}</td>

															<!-- Add more columns as needed -->
														</tr>
													</c:forEach>
												</tbody>
											</table>
											<div class="box-footer clearfix">

												<button class="btn btn-success btn-sm" id="add_team_btn">
													<span class="glyphicon glyphicon-plus"></span> Add Team</button>
												<button type="button" id="change_team" onclick="showForm()"
													class="btn btn-primary btn-sm active_team_action"
													disabled="disabled">Change Manager</button>
												<button type="button" id="cancel_team"
													class="btn btn-danger btn-sm active_team_action"
													disabled="disabled">Remove Team</button>

											</div>
										</div>
									</div>
									<div class="tab-pane fade show " id="delteam" role="tabpane2">
									<div class="pd-1">
										<%-- <c:if test="${not empty compTeamLinkList }"> --%>
									
											<table class="table table-bordered" id="table_comp_team">
												<thead class="thead-light">
													<tr>
									
														<th></th>
														<th hidden>id</th>
														<th>Team</th>
														<th>Manager</th>
														<th>Internship Lead</th>
														
													</tr>
												</thead>
									
												<tbody>
													<c:forEach var="data" items="${userListDeleted}">
														<tr>
															<td id="tdRadioSelector_manager" class="manager_radio">
																<input type="radio" name="rowid" id="${collDeptList.coll_dept_link_id}"
																	class="${collDeptListcoll_dept_link_id}">
															</td>
															<td hidden>${data.id}</td>
															<td>${data.team_name}</td>
															<td>${data.username}</td>
															<td>${data.username}</td>
															
									
															<!-- Add more columns as needed -->
														</tr>
													</c:forEach>
												</tbody>
											</table>
											<input type="button" class="btn btn-success" id="restore_team" value="Restore">
											
									</div>
									</div>
										<div>
											<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog"
												aria-labelledby="deleteModalLabel" aria-hidden="true">
												<div class="modal-dialog" role="document">
													<div class="modal-content">
														<div class="modal-header">
															<input type="hidden" id="delid" name="id">
															<h5 class="modal-title" id="deleteModalLabel">Confirm Delete
															</h5>
															<button type="button" class="close" data-dismiss="modal"
																aria-label="Close">
																<span aria-hidden="true">&times;</span>
															</button>
														</div>
														<div class="modal-body">
															Are you sure you want to remove this Member?
														</div>
														<div class="modal-footer">
															<button type="button" class="btn btn-secondary"
																data-dismiss="modal">Cancel</button>
															<button type="button" class="btn btn-danger">Delete</button>
														</div>
													</div>
												</div>
											</div>

											<div class="modal fade bs-example-modal-lg show" id="addcompmember"
												tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
												aria-modal="true">
												<div class="modal-dialog modal-lg modal-dialog-centered">
													<div class="modal-content">
														<div class="modal-header pb-3" style="background: #0f2c7eeb">
															<h6 class="modal-title" id="myLargeModalLabel"
																style="color: white;">ADD MEMBER</h6>
															<button type="button" class="close" data-dismiss="modal"
																aria-hidden="true">x</button>
														</div>
														<c:url var="addAction" value="/add_company_member"></c:url>
														<form modelAttribute="user" action="${addAction}" method="post"
															id="cmpteam_form">
															<div class="modal-body"
																style="margin-left: 52px;padding-bottom: 0px;">
																<c:if
																	test="${ user_data.role eq ProjectConstants.hr_Role }">
																	<div class="form-group is-empty form-inline">
																		<label for="inputLast"
																			class="col-md-4 control-label"
																			style="background: #75767826;padding: 13px 26px 9px 5px;border-radius: 4px;">Team</label>
																		<div class="col-md-8">
																			<input hidden type="text" id="tid" name="id">
																			<input type="text" name="team_name"
																				id="team_name" tabindex="1"
																				style="width: 92%;"
																				placeholder="Team name"
																				class="form-control" required="true" />
																		</div>
																	</div>
																	<div class="form-group is-empty form-inline"
																		style="width: 93%;background: #317c9e38;border-radius: 26px;">
																		<div class="col-md-6 control-label"
																			style="padding: 0">
																			<div class="radio"
																				style="padding-right: 50px;">
																				<label class="control-label"
																					style="padding: 9px 14px 10px 10px;border-radius: 20px;">
																					<input type="radio"
																						name="rad_manager" id="new"
																						checked="checked">
																					Create New Manager</label>
																			</div>
																		</div>
																		<div class="col-md-6 control-label">
																			<div class="radio"
																				style="padding: 0px 72px 0px 0px;">
																				<label class="control-label"
																					style="padding: 9px 5px 10px 0px; border-radius: 20px;">
																					<input type="radio"
																						name="rad_manager"
																						id="existing">
																					Choose Existing Manager</label>
																			</div>
																		</div>
																	</div>

																	<div class="form-group is-empty form-inline"
																		id="div_new_manager">
																		<label class="col-md-4 control-label"
																			style="background: #75767826;padding: 13px 19px 9px 5px;border-radius: 4px;">Name</label>
																		<div class="col-md-8">
																			<input name="username" id="unametxt"
																				class="form-control firstCapital"
																				style="width: 92%;"
																				placeholder="Enter New Manager's name"
																				required="true" tabindex="2"
																				autocomplete="off" />
																		</div>
																	</div>
																	<div class="form-group is-empty form-inline"
																		style="display: none;"
																		id="div_existing_manager">
																		<label class="col-md-4 control-label"
																			style="background: #75767826;padding: 13px 6px 9px 5px;border-radius: 4px;">Select
																			Manager</label>
																		<div class="col-md-8">
																			<select name="user_id" class="form-control"
																				style="width: 92%;" id="managers_list">
																				<option value="-1" disabled="true">
																					--Select Manager--</option>
																				<c:forEach items="${manager_list}"
																					var="manager">
																					<option
																						value="${manager.manager_id}">
																						${manager.username}</option>
																				</c:forEach>
																			</select>
																		</div>
																	</div>
																</c:if>

																<c:if test="${role eq ProjectConstants.manager_Role }">
																	<div class="form-group is-empty form-inline">
																		<label class="col-md-4 control-label"
																			style="background: #75767826;padding: 13px 6px 9px 5px;border-radius: 4px;">Lead
																			Name</label>
																		<div class="col-md-8">
																			<input name="username"
																				class="form-control firstCapital"
																				style="width: 92%;" id="leadname"
																				placeholder="Enter Internship Lead's name"
																				required="true" />
																		</div>
																	</div>
																</c:if>

																<div class="form-group is-empty form-inline">
																	<label class="col-md-4 control-label"
																		style="background: #75767826;padding: 13px 6px 9px 5px;border-radius: 4px;">Email
																		ID</label>
																	<div class="col-md-8">
																		<input name="email" id="mail_id"
																			class="form-control" style="width: 92%;"
																			placeholder="Enter E-mail" tabindex="4"
																			required="true" />
																		<label id="maillabel"
																			style="color: red;"></label>
																	</div>
																</div>

																<div class="form-group is-empty form-inline">
																	<label class="col-md-4 control-label"
																		style="background: #75767826;padding: 13px 6px 9px 5px;border-radius: 4px;">Contact</label>
																	<div class="col-md-8">
																		<input name="contact_no" id="contact"
																			class="form-control contact"
																			style="width: 92%;"
																			placeholder="Enter Contact Number"
																			pattern="\d*"
																			onchange="checkContactExists(this)"
																			minlength="10" maxlength="12"
																			required="true" autocomplete="off" />
																		<label id="contact_error"
																			style="color: red;"></label>
																	</div>
																</div>


																<label id="team_exists_msg" style="color: red;"></label>
															</div>

															<div class="modal-footer" style="border-top: 0px;">
																<button type="button" class="btn btn-primary btn-sm"
																	id="sbtn"
																	style="margin-right: 55px !important;">SUBMIT</button>
															</div>
															<input type="hidden" name="comp_dept_link_id"
																id="comp_dept_link_id" value="">
															<input type="hidden" name="exist_manager_id"
																id="exist_manager_id" value="0">
															<input type="hidden" name="form_action" id="form_action">
														</form>
													</div>
												</div>
											</div>
											<div class="modal fade bs-example-modal-lg show" id="addcompmember2"
												tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
												aria-modal="true">
												<div class="modal-dialog modal-lg modal-dialog-centered">
													<div class="modal-content">
														<div class="modal-header pb-3" style="background: #0f2c7eeb">
															<h6 class="modal-title" id="myLargeModalLabel"
																style="color: white;">REMOVE MEMBER</h6>

														</div>

														<form modelAttribute="user" action="/remove_member"
															method="post" id="remove_member">
															<div class="modal-body"
																style="margin-left: 52px;padding-bottom: 0px;">
																<c:if
																	test="${ user_data.role eq ProjectConstants.hr_Role }">
																	<div class="form-group is-empty form-inline">
																		<p>Remove Team From This List</p>
																		<div class="col-md-8">
																			<input hidden type="text" id="tid2" name="id">
																			<input hidden type="text" id="type" name="type"
																				value="1">

																		</div>
																	</div>




																</c:if>





															</div>

															<div class="modal-footer" style="border-top: 0px;">
																<button type="submit" class="btn btn-danger btn-sm"
																	id="sbtn"
																	style="margin-right: 55px !important;">SUBMIT</button>
																<button type="submit" class="btn btn-primary btn-sm"
																	id="cancel"
																	style="margin-right: 55px !important;" data-dismiss="modal">CLOSE</button>
															</div>
															
														</form>
													</div>
												</div>
											</div>
											<%@include file="footer.jsp" %>
									</div>
								</div>

								<%@include file="modal_common.jsp" %>
									<%@include file="modalFeedback.jsp" %>
										<!-- js -->

										<%@include file="scriptfiles.jsp" %>
											<script
												src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.0.4/popper.js"></script>
											<script src="/dist/js/myjs/common.js"></script>
											<%-- <script src="/dist/js/myjs/projectConstants.js"></script> --%>

												<script
													src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
												<script
													src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.0/jquery-confirm.min.js"></script>
												<script type="text/javascript"
													src="https://cdn.jsdelivr.net/npm/malihu-custom-scrollbar-plugin@3.1.5/jquery.mCustomScrollbar.js"></script>
												<script src="/dist/js/myjs/comp_member.js"></script>
												<script src="/dist/js/myjs/alert.js"></script>
												<script type="text/javascript"
													src="/dist/js/myjs/registration_utility.js"></script>
												<script
													src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
												<!-- <script src="../SkillPilots/dist/dash/vendors/scripts/core.js"></script> -->
												<script src="/dist/dash/vendors/scripts/script.min.js"></script>
												<script src="/dist/dash/vendors/scripts/process.js"></script>
												<script src="/dist/dash/vendors/scripts/layout-settings.js"></script>

												<script src="path/to/jquery.min.js"></script>
												<script src="path/to/bootstrap.min.js"></script>
												<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
												<script
													src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
												<script src="/dist/dash/vendors/scripts/datatable-setting.js"></script>
												<script>
													$(document).ready(function () {
														var selectedData = {}; // To store selected row data

														// Add click event listener to radio buttons
														$('tbody').on('click', 'input[type="radio"]', function () {
															// Get data from the selected row
															var $row = $(this).closest('tr');
															selectedData.id = $row.find('td:eq(1)').text();
															selectedData.department = $row.find('td:eq(2)').text();
															selectedData.username = $row.find('td:eq(3)').text();
															// Add more variables as needed
															$('#change_team').prop('disabled', false);
															$('#cancel_team').prop('disabled', false);
															
														});

														// Add click event listener to "Change" button
														$('#change_team').on('click', function () {
															// Check if a radio button is selected
															if ($.isEmptyObject(selectedData)) {
																alert('Please select a row first.');
																return;
															}

															// Populate form fields in the modal with selected data
															$('#tid').val(selectedData.id);
															$('#username').val(selectedData.username);
															$('#team_name').val(selectedData.department);
															// Populate more fields as needed

															// Open the modal
															$('#addcompmember').modal('show');
														});
														$('#cancel_team').on('click', function () {
															// Check if a radio button is selected
															if ($.isEmptyObject(selectedData)) {
																alert('Please select a row first.');
																return;
															}

															// Populate form fields in the modal with selected data
															$('#tid2').val(selectedData.id);

															// Populate more fields as needed
															$('#type').val(1);
															// Open the modal
															$('#addcompmember2').modal('show');
														});
														$('#restore_team').on('click', function () {
															// Check if a radio button is selected
															if ($.isEmptyObject(selectedData)) {
																alert('Please select a row first.');
																return;
															}

															// Populate form fields in the modal with selected data
															$('#tid2').val(selectedData.id);

															// Populate more fields as needed
															$('#type').val(0);
															// Open the modal
															$('#addcompmember2').modal('show');
														});
														

														// Add click event listener to "Remove" button
														// 	$('#cancel_team').on('click', function () {
														// 		// Check if a radio button is selected
														// 		if ($.isEmptyObject(selectedData)) {
														// 			alert('Please select a row first.');
														// 			return;
														// 		}

														// 		// Populate form fields in the modal with selected data
														// 		$('#delid').val(selectedData.id);
														// 		console.log(selectedData.id);

														// 		// Open the modal
														// 		$('#deleteModal').modal('show');
														// 	});

														// 	// Add click event listener to "Delete" button inside the modal
														// 	$('#deleteModal').on('click', '.btn-danger', function () {
														// 		// Make a direct HTTP request to /cancel_dept/{id}
														// 		$.ajax({
														// 			type: 'POST',
														// 			url: '/cancel_dept/' + selectedData.id,
														// 			success: function (response) {
														// 				// Handle success, e.g., refresh the page or update the UI
														// 				console.log('Successfully removed user.');
														// 				$('#deleteModal').modal('hide');
														// 				location.reload(true);
														// 			},
														// 			error: function (error) {
														// 				// Handle error
														// 				console.error('Error removing user:', error);
														// 			}
														// 		});
														// 	});
													});

													function showForm() {
														$('#addcompmember').modal('show');
													}

												</script>

<script>
	function showDelTeam() {
		// Hide the Active Teams tab content
		document.getElementById('activeteam').classList.remove('show', 'active');
		// Show the Deleted Teams tab content
		document.getElementById('delteam').classList.add('show', 'active');

	}
	function showActiveTeam() {
		// Hide the Active Teams tab content
		document.getElementById('activeteam').classList.add('show', 'active');
		// Show the Deleted Teams tab content
		document.getElementById('delteam').classList.remove('show', 'active');

	}
</script>

		</body>

		</html>