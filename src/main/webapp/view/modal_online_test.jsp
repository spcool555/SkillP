<div class="modal fade bs-example-modal-xl show" id="questions_modal" role="dialog">
	<div class="modal-dialog modal-xl modal-dialog-centered" style="width: 85%;">
		<!-- Modal content-->
		<div class="modal-content ">
			<div class="panel-heading" style="text-align: center;font-size: 17px;background: #0073b7;color: white;">
				<button type="button" class="close" data-dismiss="modal" style="font-size:20px;">
					&times;</button>
				<span class="modal-title">Question Details</span>
			</div>
			<div class="modal-body questions_modal" style="max-height:90%;padding: 0px;overflow: auto;">
				<div class="col-sm-12" id="div_add_question" style="border:solid 2px;margin:5px;width:99%;padding: 5px;background: #e9ecef57;">
					<div class="col-md-12 form-inline">
						<label style="vertical-align:top;color:black">Question :&nbsp;</label>
						<textarea name="question" class="form-control" id="id_question" style="width:88%; height:65px; margin: 10px 0 0 15px;" 
							maxlength="950" required="required"></textarea>
						<input type="hidden" id="ques_modal_test_id" value="">
						<input type="hidden" id="ques_modal_sec_id" value="">
						<input type="hidden" id="ques_modal_sec_time" value="">
						<input type="hidden" id="ques_modal_sec_mpq" value="">
					</div><br>
					<div class="row col-md-12">
					<div class="option col-md-6 form-inline">
						<input type="radio" name="ans" id="ans_for_ques_A" value="A" />
						<label style="color:black">&nbsp;Option A :&nbsp;</label>
						<textarea name="option_a" class="form-control" id="option_for_ques_A" style="width: 80%;height: 100%;" maxlength="250" required="required"></textarea>
					</div>
					<div class="option col-md-6 form-inline">
						<input type="radio" name="ans" id="ans_for_ques_B" value="B" />
						<label style="color:black">&nbsp;Option B :&nbsp;</label>
						<textarea name="option_b" class="form-control" id="option_for_ques_B" style="width: 80%;height: 100%;" maxlength="250" required="required"></textarea>
					</div></div><br>
					<div class="row col-md-12">
					<div class="option col-md-6 form-inline">
						<input type="radio" name="ans" id="ans_for_ques_C" value="C" />
						<label style="color:black">&nbsp;Option C :&nbsp;</label>
						<textarea name="option_c" class="form-control" id="option_for_ques_C" style="width: 80%;height: 100%;" maxlength="250" required="required"></textarea>
					</div>
					<div class="option  col-md-6 form-inline">
						<input type="radio" name="ans" class="form-control" id="ans_for_ques_D" value="D" />
						<label style="color:black">&nbsp;Option D :&nbsp;</label>
						<textarea name="option_d" class="form-control" id="option_for_ques_D" style="width: 80%;height: 100%;" maxlength="250" required="required"></textarea>
					</div></div><br>
					<div class="row col-md-12">
					<div class="col-md-6" id="div_time_for_ques" style="text-align:center">
						<label style="color:black">Time for Question:</label> 
						<input type="text" name="ques_time" id="time_for_ques" style="width:10%; margin-top:5px;"
							maxlength="2" required="required" />
					</div>
					<div class="col-md-6" id="div_marks_for_ques" style="text-align:center">
						<label style="color:black">Mark per Question :</label>
						<input type="text" name="mark_per_ques" id="marks_for_ques" style="width:10%; margin-top:5px;"
							maxlength="2" required="required" />
					</div></div>
					<div style="text-align:center">
						<input type="submit" class="btn btn-success btn-sm" id="sbtn" onclick="insert_question()"
							style="margin:5px !important;" value="Save" />
					</div>
				</div>
				<center>
					<h5 style="margin:5px;">Existing/Added Questions</h5>
				</center>
				<div class="col-sm-12" style="border:solid 2px;margin:5px;width:99%;padding: 5px;max-height:82%; overflow: auto;">
					<table class="table table-bordered ques_table" id="ques_table">
						<thead class="thead-light">
							<tr>
								<th>Question</th>
								<th>Option A</th>
								<th>Option B</th>
								<th>Option C</th>
								<th>Option D</th>
								<th id="col_time_for_ques">Time</th>
								<th id="col_marks_for_ques">Marks</th>
								<th>Ans</th>
								<th id="col_ques_action">Delete?</th>
							</tr>
						</thead>
						<tbody id="question_details">
		
						</tbody>
					</table>
					<center id="save_edited_ques">
						<input type="button" id="sbtn_ques_btn" onclick="updateQuestionData()" class="btn btn-primary btn-sm" 
							style="margin:5px !important;" value="Save" />
					</center>
				</div>
			</div>
		</div>
	</div>
</div>


<div class="modal fade bs-example-modal-lg show" id="edit_questions_modal" role="dialog">
	<div class="modal-dialog modal-xl modal-dialog-centered" style="width: 75%;">
		<!-- Modal content-->
		<div class="modal-content">
			<div class="panel-heading" style="height:20px;">
				<button type="button" class="close" data-dismiss="modal" style="margin:-8px -5px; font-size:25px;">
					&times;</button>
				<span class="modal-title" id="det_title"></span>
			</div>
			<div class="modal-body" style="max-height:80%;padding:10px;overflow: auto;">
				<table class="table table-bordered edit_ques_table" id="edit_ques_table" style="margin-top: 7px;">
					<thead class="thead-light">
						<tr>
							<th>Questions</th>
							<th>Option A</th>
							<th>Option B</th>
							<th>Option C</th>
							<th>Option D</th>
							<th id="col_time_for_ques">Time</th>
							<th id="col_marks_for_ques">Marks</th>
							<th>Ans</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody id="edit_ques_details">

					</tbody>
				</table>
			</div>
			<center>
				<input type="button" id="sbtn_ques_btn" onclick="getQuestionData()" class="btn btn-primary btn-sm" value="Submit" />
			</center>
		</div>
	</div>
</div>





<!-- <div class="modal fade " id="edit_questions_modal" role="dialog">
	<div class="modal-dialog" style="width: 75%;">
		<div class="modal-content">
			<div class="panel-heading" style="height:20px;">
				<button type="button" class="close" data-dismiss="modal" style="margin:-8px -5px; font-size:25px;">
					&times;</button>
				<span class="modal-title" id="det_title"></span>
			</div>
			<div class="modal-body" style="max-height:80%;padding:10px;overflow: auto;">
				<table class="table table-bordered edit_ques_table" id="edit_ques_table" style="margin-top: 7px;">
					<thead class="thead-light">
						<tr>
							<th>Questions</th>
							<th>Option A</th>
							<th>Option B</th>
							<th>Option C</th>
							<th>Option D</th>
							<th id="col_time_for_ques">Time</th>
							<th id="col_marks_for_ques">Marks</th>
							<th>Ans</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody id="edit_ques_details">

					</tbody>
				</table>
			</div>
			<center>
				<input type="button" id="sbtn_ques_btn" onclick="getQuestionData()" class="btn btn-primary" value="Submit" />
			</center>
		</div>
	</div>
</div>

<div class="modal fade bs-example-modal-xl"
	id="questions_modal" tabindex="-1" role="dialog"
	aria-labelledby="myLargeModalLabel" aria-modal="true">
	<div class="modal-dialog modal-xl modal-dialog-centered">
		<div class="modal-content">
			<div class="modal-header text-center" style="padding: 3px 0 3px 0;background: #317c9e;">
				<h5 class="modal-title" id="myLargeModalLabel"><span style="color: white;">Question Details</span></h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">�</button>
			</div>
			<div class="modal-body questions_modal">
				<div class="col-sm-12" id="div_add_question" style="border:solid 2px;margin:5px;width:99%;padding: 5px;">
					<div class="col-md-12">
						<label style="vertical-align:top;color:black">Question :</label>
						<textarea name="question" id="id_question" style="width:90%; height:65px; border-radius: 15px" 
							maxlength="950" required="required"></textarea>
						<input type="hidden" id="ques_modal_test_id" value="">
						<input type="hidden" id="ques_modal_sec_id" value="">
						<input type="hidden" id="ques_modal_sec_time" value="">
						<input type="hidden" id="ques_modal_sec_mpq" value="">
					</div>
					<div class="option col-md-6">
						<input type="radio" name="ans" id="ans_for_ques_A" value="A" />
						<label style="color:black">Option A :</label>
						<textarea name="option_a" id="option_for_ques_A" maxlength="250" required="required"></textarea>
					</div>
					<div class="option col-md-6">
						<input type="radio" name="ans" id="ans_for_ques_B" value="B" />
						<label style="color:black">Option B :</label>
						<textarea name="option_b" id="option_for_ques_B" maxlength="250" required="required"></textarea>
					</div>
					<div class="option col-md-6">
						<input type="radio" name="ans" id="ans_for_ques_C" value="C" />
						<label style="color:black">Option C :</label>
						<textarea name="option_c" id="option_for_ques_C" maxlength="250" required="required"></textarea>
					</div>
					<div class="option  col-md-6">
						<input type="radio" name="ans" id="ans_for_ques_D" value="D" />
						<label style="color:black">Option D :</label>
						<textarea name="option_d" id="option_for_ques_D" maxlength="250" required="required"></textarea>
					</div>
					<div class="col-md-6" id="div_time_for_ques" style="text-align:center">
						<label style="color:black">Time for Question:</label> 
						<input type="text" name="ques_time" id="time_for_ques" style="width:10%; margin-top:5px;"
							maxlength="2" required="required" />
					</div>
					<div class="col-md-6" id="div_marks_for_ques" style="text-align:center">
						<label style="color:black">Mark per Question :</label>
						<input type="text" name="mark_per_ques" id="marks_for_ques" style="width:10%; margin-top:5px;"
							maxlength="2" required="required" />
					</div>
					<div style="text-align:center">
						<input type="submit" class="btn btn-success" id="sbtn" onclick="insert_question()"
							style="margin:5px !important;" value="Save" />
					</div>
				</div>
				<center>
					<h5 style="margin:5px;">Existing/Added Questions</h5>
				</center>
				<div class="col-sm-12" style="max-height:82%; overflow:scroll;">
					<table class="table table-bordered ques_table" id="ques_table">
						<thead class="thead-light">
							<tr>
								<th>Question</th>
								<th>Option A</th>
								<th>Option B</th>
								<th>Option C</th>
								<th>Option D</th>
								<th id="col_time_for_ques">Time</th>
								<th id="col_marks_for_ques">Marks</th>
								<th>Ans</th>
								<th id="col_ques_action">Delete?</th>
							</tr>
						</thead>
						<tbody id="question_details">
		
						</tbody>
					</table>
					<center id="save_edited_ques">
						<input type="button" id="sbtn_ques_btn" onclick="updateQuestionData()" class="btn btn-primary" 
							style="margin:5px !important;" value="Save" />
					</center>
				</div>
			</div>
		</div>
	</div>
</div> -->