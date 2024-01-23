<div class="modal fade show" id="addMoreEdu" role="dialog">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="panel-heading" style="padding:5px 2px 5px 20px;background: #1b00ff;">
				<button type="button" class="close rembtn" data-dismiss="modal">&times;</button>
				<h6 class="modal-title" style="color: white;">Add Educational Qualification</h6>
			</div>
			<div class="form-group" style="padding-top:15px;text-align:center">
				<label>Select Category :- </label>
				<select id="degreeSelector" class="form-control degreeSelector" style="display:inline;width:150px" >
					<option disabled="disabled" selected="selected">--Select Category--</option>
					<option value="${ProjectConstants.student_education_ssc}">SSC</option>
					<option value="${ProjectConstants.student_education_hsc}">HSC</option>
					<c:if test="${category!=ProjectConstants.student_education_diploma}">
						<option value="${ProjectConstants.student_education_diploma}">DIPLOMA</option>
					</c:if>
					<c:if test="${category==ProjectConstants.student_education_pg||category==ProjectConstants.student_education_phd
						||category=='none'||category==null}">
						<option value="${ProjectConstants.student_education_ug}">UG</option>
					</c:if>
					<c:if test="${category==ProjectConstants.student_education_phd||category=='none'||category==null}">
						<option value="${ProjectConstants.student_education_pg}">PG</option>
					</c:if>
					<c:if test="${category=='none'||category==null}">
						<option value="${ProjectConstants.student_education_phd}">PHD</option>
					</c:if>
				</select>
			</div>
			<div id="edu_div" style="display:none">
			<form id="edu_form">
				<input type="hidden" value="0" name="stud_past_id" id="edu_stud_past_id"/>
				<input type="hidden" value="${user_data.user_id}" name="student_id"/>
				<input type="hidden" name="category" id="edu_category" />
				<div class="row" style="margin-right: 0px;margin-left: 0px;">
					<div class="col-md-6">
						<div class="form-group">
							<label id="edu_organization_label">School Name</label>
							<div id="existing_organization">
								<select class="form-control" id="existing_colleges">
									<option selected value="" disabled="disabled">--Select a Institute--</option>
									<c:forEach items="${colleges}" var="college">
										<option value="${college.college_id}">${college.college_name}</option>
									</c:forEach>
									<option value="other">Other</option>
								</select>
							</div>
							<div id="organization_text" style="margin-top: 15px">
								<input type="text" name="organization" class="form-control" id="edu_organization" maxlength="100"/>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label>Year of Passing</label> <input type="number" name="end_date"
								class="form-control" id="edu_enddate" min="1900" max="${ProjectConstants.current_year}" required/>
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label id="edu_board_label">Board/University</label>
							<input type="text" name="board" class="form-control" id="edu_board" maxlength="80" required/>
						</div>
					</div>
					<div class="col-md-6" id="edu_department_div">
						<div class="form-group">
							<label>Stream/Degree</label>
							<select class="form-control mySelect" name="department" id="edu_departments">
								<option selected value="" disabled="disabled">--Select a Stream/Degree--</option>
							</select>
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label>Marks(%)</label> <input type="text" name="description"
								class="form-control" id="edu_description" pattern="[0-9]{1,2}([\.][0-9]{0,2})?" required/>
						</div>
					</div>
				</div>
				<div class="form-group" style="text-align: center;"><input type="submit" class="btn btn-primary" value="Save"/></div>
			</form>
			</div>
			<div id="edu_div2" style="display:none">
			<form id="edu_form1">
				<input type="hidden" value="0" name="stud_past_id" id="edu_stud_past_id1"/>
				<input type="hidden" value="${user_data.user_id}" name="student_id"/>
				<input type="hidden" name="category" id="edu_category1" />
				<div class="row" style="margin-right: 0px;margin-left: 0px;">
					<div class="col-md-6">
						<div class="form-group">
							<label id="edu_organization_label1">School Name</label>
							<div id="existing_organization1">
								<select class="form-control" id="existing_colleges1">
									<option selected value="" disabled="disabled">--Select a Institute--</option>
									<c:forEach items="${colleges}" var="college">
										<option value="${college.college_id}">${college.college_name}</option>
									</c:forEach>
									<option value="other">Other</option>
								</select>
							</div>
							<div id="organization_text1" style="margin-top: 15px">
								<input type="text" name="organization" class="form-control" id="edu_organization1" maxlength="100"/>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label>Year of Passing</label> <input type="number" name="end_date"
								class="form-control" id="edu_enddate1" min="1900" max="${ProjectConstants.current_year}" required/>
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label id="edu_board_label1">Board/University</label>
							<input type="text" name="board" class="form-control" id="edu_board1" maxlength="80" required/>
						</div>
					</div>
					<div class="col-md-6" id="edu_department_div1">
						<div class="form-group">
							<label>Stream/Degree</label>
							<select class="form-control mySelect" name="department" id="edu_departments1">
								<option selected value="" disabled="disabled">--Select a Stream/Degree--</option>
							</select>
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label>Marks(%)</label> <input type="text" name="description"
								class="form-control" id="edu_description1" pattern="[0-9]{1,2}([\.][0-9]{0,2})?" required/>
						</div>
					</div>
				</div>
				<div class="form-group" style="text-align: center;"><input type="submit" class="btn btn-primary" value="Save"/></div>
			</form>
			</div>
		</div>
	</div>
</div>
<div class="modal fade show" id="addMoreProfession" role="dialog">
	<div class="modal-dialog modal-lg">
		<div class="modal-content modelfix">
			<div class="panel-heading" style="padding:5px 2px 5px 20px;background: #1b00ff;">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h6 class="modal-title" style="color: white;">Add Professional Details</h6>
			</div>
			<div class="form-group" style="padding-top:15px;text-align:center">
				<label>Select Category :- </label>
				<select id="professionSelector" class="form-control" style="display:inline;width:150px">
					<option disabled="disabled" selected="selected">--Select Category--</option>
					<option value="P">Project</option>
					<option value="T">Training</option>
					<option value="W">Work Sample</option>
					<option value="I">Internship</option>
					<option value="J">Job</option>
				</select>
			</div>
			<div id="prof_div" style="display:none">
				<form id="prof_form">
					<input type="hidden" name="stud_past_id" id="prof_stud_past_id"/>
					<input type="hidden" value="${user_data.user_id}" name="student_id" />
					<input type="hidden" name="category" id="prof_category"/>
					<div class="row" style="margin-right: 0px;margin-left: 0px;">
						<div class="col-md-6" id="organization_div">
							<div class="form-group">
								<label id="organization_label">Company Name</label>
								<input type="text" id="prof_organization" name="organization" class="form-control" 
									required maxlength="100"/>
							</div>
						</div>
						<div class="col-md-6" id="profile_div">
							<div class="form-group">
								<label id="profile_label">Role</label>
								<input type="text" name="profile" id="prof_profile" maxlength="50"	class="form-control" required/>
							</div>
						</div>
						<div class="col-md-6" id="description_div">
							<div class="form-group">
								<label>Description</label> <input type="text" name="description" id="prof_description"
									class="form-control" required maxlength="1000"/>
							</div>
						</div>
						<div class="col-md-6" id="location_div">
							<div class="form-group">
								<label>Location</label> <input type="text" name="location" id="prof_location"
									class="form-control" required maxlength="100"/>
							</div>
						</div>
						<div class="col-md-6" id="department_div">
							<div class="form-group">
								<label>Skills</label> <input type="text" name="department" id="prof_department"
									class="form-control" required maxlength="80"/>
							</div>
						</div>
						<div class="col-md-6" id="link_div">
							<div class="form-group">
								<label>Link</label>
								<input type="text" name="link" id="prof_link" class="form-control" required maxlength="100"
									pattern="[a-zA-Z0-9_\-]+(\.[a-zA-Z0-9_\-]+){2,3}$" title="www.example.com"/>
							</div>
						</div>
					</div>
					<div class="row" style="margin-right: 0px;margin-left: 0px;">
						<div class="col-md-6">
							<div class="form-group" id="startdate_div">
								<label>Start Date</label> <input type="text" name="start_date" id="prof_start_date"
									class="form-control date-picker" readonly='true' pattern="dd/MM/yyyy" required/>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group" id="enddate_div">
								<label>End Date</label> <input type="text" name="end_date" id="prof_end_date"
									class="form-control date-picker" readonly='true' required/>
							</div>
						</div>
					</div>
					<div class="form-group" style="text-align: center;"><input type="submit" class="btn btn-primary" value="Save"/></div>
				</form>
			</div>
		</div>
	</div>
</div>