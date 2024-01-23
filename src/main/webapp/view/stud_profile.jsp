
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<!-- Basic Page Info -->
	<meta charset="utf-8">
	<title>SkillPilots | Add Student Details</title>
	<link rel="apple-touch-icon" sizes="180x180" href="/dist/dash/vendors/images/apple-touch-icon.png">
	<link rel="icon" type="image/png" sizes="16x16" href="/dist/dash/vendors/images/favicon.ico">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href='/dist/dash/vendors/styles/core.css'>
	<link rel="stylesheet" type="text/css" href='/dist/dash/vendors/styles/icon-font.min.css'>
	<link rel="stylesheet" type="text/css" href='/dist/dash/src/plugins/jquery-steps/jquery.steps.css'>
	<link rel="stylesheet" type="text/css" href='/dist/dash/vendors/styles/style.css'>

	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-119386393-1"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag(){dataLayer.push(arguments);}
		gtag('js', new Date());

		gtag('config', 'UA-119386393-1');
	</script>
	<style type="text/css">
.custom-control-input {
	position: absolute;
	left: 0px;
	z-index: 9;
	width: 2rem;
	height: 2.25rem;
	opacity: 0;
}

.register-page-wrap .wizard-content .wizard>.steps>ul {
	flex-wrap: initial !important;
}

.custom-file {
	text-align: end;
	width: 117%;
	margin-top: 10px;
}
</style>
</head>

<body class="login-page">
	<div class="login-header box-shadow">
		<div class="container-fluid d-flex justify-content-between align-items-center">
			<div class="brand-logo">
				<a href='/home'>
					<img src='/dist/dash/vendors/images/deskapp-logos.svg' alt="">
				</a>
			</div>
		</div>
	</div>
	<div class="register-page-wrap d-flex align-items-center flex-wrap justify-content-center">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-md-6 col-lg-7">
					<img src='/dist/dash/vendors/images/register-page-img.png' alt="">
				</div>
				<div class="col-md-6 col-lg-5">
					<div class="register-box bg-white box-shadow border-radius-10">
						<div class="wizard-content">
							<c:url var="addAction" value="/add_stu"></c:url>
						<form:form action="${addAction}" modelAttribute="student" id="regform" method="post"
							enctype="multipart/form-data" class="form-horizontal tab-wizard2 wizard-circle wizard">
							<form:hidden path="student_id" name="student_id" id="student_id"/>
								<h5>Basic Account Credentials</h5>
								<section>
									<div class="form-wrap max-width-600 mx-auto">
										<div class="form-group row align-items-center">
											<label class="col-sm-4 col-form-label">Full Name*</label>
											<div class="col-sm-8">
												<form:input path="student_name"
													class="form-control firstCapital" required="true"
													pattern="[a-zA-Z\s]{1,50}" placeholder="Enter Your Name" />
											</div>
										</div>
										<div class="form-group row align-items-center">
											<label class="col-sm-4 col-form-label">Date Of Birth*</label>
											<div class="col-sm-8">
												<form:input path="d_o_b" class="form-control date_OB date-picker"
											required="true" readonly="true"/>
											</div>
										</div>
										<div class="form-group row align-items-center">
											<label class="col-sm-4 col-form-label">Gender*</label>
											<div class="col-sm-8">
												<select class="form-control" id="gender" name="gender" title="Select Gender Type">
													<option value="${ProjectConstants.reg_user_gender_male}">Male</option>
													<option value="${ProjectConstants.reg_user_gender_female}">Female</option>
												</select>
											</div>
										</div>
										<div class="form-group row align-items-center">
											<label class="col-sm-4 col-form-label">Email*</label>
											<div class="col-sm-8">
												<form:input path="email_id" class="form-control" id="mail_id"
											readonly="true" />
											</div>
										</div>
										<div class="form-group row align-items-center">
											<label class="col-sm-4 col-form-label">Contact Number*</label>
											<div class="col-sm-8">
												<form:input path="contact" id="contact" value="${contact}" class="form-control contact" 
										readonly="true"/>
											</div>
										</div>
									</div>
								</section>
								<!-- Step 2 -->
								<h5>Personal Information</h5>
								<section>
									<div class="form-wrap max-width-600 mx-auto">
										<div class="form-group row align-items-center">
											<label class="col-sm-4 col-form-label">Current City*</label>
											<div class="col-sm-8">
												<form:input path="curr_city" id="address-autocomplete" class="form-control"
											required="true" onFocus="geolocate()" maxlength="75" />
											</div>
										</div>
										
										
										<div class="form-group row align-items-center">
											<label class="col-sm-4 col-form-label">Home City*</label>
											<div class="col-sm-8">
												<form:input path="home_city" id="address-autocomplete2" class="form-control"
											required="true" onFocus="geolocate()" maxlength="75" />
											<label><input type="checkbox" id="homeCityCheck"> Same as current city.</label>
											</div>
										</div>
										<div class="form-group row align-items-center">
											<label class="col-sm-4 col-form-label">Skills*</label>
											<div class="col-sm-8">
												<form:input path="skills" class="form-control"
											required="false" maxlength="100" placeholder="Enter Your Skill"/>
											</div>
										</div>
										<div class="form-group row align-items-center">
											<label class="col-sm-4 col-form-label">Interests*</label>
											<div class="col-sm-8">
												<form:input path="interest" class="form-control"
											maxlength="100" placeholder="Enter Your Interests"/>
											</div>
										</div>
										<div class="form-group row align-items-center">
											<label class="col-sm-4 col-form-label">Hobbies*</label>
											<div class="col-sm-8">
												<form:input path="hobbies" class="form-control"
											maxlength="100" placeholder="Enter Your Hobbies"/>
											</div>
										</div>
									</div>
								</section>
								<!-- Step 3 -->
								<c:if test="${confirm=='yes'}">
								<h5>Educational Details (A)</h5>
								<section>
									<div class="form-wrap max-width-600 mx-auto">
										<div class="form-group row align-items-center">
											<label class="col-sm-4 col-form-label">Achievements*</label>
											<div class="col-sm-8">
												<form:input path="achievements" class="form-control"
											maxlength="200" placeholder="Enter Your Achievements"/>
											</div>
										</div>
										
										<div class="form-group row align-items-center">
											<div class="col-sm-12">
												<div class="custom-control custom-radio custom-control-inline pb-0">
													<form:radiobutton
													class="custom-control-input degreeRadio" path="studentPast.category" value="DIP" checked="true"/>
													<label class="custom-control-label" class="degreeRadio">Diploma</label>
												</div>
												<div class="custom-control custom-radio custom-control-inline pb-0">
													<form:radiobutton id="ug"
													class="custom-control-input degreeRadio" path="studentPast.category" value="UG"/>
													<label class="custom-control-label">UG</label>
												</div>
												<div class="custom-control custom-radio custom-control-inline pb-0">
													<form:radiobutton class="custom-control-input degreeRadio" id="pg" 
													path="studentPast.category" value="PG"/>
													<label class="custom-control-label">PG</label>
												</div>
												<div class="custom-control custom-radio custom-control-inline pb-0">
													<form:radiobutton class="custom-control-input degreeRadio"
													path="studentPast.category" value="PHD"/>
													<label class="custom-control-label">PHD</label>
												</div>
											</div>
										</div>
										<div class="form-group row align-items-center">
											<label class="col-sm-4 col-form-label">Organization*</label>
											<div class="col-sm-8">
											<select	class="form-control" id="selectCollege" name="collegeName">
													<option selected value="-1" disabled="disabled">Select
														a Institute</option>
													<c:forEach items="${colleges}" var="college">
														<option value="${college.college_id}">${college.college_name}</option>
													</c:forEach>
													<option value="CL0000000000">Other</option>
												</select>
											</div>
										</div>
										<div class="form-group row align-items-center">
											<label class="col-sm-4 col-form-label">Department*</label>
											<div class="col-sm-8">
											<form:select path="studentPast.department" class="form-control" 
											id="select_department" required="true" style="padding: 0px !important;">
												<option selected value="" disabled="disabled">--Select
													a Department--</option>
												<form:options items="${defaultDepartments}" itemValue="dept_id"
													itemLabel="dept_name" />
											</form:select>
											</div>
										</div>
										
										<div class="form-group row align-items-center firstCapital">
											
											<div class="col-sm-12">
												<form:input class="form-control"
													path="studentPast.organization" id="txtCollegeName"/>
											</div>
										</div>
										<form:hidden path="studentPast.stud_past_id" />
										
									</div>
								</section>
								<!-- Step 4 -->
								<h5>Educational Details (B)</h5>
								<section>
									<div class="form-wrap max-width-600 mx-auto">
									<c:if test="${confirm=='yes'}">
										<div class="form-group row align-items-center">
											<label class="col-sm-4 col-form-label">Marks(*Aggregate Till Now)</label>
											<div class="col-sm-8">
												<form:input path="studentPast.description"
												class="form-control" required="true" pattern="[0-9]{1,2}([\.][0-9]{0,2})?"
												 placeholder="Enter Your Marks(*Aggregate till now)"/>
											</div>
										</div>
										
										
										<div class="form-group row align-items-center">
											<label class="col-sm-4 col-form-label">Enrollment No.*</label>
											<div class="col-sm-8">
												<form:input path="curr_enroll_no" class="form-control" maxlength="25"
												pattern="[0-9a-zA-Z/-]{1,25}" placeholder="Enter Your Current Enrollment No."/>
											</div>
										</div>
										<div class="form-group row align-items-center">
											<label class="col-sm-4 col-form-label">Year*</label>
											<div class="col-sm-8">
												<form:select class="form-control"
												name="currName" path="curr_year">
												<option selected="selected" disabled="disabled">--Select
													Year--</option>
												<option value="1">1st Year</option>
												<option value="2">2nd Year</option>
												<option value="3">3rd Year</option>
												<option value="4">4th Year</option>
											</form:select>
											</div>
										</div>
										<div class="form-group row align-items-center">
											<label class="col-sm-4 col-form-label">Board/University*</label>
											<div class="col-sm-8">
												<form:input path="studentPast.board" class="form-control"
												required="true" pattern="[a-zA-Z\s]{1,51}" placeholder="Enter Your Board/University"/>
											</div>
										</div><form:hidden path="studentPast.stud_past_id" /></c:if>
									</div>
								</section></c:if>
								<!-- Step 5 -->
								<h5>Profile Image</h5>
								<section>
									<div class="form-wrap max-width-600 mx-auto">
										<div class="form-group row align-items-center">
											<c:if test="${student.student_name ne null}">
											<input type="file" name="profile_photo" id="upload-photo" accept="image/*"
														class="form-control-file form-control height-auto"><br>
											<div class="col-sm-8">
												<div class="custom-file">
													<img id="profile-upload" src="/get_logo"
												alt="your image" style="max-width: 180px; max-height: 180px;" />
												</div>
											</div></c:if>
											<c:if test="${student.student_name eq null}">
											<input type="file" name="profile_photo" id="upload-photo" accept="image/*" class="form-control-file form-control height-auto"><br>
											<div class="col-sm-8">
												<div class="custom-file">
													<img id="profile-upload" src="/images/blank_profile.jpg"
												alt="your image" style="max-width: 180px; max-height: 180px;" />
												</div>
												
											</div></c:if>
										</div>
										<div class="custom-control custom-checkbox" style="padding-top: 125px">
											<input type="checkbox" name="subscribe" checked="true" class="custom-control-input">
											<label class="custom-control-label" for="customCheck1">Subscribe to SkillPilots newsletters</label>
										</div>
										
									</div>
								</section>
								<button type="button" id="success-modal-btn" hidden data-toggle="modal" data-target="#success-modal" data-backdrop="static">Click Me</button>
								<div class="modal fade" id="success-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
									<div class="modal-dialog modal-dialog-centered max-width-400" role="document">
										<div class="modal-content">
											<div class="modal-body text-center font-18">
												<h3 class="mb-20">Thank You!</h3>
												<div class="mb-30 text-center"><img src="../SkillPilots/dist/dash/vendors/images/success.png"></div>
												Thank Your For Filling Out All The Information!!!!
											</div>
											<div class="modal-footer justify-content-center">
												<input type="submit" class="btn btn-primary" value="Submit" /></div>
											</div>
										</div>
									</div>
									<input type="hidden" id="stat" name="status" value="<c:if test="${student.student_name ne null}">edit</c:if>"/>
							</form:form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- success Popup html Start -->
	
	<!-- success Popup html End -->
	<!-- js -->
	<%@include file="scriptfiles.jsp"%>
	<script type="text/javascript" src="/dist/js/myjs/registration_utility1.js"></script>
	<script type="text/javascript" src="/dist/js/myjs/form_elements.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.0/jquery-confirm.min.js"></script>
	 <script src="/dist/js/myjs/alert.js"></script>
	 <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAUlCQ6MBRc_JIpz68S5-7prwYjevo1s1M&libraries=places&callback=initAutocomplete" async defer></script>
	<script src="/dist/js/myjs/geolocation2.js"></script>
	<script src="/dist/dash/vendors/scripts/core.js"></script>
	<script src="/dist/dash/vendors/scripts/script.min.js"></script>
	<script src="/dist/dash/vendors/scripts/process.js"></script>
	<script src="/dist/dash/vendors/scripts/layout-settings.js"></script>
	<script src="/dist/dash/src/plugins/jquery-steps/jquery.steps.js"></script>
	<script src="/dist/dash/vendors/scripts/steps-setting.js"></script>
		 <script type="text/javascript">	
	
		 $(document).ready(function() {
				$(document).on('change', '.btn-file :file', function() {
					var input = $(this),
						label = input.val().replace(/\\/g, '/').replace(/.*\//, '');
					input.trigger('fileselect', [label]);
				});

				$('.btn-file :file').on('fileselect', function(event, label) {

					var input = $(this).parents('.input-group').find(':text'),
						log = label;

					if (input.length) {
						input.val(log);
					} else {
						if (log) alert(log);
					}

				});
				function readURL(input) {
					if (input.files && input.files[0]) {
						var reader = new FileReader();
						reader.onload = function(e) {
							$('#profile-upload').attr('src', e.target.result);
						}
						reader.readAsDataURL(input.files[0]);
					}
				}

				$("#upload-photo").change(function() {
					readURL(this);
				});
		 });
				
		$("#selectCollege").change(
				function() {
					if ($(this).val() == 'other') {
						$("#txtCollegeName").val("")
						$("#txtCollegeName").attr("placeholder",
								"Enter Institute name here");
						$("#txtCollegeName").show();
					} else {
						var clgName = $("#selectCollege option:selected")
								.text();
						$("#txtCollegeName").val(clgName);
						$("#txtCollegeName").hide();
					}
				});
		
		//getDepts() present in form_elements.js
		$("input[name='studentPast.category']").click(
				function(){
					var degree=$("input[name='studentPast.category']:checked").val();
					getDepts(degree, function(data) {
						$('#select_department').children('option:not(:first)').remove();
						for (var i = 0; i < data.length; i++) {
							$('#select_department').append('<option value="'+data[i].dept_id+'">'+data[i].dept_name+'</option>');
						}
					});
					$("#select_department").val($("#select_department option:first").val());
				}
			);
		
		$(function(){
			$("input[type='radio'][name='studentPast.category']").each(function(){
				if('${student.studentPast.category}' == 'DIP'){
					setOptionbyvalue(document.getElementById('select_department'), '${student.studentPast.department}');
				}else if(this.value == '${student.studentPast.category}'){
					this.checked=true;
					getDepts(this.value, function(data) {
						$('#select_department').children('option:not(:first)').remove();
						for (var i = 0; i < data.length; i++) {
							$('#select_department').append('<option value="'+data[i].dept_id+'">'+data[i].dept_name+'</option>');
						}
						setOptionbyvalue(document.getElementById('select_department'), '${student.studentPast.department}');
					});
				}
			});
			setOptionbyvalue(document.getElementById('gender'), '${gender}');
			
			setOptionbytext(document.getElementById('selectCollege'), '${student.studentPast.organization}');
		});
		
		$('#homeCityCheck').change(function() {
	        if($(this).is(":checked")) {
	            var returnVal = $('#address-autocomplete').val();
	            $('#address-autocomplete2').val(returnVal);
	        }else{
	        $('#address-autocomplete2').val("");
	        }
	    });
		
		function isValidForm(){
			var dob=$(".date_OB").val();
			if(dob.length>4){
				return true;
			}else{
				alert('Please select date of birth');
				$("#datepicker").focus();
				return false;
			}
		}
	</script>
	<script>
	$("#selectCollege").change(function() {
	    var selectedOrgId = $(this).val();
	    
	    // Make an AJAX request to fetch departments for the selected organization
	    $.ajax({
	        url: "/filterDepartment",
	        method: "GET",
	        data: { orgId: selectedOrgId }, // Pass the selected organization ID as a parameter
	        success: function(data) {
	            // Clear existing department options
	            $("#select_department").empty();

	            // Populate department options based on the AJAX response
	            $.each(data, function(index, department) {
	                $("#select_department").append($('<option>', {
	                    value: department.dept_id,
	                    text: department.dept_name
	                }));
	            });
	        },
	        error: function(error) {
	            console.log("Error fetching departments: " + error);
	        }
	    });
	});

	</script>
</body>

</html>