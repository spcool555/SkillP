//get all interns group student
function studentId(studentIds){
	var stud_ids=studentIds.id;	
	$.ajax({
		type:"GET",
		url : "internsgroupIds?studentids="+stud_ids,
		success : function(response) {
			//  alert(response);
			$("#s_data").empty();
			for (i = 0; i < response.length; i++) {
				var func="dispStudentData('"+response[i].student_id+"')";
				var row='<tr><td style="padding:0.5rem"><span class="pointer actionSpan" data-toggle="modal" data-target="#studentDetailsModal" onclick="'+func+'">'+response[i].student_name+'</span></td></tr>';
				$("#s_data").append(row);
			}
		},error : function() {
			alert(error_verify);
		}
	});
}

//college id replca eby coll name
$(document).ready(function() {
	$(window).load(function() {
		$(".cmp_role_three_id").each(function(){
			var cmp_role_three_id=this.id;
			// get  name of company role 3 user 
			$.ajax({
				type : "GET",
				url : "get_user?user_id="+cmp_role_three_id,
				success : function(response) {
					$('.cmp_role_three_id'+cmp_role_three_id).val(response.username);
					return response;
				},error : function() {
					alert(error_fetch);
				}
			});
		});

		$(".college_name").each(function(){
			var cmp_id=this.id;
			$.ajax({
				type : "GET",
				url : "getCollegeDetails?college_id="+cmp_id,
				success : function(response) {
					var clgDetails=response.college;
					$(".clgname"+cmp_id).html(clgDetails.college_name);
					return clgDetails;
				},error : function() {
					alert(error_fetch);
				}
			});
		});
	});
});

//approve interns request
function approveReqId(req_id){
	var rej_msg=null;
	$.ajax({
		type:"GET",
		url : "com_internal_req_A_R?req_id="+req_id+"&reject_msg="+rej_msg,
		success : function(response) {
			location.reload();
		},error : function() {
			alert(error_save);
		}
	});
}

//set id on model
function rejectReqId(req_id){
	$('#rejection_id').val(req_id);
}

//Rejct internal Req by Company USer
function sendRejection(){
	var reject_msg=$("#rejection_msg").val();
	var req_id=$("#rejection_id").val();
	$.ajax({
		type : "GET",
		url : "com_internal_req_A_R?req_id="+req_id+"&reject_msg="+reject_msg,
		success : function(response) {
			location.reload();
			return response;
		},error : function() {
			alert(error_save);
		}
	});
}

//set date for internship
function scheduleInternship(requested_id, team_name) {
	  var sdate = $('#datepicker' + requested_id).val();
	  if (sdate == "") {
	    alert("Please select date.");
	  } else {
	    var request_id = requested_id;
	    var str = null;
	    var schd_status = null;
	    var arr;

	    $.ajax({
	      type: "GET",
	      url: "scheduleInternshipByCompany_Team?sdate=" + sdate + "&request_id=" + request_id + "&team_name=" + team_name,
	      success: function (response) {
	        $.each(response, function (key, val) {
	          if (key != null && val != null) {
	            str = key;
	            schd_status = val;
	          }
	        });
	        if (str != null) {
	          arr = str.split(",");
	        }

	        if (schd_status == weekly_schedule_internship) {
	          var confirmMessage = "Schedule Internship?\n\nPress OK to schedule or Cancel to reload.";
	          if (confirm(confirmMessage)) {
	            $('#adv_id').val(arr[0]);
	            show_schedule_modal(arr[0], arr[1], "CIR");
	          } else {
	            location.reload();
	            return false;
	          }
	        } else {
	          var adv_id;
	          if (schd_status == 'no-schedule') {
	            $('#adv_id').val(arr[0]);
	            adv_id = arr[0];
	          } else {
	            $('#group_id').val(arr[0]);
	          }
	          var confirmMessage = "Schedule Internship?\n\nPress OK to schedule or Cancel to reload.";
	          if (confirm(confirmMessage)) {
	            show_schedule_modal(adv_id, arr[1], "CIR");
	          } else {
	            location.reload();
	            return false;
	          }
	        }
	        return response;
	      },
	      error: function () {
	        alert(error_fetch);
	      }
	    });
	  }
	}


//internal request rejection reason
function rejectionReason(rejectionId) {
	var id = rejectionId.id;
	$.ajax({
		type : "GET",
		url : "intReqRejReason?request_id=" + id,
		success : function(response) {
			alert(response);
		},error : function() {
			alert('Error occured');
		}
	});
}