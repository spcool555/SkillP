<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
<!-- Basic Page Info -->
<meta charset="utf-8">
<title>SkillPilots | Student Dashboard</title>

<!-- Site favicon -->
<link rel="apple-touch-icon" sizes="180x180"
	href='/dist/dash/vendors/images/apple-touch-icon.png'>
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
<link rel="stylesheet" type="text/css" href='dist/dash/vendors/styles/icon-font.min.css'>
<link rel="stylesheet" type="text/css" href='/dist/dash/src/plugins/datatables/css/dataTables.bootstrap4.min.css'>
<link rel="stylesheet" type="text/css" href='/dist/dash/src/plugins/datatables/css/responsive.bootstrap4.min.css'>
<link rel="stylesheet" type="text/css" href='/dist/dash/vendors/styles/style.css'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/2.0.0/jquery-confirm.min.css" integrity="sha512-qGaAtuKvSCWSaqGi3MX0T+h3SYcOUlrwpURUWgIgCsLQ92cBVzNCDtIvvB0/NDawwH2RcHAYvzEYS25+jzMTnQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
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
    /* background: #ffffff; */
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
.pointer {cursor: pointer;}
#style-3::-webkit-scrollbar
{
	width: 6px;
	background-color: #F5F5F5;
}

#style-3::-webkit-scrollbar-thumb
{
	background-color: #0f2c7eeb;
}
#div_location::-webkit-scrollbar-track
{
	-webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
	background-color: #F5F5F5;
}

#div_location::-webkit-scrollbar
{
	width: 6px;
	background-color: #0f2c7eeb;
}

#div_location::-webkit-scrollbar-thumb
{
	background-color: #0f2c7eeb;
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
	background-color: #0f2c7eeb;
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
	background-color: #0f2c7eeb;
}
hr{
	border-top-width: medium;
	background: #0f2c7eeb;
}
</style>
</head>
<body>
	<div class="pre-loader">
		<div class="pre-loader-box">
			<div class="loader-logo">
				<img
					src='/dist/dash/vendors/images/deskapp-logos.svg'
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
				src='/dist/dash/vendors/images/deskapp-logo.svg'
				alt="" class="dark-logo"> <img
				src='/dist/dash/vendors/images/skillpilot_white.svg'
				alt="" class="light-logo">
			</a>
			<div class="close-sidebar" data-toggle="left-sidebar-close">
				<i class="ion-close-round"></i>
			</div>
		</div>
		<div class="menu-block customscroll">
			<div class="sidebar-menu">
				<ul id="accordion-menu">
					<li><a href="stud_home" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-house-1"></span><span class="mtext">Dashboard</span>
					</a></li>
					<li><a href="viewCompAndApply"
						class="dropdown-toggle no-arrow"> <span
							class="micon dw dw-list"></span><span class="mtext">Industry
								List</span>
					</a></li>
					<li><a href="studentinternships"
						class="dropdown-toggle no-arrow"> <span
							class="micon dw dw-certificate"></span><span class="mtext">Internships</span>
					</a></li>
					<li><a href="appliedCompanies"
						class="dropdown-toggle no-arrow"> <span
							class="micon dw dw-personal-computer"></span><span class="mtext">Requests
								Status</span>
					</a></li>
					<li><a href="live_chat" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-chat3"></span><span class="mtext">Live
								Chat</span>
					</a></li>
					<li><a href="stud_testHistory"
						class="dropdown-toggle no-arrow"> <span
							class="micon dw dw-file-411"></span><span class="mtext">Test
								History</span>
					</a></li>
					<li><a href="certificate" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-certificate-1"></span><span
							class="mtext">Internship Certificate</span>
					</a></li>

				</ul>
			</div>
		</div>
	</div>
	<div class="mobile-menu-overlay"></div>

	<div class="main-container">
		<div class="xs-pd-20-10 pd-ltr-20 height-100-p">
			<div class="title pb-20 text-center">
				<h2 class="h3 mb-0"
					style="background: #0f2c7eeb; color: white; border-radius: 5px;">
					<span>Available Internships</span>
				</h2>
			</div>
			
				<div class="row">
					<div class="col-xl-4 mb-30" style="height: 440px;">
						<div class="card-box height-100-p pd-20 scrollbar force-overflow"
							id="style-3" style="position: relative; max-height: 100%; overflow: auto;">
							<h6 class="h4 mb-0"
								style="text-align: center; font-weight: 100; margin-bottom: 0px; background: #0f2c7eeb; color: white; border-radius: 6px;">
								Filters</h6>
							<hr style="border-top-width: medium;background: #0f2c7eeb;">
							<h6 class="h6"
								style="font-weight: 100; background: #0f2c7eeb; padding: 3px 6px 3px 5px; color: white; border-radius: 3px;">
								<i class="fa fa-filter" style="color: white;"></i>&nbsp;Filter
								by location <span id="location_reset" title="Reset filter"
									style="float: right; color: white;" class="pointer"
									onclick="resetSearch('location','location_reset');"> <i
									class="fa fa-refresh"></i></span>
							</h6>
							<div class="row">
								<div class="col-md-10">
									<input type="text" name="table_search" id="search_location"
										class="form-control search_control"
										style="height: 100%; width: 105%;">
								</div>
								<div class="col-md-2" style="padding-left: 0;">
									<button class="btn btn-sm btn-primary" id="location"
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
							<hr style="border-top-width: medium;background: #0f2c7eeb;">
							<h6 class="h6"
								style="font-weight: 100; background: #0f2c7eeb; padding: 3px 6px 3px 5px; color: white; border-radius: 3px;">
								<i class="fa fa-building" style="color: white;"></i>&nbsp;Filter
								by Departments <span title="Reset" id="dept_reset"
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
								style="font-weight: 100; background: #0f2c7eeb; padding: 3px 6px 3px 5px; color: white; border-radius: 3px;">
								<i class="fa fa-briefcase" style="color: white;"></i>&nbsp;Filter
								by skill <span title="Reset" id="tech_reset"
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
							<div class="form-group scroll scrollbar force-overflow"
								id="div_tech" style="overflow: auto;  height: 200px;">
								<c:forEach items="${tech_names}" var="tech_name">
									<div class="checkbox">
										<c:set var="techall_sp_remv"
											value="${fn:replace(fn:replace(fn:replace(fn:replace(fn:replace(fn:replace(tech_name,
											'\\'', ''),'/', ''),'+', ''),'#', ''),'.', ''),' ', '')}" />
										<label id="lbl_${techall_sp_remv}" class="showall_tech"><input
											type="checkbox" class="filter_checkbox" name="tech"
											value="${techall_sp_remv}"> ${tech_name}</label>
									</div>
								</c:forEach>
							</div>
							<hr>
							<h6 class="h6"
								style="font-weight: 100; background: #0f2c7eeb; padding: 3px 6px 3px 5px; color: white; border-radius: 3px;">
								<i class="fa fa-rupee" style="color: white;"></i>&nbsp;Filter by
								Stipend <span id="sti_reset" title="Reset"
									style="float: right; color: white;" class="pointer"
									onclick="resetSearch('stipend','sti_reset');"> <i
									class="fa fa-refresh"></i>
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
								style="font-weight: 100; background: #0f2c7eeb; padding: 3px 6px 3px 5px; color: white; border-radius: 3px;">
								<i class="fa fa-clock-o" style="color: white;"></i>&nbsp;Filter
								by Duration <span id="duration_reset" title="Reset"
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
						<div class="card-box " id="style-35"
							style="position: relative; max-height: 100%; overflow: auto;">
							
							<c:forEach items="${adv}" var="comp_add">
							
								${adv}
							</c:forEach> 
						</div>
					</div>
				</div>
			
			<c:if
				test="${dept_validity eq ProjectConstants.reg_user_expiration_rsn_dept_del}">
				<h1 style="text-align: center">
					Oops!<br> Looks like your Institute's Department Validity has
					expired.<br> Please Contact your Head of Department for
					further details.
				</h1>
			</c:if>
			<c:if test="${log_type eq 'ST'}">
				<div class="modal fade show" id="confirmAdvertisement" tabindex="-1"
					role="dialog" aria-labelledby="myLargeModalLabel" aria-modal="true">
					<div class="modal-dialog modal-dialog-centered">
						<!-- Modal content-->
						<div class="modal-content modelfix">
							<div class="panel-heading">
								<button type="button" class="close" data-dismiss="modal">&times;</button>
								<h5 class="modal-title"
									style="background: #0073b7; color: white; font-weight: 400; padding-left: 15px;">Are
									you sure you want to apply?</h5>
							</div>
							<div class="modal-body">
								<span>You are applying for internship in <strong><span
										id="tech" style="color: #1b00ff"></span></strong> at <strong>
										<span id="company" style="color: #1b00ff"></span>
								</strong> for <strong style="color: #1b00ff"><span id="duration"
										style="color: #1b00ff"></span> weeks</strong> are you sure?
								</span>
							</div>
							<div class="modal-footer" style="border-top: 0px;">
								<form action="applyInterns_req" method='post'>
									<input type="hidden" name='hid' id="hid" value=""> <input
										type="hidden" name="redirect_page" id="redirect_page" value="">
									<button type="submit" class="btn btn-primary btn-sm">Confirm</button>
								</form>
							</div>
						</div>
					</div>
				</div>
			</c:if>
		</div>
		<%@include file="footer.jsp"%>
	</div>
	<input type="hidden" id="gif_file_path"
		value='<c:url value="/images/loading.gif"/>'>
	<c:if
		test="${role== ProjectConstants.hod_Role || role==ProjectConstants.dept_incharge_Role }">
		<input type="hidden" id="role" value="${role}" />
	</c:if>
	<c:if test="${log_type eq ProjectConstants.user_initials_student  }">
		<input type="hidden" id="student_log" value="${log_type}" />
	</c:if>
	<%@include file="modal_common.jsp"%>
	<%@include file="modal.jsp"%>
	<%@include file="modal_adv_schedule.jsp"%>
	<!-- <%@include file="comp_coll_details_modal.jsp"%> -->
	<!-- js -->
		<input type="hidden" id="role" value="${role}" />
		<input type="hidden" id="student_log" value="${log_type}" />
	
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.0/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/2.0.0/jquery-confirm.min.js"
		integrity="sha512-rmeGgGFs1GsDm4pB4vQNn7ZJLQv9s8gVlaEbn+u+k+nKU0UVyRcEsfrNXxOZ6Wznx4oOOYfUCWUhmsFuc2PAbw=="
		crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<script src="/dist/js/myjs/userDetails.js"></script>
	<script src="/dist/js/myjs/common.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script src="/dist/js/myjs/projectConstants.js"></script>
	<script src="/dist/js/myjs/showmore_or_showless.js"></script>
	<script src="/dist/js/myjs/internship_schedule.js"></script>
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
	
	function getAdvertisementStatus(tech,cmp,duration,adv_id){
		var technology=tech;
		var comp = cmp;
		var dur = duration;
		var avd_id= adv_id;
			$.ajax({
				type:"GET",
				url : "getInternshipStatus?advertisement_id="+avd_id,
				success : function(response) {
					
					if(response==internships_status_ongoing){
						alert(already_have_ongoing_internship);
					}else if(response=="P" || response=="1" || response=="2" || response=="T" || response=="D"){
						$('#internshipPending').modal('toggle');
					}else if(response=="A") {
						$('#internshipApproved').modal('toggle');
					}else if(response=="R") {
						swal("", "You have a rejected request for this industry which has not passed the industry's cooling period. " +
						"Please try again after somedays.", "error");
						/*alertMsg("You have a rejected request for this industry which has not passed the industry's cooling period. " +
						"Please try again after somedays.");*/
					}else if(response=="s"){
						swal("", "Already applied by Student.", "error");
						//alertMsg("Already applied by Student.");
					}else if(response=="c"){
						swal("", "Already applied by College.", "success");
						//alertMsg("Already applied by College.");
					}else{
						confirmAdversemnt(technology,comp,dur,avd_id);
					}
				},
		 
		}
	
	function confirmAdversemnt(tech,cmp,duration,avd_id){
		$('.modal-body #tech').text(tech);
		$('.modal-body #company').text($('#'+cmp).text());
		$('#hid').val(avd_id);
		$('#redirect_page').val('stud_home');
		$('.modal-body #duration').text(duration);
		$('#confirmAdvertisement').modal('show');
	}
	
	</script>
</body>
</html>