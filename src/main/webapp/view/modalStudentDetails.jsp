<div class="modal fade bs-example-modal-xl show" id="studentDetailsModal" role="dialog" style="padding-left: 21% !important;padding-top: 3%;">
	<div class="modal-xl modal-dialog-centered" style="overflow: auto;text-align: center">
		<div class="modal-content">
			<%-- <div id="divLoading"
				style="background: white;background-image: url('<c:url value="/images/loading.gif"/>');
					background-repeat: no-repeat;background-position:center;width:100%;height:100%;position:fixed;
					z-index:1;display:none;">
			</div> --%>
			<div class="panel-heading">
				<button type="button" class="close" data-dismiss="modal" onclick="closeModal()">&times;</button>
				<h4 class="modal-title" style="background-color: cornflowerblue">Aspirant Details</h4>
			</div>
			<div class="modal-body" id="studDetModelBody">
				<div class="row">
					<div class="col-sm-2">
						<img alt="No Profile Pic" src="" id="studentPic" style="max-height: 100px; max-width: 150;">
					</div>
					<div class="col-sm-4">
						<h3 style="margin-top: 23px; text-transform: capitalize;">
							<span id="name"></span>
						</h3>
					</div>
					<div class="col-sm-6">
						<%-- <img alt="" src="<c:url value="/images/internsorbit.png"/>" style="max-height: 100px;"> --%>
					</div>
				</div><br>
				<div class="container-fluid" id="scrollDiv" style="max-height: 62%; width: 100%; overflow: auto;">
					<div class="col-sm-12">
						<fieldset>
							<legend style="background-color: cornflowerblue">Personal Information</legend>
						</fieldset>
					</div>
					<div class="container-fluid" id="scrollDiv" style="max-height: 62%; width: 100%; overflow: auto;">
						<div class="row">
							<div class="col-sm-4 col-md-4" style="text-align: left;">
								<span><strong>DOB&nbsp;: &nbsp;</strong><span id="dob"></span></span><br>
								<span><strong>Current City&nbsp;: &nbsp;</strong><span id="curr_city"></span></span><br>
								<span><strong>Home City&nbsp;: &nbsp;</strong><span id="home_city"></span></span><br>
							</div>
							<div class="col-sm-4 col-md-4" style="text-align: left;">
								<span><strong>Skills : </strong><span id="skills"></span></span><br>
								<span><strong>Interest : </strong><span id="interest"></span></span><br>
							</div>
							<div class="col-sm-4 col-md-4" style="text-align: left;">
								<span><strong>Hobbies : </strong><span id="hobbies"></span></span><br>
								<span><strong>Achievements : </strong><span	id="achievements"></span></span><br>
							</div>
						</div>
					</div><br>
					<div class="col-sm-12">
						<fieldset>
							<legend style="background-color: cornflowerblue">Educational Details</legend>
							<table id="education_table" class="table table-bordered">
								<thead class="thead-light">
									<tr>
										<th></th>
										<th>Stream</th>
										<th>School/Institute</th>
										<th>Board/University</th>
										<th>Marks(%)</th>
										<th nowrap="nowrap">Year of Passing</th>
									</tr>
								</thead>
								<tbody></tbody>
							</table>
						</fieldset>

						<fieldset id="projectFieldset" style="display: none;">
							<legend style="background-color: cornflowerblue">Project(s)</legend>
							<table id="project_table" class="table table-bordered">
								<thead>
									<tr>
										<th>Project Title</th>
										<th>Role</th>
										<th>Skill</th>
										<th>Start Date</th>
										<th>End Date</th>
										<th>Project Link</th>
										<th>Description</th>
									</tr>
								</thead>
								<tbody></tbody>
							</table>
						</fieldset>

						<fieldset id="trainingFieldset" style="display: none;">
							<legend style="background-color: cornflowerblue">Training(s)</legend>
							<table id="training_table" class="table table-bordered">
								<thead>
									<tr>
										<th>Institute Name</th>
										<th>Training Program</th>
										<th>Skill</th>
										<th>Location</th>
										<th>Start Date</th>
										<th>End Date</th>
									</tr>
								</thead>
								<tbody></tbody>
							</table>
						</fieldset>

						<fieldset id="worksampleFieldset" style="display: none;">
							<legend style="background-color: cornflowerblue">Work Sample(s)</legend>
							<table id="worksample_table" class="table table-bordered">
								<thead>
									<tr>
										<th>Work Sample Link</th>
									</tr>
								</thead>
								<tbody></tbody>
							</table>
						</fieldset>

						<fieldset id="internshipFieldset" style="display: none;">
							<legend style="background-color: cornflowerblue">Internship(s)</legend>
							<table id="internship_table" class="table table-bordered">
								<thead>
									<tr>
										<th>Industry</th>
										<th>Location</th>
										<th>Role</th>
										<th>Skill</th>
										<th>Start Date</th>
										<th>End Date</th>
										<th>Project Link</th>
										<th>Description</th>
									</tr>
								</thead>
								<tbody></tbody>
							</table>
						</fieldset>

						<fieldset id="jobFieldset" style="display: none;">
							<legend style="background-color: cornflowerblue">Job(s)</legend>
							<table id="job_table" class="table table-bordered">
								<thead>
									<tr>
										<th>Industry</th>
										<th>Location</th>
										<th>Role</th>
										<th>Skill</th>
										<th>Start Date</th>
										<th>End Date</th>
										<th>Description</th>
									</tr>
								</thead>
								<tbody></tbody>
							</table>
						</fieldset>
					</div>
				</div>

			</div>
			<!-- <div class="modal-footer">
				<button id="cmd">View PDF</button>
			</div> -->
		</div>
	</div>
</div>

