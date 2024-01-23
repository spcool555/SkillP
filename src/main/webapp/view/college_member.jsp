
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>SkillPilots | Manage Department's</title>
<link rel="apple-touch-icon" sizes="180x180" href="/dist/dash/vendors/images/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="16x16" href="/dist/dash/vendors/images/favicon.ico">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap"
	rel="stylesheet">
<!-- CSS -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.css">
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
  /*   background: #317c9e; */
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
.table td {
	padding: 0.7rem;
}
.form-group {
    margin-bottom: 8px;
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
									<span class="micon dw dw-time-management"></span><span
									class="mtext">Manage Departments</span>
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
									<span class="micon dw dw-certificate-1"></span><span
									class="mtext">Certificate</span>
							</a></li>
						</ul>
					</div>
				</div>
		
	</div>
	<div class="mobile-menu-overlay"></div>

	<div class="main-container">
		<div class="pd-ltr-20 xs-pd-20-10">
		<div class="title pb-20">
				<h4 class="h4 mb-0 text-center" style="color: white;background: #0f2c7eeb;border-radius: 5px;">Manage Department</h4>
			</div>
			<div class="min-height-200px">
				<div class="pd-20 bg-white border-radius-4 box-shadow mb-30">
				
						<button type="button" class="btn btn-success btn-sm pull-left"
							style="margin-bottom: 6px;float: right;" onclick="showForm();">Add
							Department</button>
					
					<br>
					
						<div class="box-body">
							<table class="table table-bordered table-sm">
								<thead class="thead-light">
									<tr>
										<c:if test="${user_data.role eq ProjectConstants.iii_Role}">
											<th></th>
										</c:if>
										<th hidden>id</th>
										<th>Department</th>
										<th>HOD</th>
										<th>Departmental Coordinator</th>
										<th>Validity</th>
									</tr>
								</thead>
								
								<tbody>
									<c:forEach var="data" items="${dataList}">
										<tr>
											<td><input type="radio" name="rowid"
												id="${collDeptList.coll_dept_link_id}"
												class="${collDeptListcoll_dept_link_id}"></td>
											<td hidden>${data.id}</td>
											<td>${data.department}</td>
											<td>${data.username}</td>
											<td>sk</td>
											<td>12-01-2025</td>
											<!-- Add more columns as needed -->
										</tr>
									</c:forEach>
								</tbody>
								</tbody>
								
							</table>

						</div>
					
					<!-- /.box-body -->
					<div class="box-footer clearfix">
					
							<button type="button" id="change_dept"
								class="btn btn-primary dept_action btn-sm" disabled="disabled">Change</button>
							<button type="button" id="renew_dept"
								class="btn btn-primary dept_action btn-sm" disabled="disabled">Renew</button>
							<button type="button" id="cancel_dept"
								class="btn btn-danger  btn-sm" data-toggle="modal"  data-target="#deleteModal" disabled="disabled">Remove</button>
						
					</div>
				</div>
			</div>
			<!--End Content Wrapper. Contains page content-->
			<div class="modal fade show" id="addcollmember" tabindex="-1"
				role="dialog" aria-labelledby="myLargeModalLabel" aria-modal="true">
				<div class="modal-dialog modal-dialog-centered modal-lg">
					<div class="modal-content">
						<div class="panel-heading text-center" style="background: #0f2c7eeb;color: white;padding: 5px 0 5px 0px;">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<span class="modal-title">${moduleHeading}</span>
						</div>
						
						<form modelAttribute="user" action="college_dept"
							method="post">
							
						<div class="form-group is-empty form-inline"
									style="margin-top: 10px !important;">
									<label for="inputLast" class="col-md-4 control-label">Member
										Name</label>
									<div class="col-md-8">
										<input type="hidden" id="id" name="id">
										<input name="username" id="username"
											class="form-control firstCapital" placeholder="Member Name"
											maxlength="255" required="true" style="width: 84%;height: 40px;"/>
										<!-- <input class="form-control"  type="text"> -->
									</div>
								</div>
								<div class="form-group is-empty form-inline">
									<label for="inputEmail" class="col-md-4 control-label">Contact
										No.</label>
									<div class="col-md-8">
										<input name="contact_no" class="form-control contact" placeholder="Contact No." 
											id="contact" pattern="\d*" maxlength="12" required="true" style="width: 84%;height: 40px;" 
											onchange="checkContactExists(this)" onblur="checkContactExists(this)" minlength="10"/>
										<label id="contact_error" style="color: red;"></label>
									</div>
								</div>
								<div class="form-group is-empty form-inline">
									<label for="inputDate" class="col-md-4 control-label">Email
										ID</label>
									<div class="col-md-8">
										<input name="email" id="mail_id" placeholder="Email Id" class="form-control"
											
											required="true" style="width: 84%;height: 40px;"/>
										<label id="maillabel" style="color: red;"></label>
									</div>
								</div>
								<c:if test="${user_data.role eq ProjectConstants.iii_Role}">
									<div class="form-group is-empty form-inline">
										<label for="inputName" class="col-md-4 control-label">Department</label>
										<div class="col-md-8">
											<!-- <input  class="form-control" placeholder="Department" maxlength="250"   type="text"> -->
											<select name="department" id="dept" class="form-control">
												<option value="-1">Select a Department</option>
												
													<option value="mca">mca</option>
													<option value="bca">bca</option>
													<option value="b.e">b.e</option>
													<option value="${item.dept_id}">${item.dept_name}</option>
											
											</select>
										</div>
									</div>
								</c:if>
								<input type="hidden" name="coll_dept_link_id"
									id="coll_dept_link_id" value="">
								<div class="modal-footer" style="border-top: 0px">
									<button class="btn btn-primary btn-sm pull-right" id="sbtn"
										type="submit" style="margin-right: 50px;">SUBMIT</button>
								</div>
						</form>
					</div>
				</div>
			</div>
<!-- Delete Modal -->
<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="deleteModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
				<input type="hidden" id="delid" name="id">
                <h5 class="modal-title" id="deleteModalLabel">Confirm Delete</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                Are you sure you want to remove this Member?
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                <button type="button" class="btn btn-danger" >Delete</button>
            </div>
        </div>
    </div>
</div>

			<div class="modal fade show" id="balanceDataModal" tabindex="-1"
				role="dialog" aria-labelledby="myLargeModalLabel" aria-modal="true">
				<div class="modal-dialog modal-dialog-centered modal-lg">
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title" id="myLargeModalLabel">Packages Available</h4>
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">×</button>
						</div>
						<div class="modal-body">
							<input type="hidden" id="renew_coll_dept_link_id">
							<div id="balance_table_div">
								<table class="table table-striped table-sm">
									<tr>
										<th></th>
										<th>No of Department</th>
										<th>No of Internship</th>
										<th>Expiration Date</th>
										<th>Show Package Details</th>
									</tr>
									<tbody id="balance_departments">
									</tbody>
								</table>
								<button type="button" id="renew_dept_button"
									class="btn btn-success btn-sm" style="width: 100%;">RENEW</button>
							</div>
							<div id="package_table_div">
								<table class="table table-striped table-sm">
									<tr>
										<th></th>
										<th>Package Name</th>
										<th>No of Departments</th>
										<th>No of Internships</th>
										<th>Validity</th>
										<th>Amount</th>
									</tr>
									<tbody id="package_avail">
									</tbody>
								</table>
								<div class="modal-footer" style="border-top: 0px;">
									<button type="button" id="btn-payAndRecharge"
										class="btn btn-success btn-sm">PAY AND RE-CHARGE</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<%@include file="footer.jsp"%>
			<%@include file="modal_transactionsAndBalances.jsp"%>
		</div>
	</div>
	<!-- js -->
	<%@include file="scriptfiles.jsp"%>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.0/jquery-confirm.min.js"></script>
	<script src="/dist/js/myjs/college_member.js"></script>
	<script src="/dist/js/myjs/common.js"></script>
	<script src="/dist/js/myjs/projectConstants.js"></script>
	
	
	<script type="text/javascript" src="/dist/js/myjs/registration_utility.js"></script>
	<script src="/dist/js/myjs/transactionsAndBalances.js"></script>
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
    });

    // Add click event listener to "Change" button
    $('#change_dept').on('click', function () {
        // Check if a radio button is selected
        if ($.isEmptyObject(selectedData)) {
            alert('Please select a row first.');
            return;
        }

        // Populate form fields in the modal with selected data
        $('#id').val(selectedData.id);
        $('#username').val(selectedData.username);
        $('#dept').val(selectedData.department);
        // Populate more fields as needed

        // Open the modal
        $('#addcollmember').modal('show');
    });

    // Add click event listener to "Remove" button
    $('#cancel_dept').on('click', function () {
        // Check if a radio button is selected
        if ($.isEmptyObject(selectedData)) {
            alert('Please select a row first.');
            return;
        }

        // Populate form fields in the modal with selected data
        $('#delid').val(selectedData.id);
        console.log(selectedData.id);

        // Open the modal
        $('#deleteModal').modal('show');
    });

    // Add click event listener to "Delete" button inside the modal
    $('#deleteModal').on('click', '.btn-danger', function () {
        // Make a direct HTTP request to /cancel_dept/{id}
        $.ajax({
            type: 'POST',
            url: '/cancel_dept/' + selectedData.id,
            success: function (response) {
                // Handle success, e.g., refresh the page or update the UI
                console.log('Successfully removed user.');
				$('#deleteModal').modal('hide');
				location.reload(true);
            },
            error: function (error) {
                // Handle error
                console.error('Error removing user:', error);
            }
        });
    });
});

function showForm() {
    $('#addcollmember').modal('show');
}

	</script>
	
	

</body>
</html>