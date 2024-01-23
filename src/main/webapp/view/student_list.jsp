<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<!-- Basic Page Info -->
	<meta charset="utf-8">
	<title>SkillPilots | Student List</title>

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
	<link rel="stylesheet" type="text/css" href="/dist/css/myCss/feedback_css.css">

	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-119386393-1"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag(){dataLayer.push(arguments);}
		gtag('js', new Date());

		gtag('config', 'UA-119386393-1');
	</script>
	<script type="text/javascript">
	function validateMe() {
		if (document.getElementById("files").files.length == 0) {
			alertMsg("Please select a file.");
			return false;
		} else {
			return true;
		}
	}
</script>
	<style type="text/css">
	.sidebar-menu .dropdown-toggle {
		padding: 15px 12px 15px 54px!important;
		font-size: 15px!important;
	}
	.page-link{
		line-height: 1rem!important;
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
#studentDetailsModal{
	padding-left: 21% !important;
}
	</style>
</head>
<body>
	<div class="pre-loader">
		<div class="pre-loader-box">
			<div class="loader-logo"><img src="/dist/dash/vendors/images/deskapp-logos.svg" alt=""></div>
			<div class='loader-progress' id="progress_div">
				<div class='bar' id='bar1'></div>
			</div>
			<div class='percent' id='percent1'>0%</div>
			<div class="loading-text">
				Loading...
			</div>
		</div>
	</div>

	<%@include file="header.jsp"%>

	<div class="right-sidebar">
		<div class="sidebar-title">
			<h3 class="weight-600 font-16 text-blue">
				Layout Settings
				<span class="btn-block font-weight-400 font-12">User Interface Settings</span>
			</h3>
			<div class="close-sidebar" data-toggle="right-sidebar-close">
				<i class="icon-copy ion-close-round"></i>
			</div>
		</div>
		<div class="right-sidebar-body customscroll">
			<div class="right-sidebar-body-content">
				<h4 class="weight-600 font-18 pb-10">Header Background</h4>
				<div class="sidebar-btn-group pb-30 mb-10">
					<a href="javascript:void(0);" class="btn btn-outline-primary header-white">White</a>
					<a href="javascript:void(0);" class="btn btn-outline-primary header-dark active">Dark</a>
				</div>

				<h4 class="weight-600 font-18 pb-10">Sidebar Background</h4>
				<div class="sidebar-btn-group pb-30 mb-10">
					<a href="javascript:void(0);" class="btn btn-outline-primary sidebar-light ">White</a>
					<a href="javascript:void(0);" class="btn btn-outline-primary sidebar-dark active">Dark</a>
				</div>
				<div class="reset-options pt-30 text-center">
					<button class="btn btn-danger" id="reset-settings">Reset Settings</button>
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
	</div>
	<div class="mobile-menu-overlay"></div>

	<div class="main-container">
		<div class="pd-ltr-20 xs-pd-20-10">
			<div class="min-height-200px">

				<div class="row clearfix">
					<div class="col-lg-12 col-md-12 col-sm-12 mb-30">
						<div class="pd-20 card-box">
							<h5 class="h4 text-blue mb-20 text-center">Student List</h5>
							<div class="tab">
								<ul class="nav nav-tabs customtab" role="tablist">
									<li class="nav-item">
										<a class="nav-link active" data-toggle="tab" href="#reg_multi" role="tab" aria-selected="true">Register Multiple Students</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" data-toggle="tab" href="#new_adm" role="tab" aria-selected="false">New Admissions</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" data-toggle="tab" href="#stud_appr" role="tab" aria-selected="false">Approved Students</a>
									</li>
								</ul>
								<div class="tab-content">
									<div class="tab-pane fade show active" id="reg_multi" role="tabpanel">
										<div class="pd-20 text-center">
											<span style="font-size: 16px;font-weight:600">
											Here you can upload an excel with basic data of student's who currently belong<br>
											to your department and create validated logins for them.
										</span>
										</div>
										<div class="text-center" style="margin-top:3%;">
										<span style="font-size: 12px;font-weight:600">
											Download Excel format from here.</span>
										<br>
										<a href="defaultExcel/Student Registration.xlsx" class="btn btn-primary btn-sm"  
											style="color:white;padding:3px !important;margin-top: 1% !important">
											Download <i class="fa fa-download"></i>
										</a>
									</div>
									<div style="margin-top:3%;" 
										title="Please upload excel after filling the downloaded excel from above.">
										<form class="text-center" method="post" action="uploadregistrationXL" enctype="multipart/form-data" 
											onsubmit="return validateMe()">
											<span style="font-size: 12px;font-weight:600">
												Upload filled Excel File.</span>
											<br>
											<input class="form-control-file form-control height-auto" type="file" id="files" name="fileUpload" 
												style="display:inline; margin-top:1%;max-width: 30%;"
												accept="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"/>
											<input type="submit" id="btnUpload" class="btn btn-primary btn-sm"  
												value="Upload"
												style="padding:3px !important;margin-top: 1% !important;"/>
										</form>
									</div>
									</div>
									<div class="tab-pane fade" id="new_adm" role="tabpanel">
										<div class="pd-20">
											<c:if test="${not empty studentRequestList}">
								<table class="data-table table hover nowrap" id="student_req"
									style="margin-top: 7px;">
									<thead>
										<tr>
											<th class="table-plus datatable-nosort">select</th>
											<th>Student Name</th>
											<th>Requested Date</th>
										</tr>
									</thead>
									<c:forEach items="${studentRequestList}" var="student">
										<tbody>
											<tr id="row${student[0]}">
												<td><input type="checkbox" name="stud_id"
													id="${student[0]}" value="${student[0]}" onclick="enable_disable(this)"></td>
												<td><a><span class="pointer actionSpan" title="Click Here To View Student Details"
													data-toggle="modal" data-target="#studentDetailsModal"
													onclick="dispStudentData('${student[0]}');">${student[1]}</span></a></td>
												<td><fmt:formatDate
														pattern="${ProjectConstants.date_format}"
														value="${student[5]}" /></td>
											</tr>
										</tbody>
									</c:forEach>
								</table>
								<div class="text-center">
									<button type="button" id="app_btn"
									class="btn btn-primary btn-sm  text-center" ><i class="fa fa-check" aria-hidden="true"></i> Approve</button>
								<button type="button" id="rej_btn" class="btn btn-danger btn-sm  text-center"
									data-toggle="modal" data-target="#rejectModelfor_External_req"
									onclick="rejectReqId('${student[0]}');"><i class="fa fa-ban" aria-hidden="true"></i> Reject</button>
								</div>
								
							</c:if>
							<c:if test="${empty studentRequestList}">
								<label>No new admission found.</label>
							</c:if>
										</div>
									</div>
									<div class="tab-pane fade" id="stud_appr" role="tabpanel">
										<div class="pd-20">
											<c:if test="${not empty studentApprove_List}">
								<table class="data-table table hover multiple-select-row nowrap" style="margin-top:7px;">
									<thead>
										<tr>
											<th class="table-plus datatable-nosort">Student Name</th>
											<th>Enrollment Number</th>
											<th>Year</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${studentApprove_List}" var="student">
											<tr>
												<td><a href="#" onclick="return false;"><span class="pointer actionSpan" title="Click Here To View Student Details"
													data-toggle="modal" data-target="#studentDetailsModal"
													onclick="dispStudentData('${student[0]}');">${student[1]}</span></a></td>
												<td>${student[2]}</td>
												<td>
												<c:if test="${student[3] eq '1'}">
													<span>1<sup>st</sup> Year</span>
												</c:if>
												<c:if test="${student[3] eq '2'}">
													<span>2<sup>nd</sup> Year</span>
												</c:if>
												<c:if test="${student[3] eq '3'}">
													<span>3<sup>rd</sup> Year</span>
												</c:if>
												<c:if test="${student[3] eq '4'}">
													<span>4<sup>th</sup> Year</span>
												</c:if>
												</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</c:if>
							<c:if test="${empty studentApprove_List}">
								<label>No Student found.</label>
							</c:if>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<%@include file="modal.jsp"%>
			<%@include file="modalStudentDetails.jsp"%>
			<%@include file="footer.jsp"%>
		</div>
	</div>
	<!-- js -->
	<%@include file="scriptfiles.jsp"%>
	<script src="/dist/js/myjs/student_list.js"></script>
	<script type="text/javascript" src="//cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
	<script src="/dist/js/myjs/userDetails.js"></script>
	<script src="/dist/dash/vendors/scripts/core.js"></script>
	<script src="/dist/dash/vendors/scripts/script.min.js"></script>
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
	<script type="text/javascript">
		
		$(document).ready(function () {
			  var student_id = [];
			  $("input[type='checkbox']").change(function() {
			  var checked = $(this).val();
			    if ($(this).is(':checked')) {
			    	student_id.push(checked);
			    }else{
			    	student_id.splice($.inArray(checked, student_id),1);
			    }
			  });
			 
			  $('#app_btn').on('click', function () {
				  $.ajax({
					  url:"stud_a_r?student_id="+student_id+"&click_type=approve",
						/* url : "assignGroupRoles?group_role_assign="+tmp, */
						cache : false,
						success : function(data) {
							location.reload();
						}
					});
			  });
			  
			});
		function closeModal(){
		    $(".modal-backdrop").css("position", "inherit");
			//window.location.reload();
		}
	</script>
</body>
</html>