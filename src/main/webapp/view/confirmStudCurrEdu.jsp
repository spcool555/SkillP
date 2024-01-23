<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<!-- Basic Page Info -->
	<meta charset="utf-8">
	<title>SkillPilots | Confirm Education</title>
	<link rel="apple-touch-icon" sizes="180x180" href="/dist/dash/vendors/images/apple-touch-icon.png">
	<link rel="icon" type="image/png" sizes="16x16" href="/dist/dash/vendors/images/favicon-16x16.png">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="/dist/dash/vendors/styles/core.css">
	<link rel="stylesheet" type="text/css" href="/dist/dash/vendors/styles/icon-font.min.css">
	<link rel="stylesheet" type="text/css" href="/dist/dash/vendors/styles/style.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.0/jquery-confirm.min.css" integrity="sha512-JdK5FqWm6zRt5GSmEJT7M4HpaGAiod0U3kLehOSz1NKpbL3QS7rHrcw2hvTwM8hKteBjyn7yzLCFzJE1F3+90w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<style type="text/css">
	.fade:not(.show) {
    opacity: 1;
    }
	</style>
</head>

<body onload="loadModal()">
	<div class="modal fade" id="eduConfirmModal" data-backdrop="static"
		tabindex="-1" role="dialog" aria-hidden="true"
		style="background-color: darkgrey;">
		<input type="hidden" value="${username }" id="uname">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-body text-center font-18">
					<h4 class="padding-top-30 mb-30 weight-500">Do You Want To Link Your Account With College?</h4>
					<form action="confirm_current_edu" method="post" id="myform">
						<input type="hidden" name="confirm" id="confirm_txt">
					</form>
					<div class="padding-bottom-30 row"
						style="max-width: 170px; margin: 0 auto;">
						<div class="col-6">
							<button type="button" id="eduBtnNo"
								class="btn btn-secondary border-radius-100 btn-block confirmation-btn"
								data-dismiss="modal">
								<i class="fa fa-times"></i>
							</button>
							NO
						</div>
						<div class="col-6">
							<button type="button" id="eduBtnYes"
								class="btn btn-primary border-radius-100 btn-block confirmation-btn"
								data-dismiss="modal">
								<i class="fa fa-check"></i>
							</button>
							YES
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="modal fade" id="editprofileConfirmModal" data-backdrop="static"
		tabindex="-1" role="dialog" aria-hidden="true"
		style="background-color: darkgrey;">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-body text-center font-18">
					<h4 class="padding-top-30 mb-30 weight-500" style="color: red;">Account Verification Pending</h4>
					<c:if test="${rejection_reason eq null}">
						<p>Your Account/Profile Is Not Verified By Your <strong>Departmental Head</strong>.Please Co-Ordinate With Your <strong>Departmental Head (H.O.D)</strong> For Verification Of Your Profile.</p>
					</c:if>
					<c:if test="${rejection_reason ne null}">
						<p>Your Account/Profile has been rejected by the Head of Department of your selected Institute
							with the reason - ${rejection_reason}.</p>
					</c:if>
					<div class="padding-bottom-30 row"
						style="margin: 0 auto;">
						<div class="col-6">
							<button type="button" id="editprofile"
								class="btn btn-success"
								data-dismiss="modal">
								<i class="fa fa-edit"></i> Edit Profile
							</button>
							
						</div>
						<div class="col-6">
							<button type="button" id="logout"
								class="btn btn-danger"
								data-dismiss="modal">
								<i class="fa fa-sign-out"></i> Logout
							</button>
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%-- <div class="modal fade" id="editprofileConfirmModal" data-backdrop="static" data-keyboard="false" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Account Verification Pending</h4>
				</div>
				<div class="modal-body">
					<c:if test="${rejection_reason eq null}">
						<p>Your Account/Profile is yet to be verified by the Head of Department of your selected Institute.</p>
						<p>You cannot access the portal till then.</p>
					</c:if>
					<c:if test="${rejection_reason ne null}">
						<p>Your Account/Profile has been rejected by the Head of Department of your selected Institute
							with the reason - ${rejection_reason}.</p>
					</c:if>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-success" id="editprofile">Edit Profile</button>
					<button type="button" class="btn btn-danger" id="logout">Logout</button>
				</div>
			</div>
		</div>
	</div> --%>
	<%@include file="scriptfiles.jsp"%>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.0/jquery-confirm.min.js"></script>
	<script src="/dist/dash/vendors/scripts/process.js"></script>
	<script src="/dist/dash/vendors/scripts/layout-settings.js"></script>
	<script type="text/javascript">
		//check if returned before acc verified
	function loadModal(){
		var u_name = $("#uname").val();
		if(u_name ==''){
			$('#eduConfirmModal').modal('show');
			
		}else {
			$('#editprofileConfirmModal').modal('show');
	 	}
		}
		
	 
	$("#eduBtnNo").click(function(){
		$("#confirm_txt").val("no");
		$("#myform").submit();
	});
	$("#eduBtnYes").click(function(){
		$("#confirm_txt").val("yes");
		$("#myform").submit();
	});

	$("#logout").click(function(){
		$("#confirm_txt").val("logout");
		$("#myform").submit();
	});
	$("#editprofile").click(function(){
		$("#confirm_txt").val("edit");
		$("#myform").submit();
	});
	</script>
</body>
</html>
