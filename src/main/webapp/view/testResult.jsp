<%-- <div class="modal fade " id="testResultModal" role="dialog" style="z-index: 1060;">
	<div class="modal-dialog ">
		<div class="modal-content modelfix" style="margin-top: 60px; max-height: 85%">
		<div id="divLoading" style="background: white;background-image: url('<c:url value="/images/loading.gif"/>');background-repeat: no-repeat;background-position:center;
     width:100%;height:100%;position:fixed;z-index:1;display:none;"> 
    </div>
			<div class="panel-heading">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">Test Result</h4>
			</div>
			<div class="modal-body">
			<div>
			<span id="announcement"></span>
			</div>
			<div class="col-md-12" id="resultDetailsDiv">
			<span>Result Analysis.</span>
			<table>
					<tbody>
					<tr><td>Correct answers</td>
					<td><span id="spanCA"></span></td></tr>
					
					<tr><td>Wrong answers</td>
					<td><span id="spanWA"></span></td></tr>
					
					<tr><td>Questions not attempted</td>
					<td><span id="spanNA"></span></td></tr>
					
					<tr><td>Marks scored</td>
					<td><span id="spanTotalMarks"></span></td></tr>
					
					<tr><td>Out Of</td>
					<td><span id="spanOutOf"></span></td></tr>
					
					<tr><td>Result</td>
					<td><span id="spanResult"></span></td></tr>
					</tbody>
				</table>
			</div>
				
			</div>
				<div class="modal-footer">
				<span class="label label-success pointer" id="approveReqBtn">
				<i class="fa fa-check" aria-hidden="true"></i> Approve</span>
				<span id="rejectReqBtn" class="label label-danger pointer" data-toggle="modal" data-target="#student_req_reject" onclick="setRejection_id('${student[0]}');">
				<i class="fa fa-times" aria-hidden="true"></i> Reject</span>
				</div>
		</div>
	</div>
</div> --%>

<div class="modal fade bs-example-modal-xl show" id="testResultModal" tabindex="-1" role="dialog"
	aria-labelledby="myLargeModalLabel" aria-hidden="true"
	style="display: none;">
	<div class="modal-xl modal-dialog-centered">
		<div class="modal-content">
			<div class="modal-header" style="background: #0f2c7eeb; padding: 2px 0px 1px 30px;">
				<h5 class="modal-title text-center" id="myLargeModalLabel"
					style="color: white;">Test Result</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">×</button>
			</div>
			<div class="modal-body">
				<div>
					<span id="announcement"></span>
				</div>
				<div class="col-md-12 text-center" id="resultDetailsDiv">
					<h5
						style="background: cadetblue; border-radius: 12px; color: whitesmoke;">Result
						Analysis</h5>
					<br>
					<table class="table-borderless"
						style="width: 70%; line-height: 2rem;">
						<tbody>
							<tr>
								<td style="text-align: -webkit-left;">&#9672; Correct answers</td>
								<td><span id="spanCA"></span></td>
							</tr>

							<tr>
								<td style="text-align: -webkit-left;">&#9672; Wrong answers</td>
								<td><span id="spanWA"></span></td>
							</tr>

							<tr>
								<td style="text-align: -webkit-left;">&#9672; Questions not attempted</td>
								<td><span id="spanNA"></span></td>
							</tr>

							<tr>
								<td style="text-align: -webkit-left;">&#9672; Marks scored</td>
								<td><span id="spanTotalMarks"></span></td>
							</tr>

							<tr>
								<td style="text-align: -webkit-left;">&#9672; Out Of</td>
								<td><span id="spanOutOf"></span></td>
							</tr>

							<tr>
								<td style="text-align: -webkit-left;">&#9672; Result</td>
								<td><span id="spanResult"></span></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="modal-footer" style="border-top: 0px">
					<span class="label label-success pointer" id="approveReqBtn"
						style="background: #23b323d1; border-radius: 4px; padding: 1px 8px 2px 3px; color: white;">
						<i class="fa fa-check" aria-hidden="true"></i> Approve
					</span> <span id="rejectReqBtn" class="label label-danger pointer"
						style="background: red; border-radius: 4px; padding: 1px 8px 2px 3px; color: white;"
						data-toggle="modal" data-target="#student_req_reject"
						onclick="setRejection_id('${student[0]}');"> <i
						class="fa fa-times" aria-hidden="true"></i> Reject
					</span>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="modal fade bs-example-modal-xl show" id="resultsOfStudentsModel" role="dialog">
	<div class="modal-xl modal-dialog-centered" style="width: 75%;">
		<!-- Modal content-->
		<div class="modal-content">
			<div class="panel-heading">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">Test Result</h4>
				<input type="hidden" id="hdnERID">
			</div>
			<div class="modal-body">
				<table class="table table-striped">
					<tr>
						<th></th>
						<th>Student Name</th>
						<th>Result</th>
					</tr>
					<tbody id="stTableBody">
					</tbody>
				</table>
			</div>
			<div class="modal-footer" style="border-top: 0px;">
				<span class="label label-success pointer"
					onclick="approveListOfSt();"> <i class="fa fa-check"
					aria-hidden="true"></i> Approve
				</span> <span id="" class="label label-danger pointer"
					onclick="rejectStListWithReason();"> <i class="fa fa-times"
					aria-hidden="true"></i> Reject
				</span>
			</div>
		</div>
	</div>
</div>