
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Basic Page Info -->
<meta charset="utf-8">
<title>SkillPilots | Company Online Test</title>

<!-- Site favicon -->
<link rel="apple-touch-icon" sizes="180x180" href="/dist/dash/vendors/images/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="16x16" href="/dist/dash/vendors/images/favicon.ico">

<!-- Mobile Specific Metas -->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
<!-- CSS -->
<link rel="stylesheet" type="text/css" href="/dist/dash/vendors/styles/core.css">
<link rel="stylesheet" type="text/css" href="/dist/dash/src/plugins/switchery/switchery.min.css">"
<link rel="stylesheet" type="text/css" href="/dist/dash/src/plugins/bootstrap-tagsinput/bootstrap-tagsinput.css">
	<!-- bootstrap-touchspin css -->
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
	.card-header-tabs {
    margin-right: -.625rem;
    margin-bottom: -.75rem;
    margin-left: -.625rem;
    border-bottom: inherit !important;
}
textarea.form-control {
    height: 50%;
}
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
.fade:not(.show) {
    opacity: 1;
}
.table td {
    font-size: 14px;
    font-weight: 500;
    padding: 0.7rem;
   /*  line-height: 0.5rem; */
    border-color: #f1f1f17d;
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
				src='/dist/dash/vendors/images/deskapp-logo.svg'/>" alt="" class="dark-logo"> 
				<img src='/dist/dash/vendors/images/skillpilot_white.svg'/>" alt="" class="light-logo">
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
		<c:if test="${func_value eq ProjectConstants.func_status_func_value_on}">
			<div class="title pb-20">
				<h5 class="h4 mb-0 text-center"><span style="background: #1b00ff;color: white;border-radius: 4px;padding: 4px 16px 4px 16px;">Your Online Tests</span>
				<span><button class="btn btn-primary btn-sm" onclick="ShowPaperSets()" title="Add more Tests"
				style="background: #1b00ff;color: white;border-radius: 4px;padding:5px 6px 6px 6px;float: right;" id="addbtn"><i class="fa fa-plus"></i>&nbsp;Create Test</button></span></h5>
			</div>
			<div class="card-box mb-30 testdiv content">
				<div class="pd-20">
					<div style="">
						
					</div>
					<c:url var="addAction" value="/saveCompanyTestData"></c:url> 
						<form:form modelAttribute="companytest" id="company_test" action="${addAction}" method="post"
							onsubmit="return validatetest()">
							<div class="col-xs-12" id="company_test_form">
								<div class="box">
									<div class="box-body">
										<span class="fa fa-close" onclick="closeForm();" data-toggle="tooltip" data-placement="top" title="Click Here To Close This Section"
											id="clsbtn" style="float: right; cursor: pointer;color: red;"></span>
									</div>
									<div class="box-body">
										<div class="row">
											<form:hidden path="test_id" id="test_id" />
											<div class="form-group col-md-6" style="width:40%;">
												<label><b>Test Name</b></label><br>
												<form:input path="test_name" id="test_name" class="form-control" style="height: 60%;"
													placeholder="Enter a name for the test" maxlength="20" required="true
											</div>
											<div class="form-group col-md-3" style="width:20%;">
												<label><b>Total Marks</b></label><br>
												<form:input type="number" path="total_marks" id="total_marks" style="height: 60%;" class="form-control"
													title="Enter total marks of the test" max="100" required="true" min="20
											</div>
											<div class="form-group col-md-3" style="width:20%;">
												<label><b>Total Questions</b></label><br>
												<form:input type="number" path="total_ques" style="height: 60%;" id="total_ques" class="form-control"
													title="Enter total questions in the test" max="99" required="true" min="20
											</div>
										</div>
									
										<h5 style="border-radius: 5px;text-align: center;background: #0073b7;color: white;margin: 7px 26px 18px 15px;padding: 3px 0 3px 0px;"><span>Test Setup</span></h5>
										<div class="row text-center" style="height:90px;text-align: center;">
												<br>
												<div class="form-group col-md-4" style="background: #ecf0f4;border-radius: 14px;margin: 0px 0 0 28px;">
													<label><b>Time (in minutes)</b></label><br>
													<input type="radio" name="test_type_time" id="tst_time"
														value="${ProjectConstants.company_test_type_for_test}" required>Test-wise
													<input type="radio" name="test_type_time" id="sec_time"
														value="${ProjectConstants.company_test_type_for_section}">Section-wise
													<%-- <input type="radio" name="test_type_time" id="ques_time"
														value="${ProjectConstants.company_test_type_for_question}">Question-wise --%>
													<form:input type="number" path="test_time" id="test_time" class="form-control" max="120"
														title="Enter Test time" style="display:none;height:34%;" min="30
												</div>
												<div class="form-group col-md-3" style="background: #ecf0f4;border-radius: 14px;margin: 0px 0 0 50px;">
													<label><b>Cut-off Marks</b></label><br>
													<input type="radio" name="test_type_cutoff" id="tst_ct_marks"
														value="${ProjectConstants.company_test_type_for_test}" required>Test-wise
													<input type="radio" name="test_type_cutoff" id="sec_ct_marks"
														value="${ProjectConstants.company_test_type_for_section}">Section-wise
													<form:input type="number" path="cut_off" id="cut_off" class="form-control" max="100"
														title="Enter cut off marks" style="display:none;height:34%;" min="1
												</div>
												<div class="form-group col-md-3" style="background: #ecf0f4;border-radius: 14px;padding-bottom: 9px;margin: 2px 0 1px 45px;">
													<label><b>Marks/Question</b></label><br>
													<input type="radio" name="test_type_marks" id="tst_marks"
														value="${ProjectConstants.company_test_type_for_test}" required>Test-wise
													<input type="radio" name="test_type_marks" id="sec_marks"
														value="${ProjectConstants.company_test_type_for_section}">Section-wise
													<%-- <input type="radio" name="test_type_marks" id="ques_marks"
														value="${ProjectConstants.company_test_type_for_question}">Question-wise --%>
													<form:input type="number" path="mark_per_ques" id="marks_per_ques" class="form-control"
														max="20" title="Enter Marks" style="display:none;height:34%;" min="1
												</div>
										</div>
									</div><br>
									<input type="hidden" name="status" value="${ProjectConstants.company_test_status_inactive}">
									<div class="box-body">
										<center>
											<input type="submit" class="btn btn-success" id="test_submit" value="Create Test" />
										</center>
									</div>
								</div>
							</div>
						</form:form>
				</div>
			</div>
			<div class="pd-20 card-boxcard card-box text-center">
				<div class="card-body">
							<ul class="nav nav-tabs card-header-tabs" role="tablist" style="background: #e8ecf0;">
								<c:forEach var="list_tab" items="${comTest_list}">
									<li id="tab_head_${list_tab.test_id}" <c:if test="${activeTest eq list_tab.test_id}">class='active'</c:if>>
										<a class="nav-link" data-toggle="tab" onclick="showtable('${list_tab.test_id}');">
											${list_tab.test_name}</a>
										<input type="hidden" id="test_type_${list_tab.test_id}" value='${list_tab.test_type}'>
										<c:if test="${activeTest eq list_tab.test_id}">
											<input type="hidden" id="upload_message" value='${upload_message}'>
										</c:if>
									</li>
								</c:forEach>
							</ul>

							<div class="tab-content">
								<c:forEach var="list_tab" items="${comTest_list}">
									<div id="tab_pane_${list_tab.test_id}" class="tab-pane fade in "><br>
										<center><h5 style="color:#1b00ff">Test Details</h5></center>
										<table class="table table-bordered" style="margin-top: 7px;">
											<thead class="thead-light">
												<tr>
													<th>Test Name</th>
													<th>Total Marks</th>
													<th>Total Question</th>
													<th>Test Time</th>
													<th>Cut off</th>
													<th>Marks/Question</th>
													<th>Actions</th>
													<th>Active</th>
												</tr>
											</thead>

											<tbody id="cmptest_tablist">
												<tr>
													<td>${list_tab.test_name}</td>
													<td id="${list_tab.test_id}_total_marks">${list_tab.total_marks}</td>
													<td id="${list_tab.test_id}_total_ques">${list_tab.total_ques}</td>
													<td>${list_tab.test_time}</td>
													<td>${list_tab.cut_off}</td>
													<td id="${list_tab.test_id}_mark_per_ques">${list_tab.mark_per_ques}</td>
													<td style="text-align:center;">
														<c:if test="${list_tab.status eq ProjectConstants.company_test_status_active}">
															<span class="fa fa-pencil-square-o" style="font-size: 19px;color: #1b00ff;" id="${list_tab.test_id}"  disabled=disabled 
																title="An active test cannot be edited."></span></c:if>
														<c:if test="${list_tab.status eq ProjectConstants.company_test_status_inactive}">
															<span class="fa fa-pencil-square-o" style="font-size: 19px;color: #1b00ff;" id="${list_tab.test_id}" 
																onclick="edit_Company_Test_Data('${list_tab.test_id}');"
																title="Click to edit Test format."></span></c:if>
													</td>
													<td style="text-align:center;">
														<label class="switch" style="margin-bottom: 0rem">
															<%-- <input type="checkbox" class="switch-btn" data-switchery="true" data-toggle="switch" id="${list_tab.test_id}_status"
																onclick="manage_Status(this,'${list_tab.test_id}')"
																<c:if test="${list_tab.status eq ProjectConstants.company_test_status_active}">
																checked </c:if>> --%>
																<input type="checkbox" class="switch-btn"
													data-size="small" data-color="#0099ff"
													style="display: none;" data-secondary-color="#28a745"
													data-switchery="true"
													onclick="manage_Status(this,'${list_tab.test_id}')"
													<c:if test="${list_tab.status eq ProjectConstants.company_test_status_active}">
																checked </c:if>> 
												<span class="slider round"></span>
											</label>
													</td>
												</tr>
											</tbody>
										</table>
										<br>										
										<center><h5 style="color:#1b00ff">Test Section Details</h5></center>
										<p>
											Total Number of Questions : <strong><span
												id="ques_per_section_${list_tab.test_id}"></span><span>/${ProjectConstants.total_no_of_ques_per_test}</span></strong>
										</p>
										<table class="table table-bordered nowrap" id="sec_table_${list_tab.test_id}" style="margin-top: 7px;white-space: nowrap;">
											<thead class="thead-light">
												<tr>
													<th>Section Name</th>
													<th>Total Question</th>
													<th>Section Time (Minutes)</th>
													<th>Sectional cut off</th>
													<th>Marks/Question</th>
													<th id="id_check_${list_tab.test_id}">Questions</th>
												</tr>
											</thead>
											<tbody id="section_details_${list_tab.test_id}"></tbody>
										</table>
										<div class="col-md-4" style="padding-left: 0px;">
											<div id="xldownload${list_tab.test_id}" style="display: none;background: #e9ecefc2;padding: 3px 10px 3px 10px;border-radius: 10px;"
												class=" pull-left">
												<span style="font-size: 12px; font-weight: 600">
													* To add multiple Test Questions at once,
													<br>Download, fill and upload the file from here.</span>
													<br>
												<a href="defaultExcel/Online Test Questions.xlsx?testid=${list_tab.test_id}"
													class="btn" style="padding: 0px !important;margin: 0 25% 0 0!important;" download>
													Download <i class="fa fa-download"></i>
												</a>
												<form method="post" action="onlineTestQuestionsXL?testid=${list_tab.test_id}"
													enctype="multipart/form-data" style="display:contents;">
													<div class="btn" style="padding:0px !important;margin:0px !important;color:#0773c7"
														title="Please upload excel after filling the downloaded file from left hand side.">
														Upload <i class="fa fa-upload"></i>
														<input type="file" name="fileUpload" onchange="this.form.submit()"
															accept="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"
															style="position: absolute; font-size: 16px; opacity: 0; left:173px;width: 29%;" />
													</div>
												</form>
											</div>
										</div>
										<input type="hidden" id="edit_test_id" value="">
										<input type="hidden" id="${list_tab.test_id}_marks_per_ques" value="">
										<input type="hidden" id="${list_tab.test_id}_cut_off" value="">
										<input type="hidden" id="${list_tab.test_id}_time" value="">
										<div class="col-md-12" style="text-align:center">
											<input type="button" id="sbtn_${list_tab.test_id}" class="btn btn-primary btn-sm"
												onclick="saveSectiondata('${list_tab.test_id}')" value="Submit" />
											<span id="row_btn_${list_tab.test_id}"></span>
										</div>
									</div>
								</c:forEach>
							</div>
				</div>
			</div></c:if>
			<br>
			<%@include file="modal_common.jsp"%>
			<%@include file="modal_online_test.jsp"%>
			<%@include file="footer.jsp"%>
		</div>
	</div>
	<!-- js -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.0/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.0/jquery-confirm.min.js"></script>
	<script src="/dist/js/myjs/alert.js"></script>
	<script src="/dist/js/myjs/common.js"></script>
	<script src="/dist/js/myjs/projectConstants.js"></script>
	<script type="text/javascript" src="/dist/js/myjs/company_online_test.js"></script>
	<script src="/dist/js/myjs/form_elements.js"></script>
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
	<script src="/dist/dash/src/plugins/bootstrap-touchspin/jquery.bootstrap-touchspin.js"></script>
	<script src="/dist/dash/vendors/scripts/advanced-components.js"></script>
	<script src="/dist/dash/vendors/scripts/datatable-setting.js"></script>
	<!-- <script type="text/javascript">
		$("#addbtn").click(function(){
			$(".testdiv").show();
		})
		
		$("#clsbtn").click(function(){
			$(".testdiv").hide();
		})
	</script> -->
</body>
</html>