//after click on confirm button show feedback form
function showFeedback(duration, internship_id) {
	$("#total_weeks").val(duration);
	$("#feedbackBody").empty();
	if ($("#cmtLabel").length) {
		$("#cmtLabel").remove();
	}
	$("#txt_internship_id").val(internship_id);
	//generated no of rows equals to no of weeks
	for (var week = 1; week <= duration; week++) {
		var row = "<tr id='row_" + week + "'><td>" + week + "</td>";
		for (var param_cnt = 1; param_cnt <= 8; param_cnt++) {
			row += "<td><input id='param" + param_cnt + "_" + week
				+ "' class='param-txt' type='text' onchange='validate(this);'></td>"
		}
		row += "<td><input id='avgParam_"+week+"' class='param-txt' type='text' readonly='readonly'></td>"
			+ "<td><span class='addFeed' title='Submit Feedback' id='action_"+week+"' onclick='confirmAction(this);'>"
			+ "<i class='fa fa-check pointer greenHov actIcon'></i></span></td></tr>";
		$("#feedbackBody").append(row);
	}

	//retrieve given feedbacks and disabled rows of given feedback
	getFeedback(internship_id, function(data) {
		var feed = data.feedback;
		var feedWeek = data.feedWeed;
		//alert(feedWeek);
		for (var i = (feedWeek + 1); i <= duration; i++) {
			$("#row_" + i).find("*").attr("disabled", "disabled");
			$("#row_" + i).find("*").css("pointer-events", "none");
		}

		for (var i = 1; i < (feed.length + 1); i++) {
			var params = feed[i - 1].split("-");
			for (var j = 0; j < 9; j++) {
				var index = j + 1;
				$("#param" + index + "_" + i).val(params[j]);
			}
			$("#avgParam_" + i).val(params[8]);
			$("#row_" + i).find("*").attr("disabled", "disabled");
			$("#row_" + i).find("*").css("pointer-events", "none");
		}

	});
	$("#feebackModal").modal("show");
}

//ajax call of getting feedbacks from database
function getFeedback(internship_id, callback) {
	
	$.ajax({
		type : 'get',
		url : 'feedbackFromCompany?internship_id=' + internship_id,
		success : function(response) {
			callback(response);
		},
		error : function() {
			alert(error_fetch);
			console.log("Data Not saved");
		}
	});
}
var allData;
//save feedback
function confirmAction(elem) {
	var week = elem.id.split("_").pop();
	var internship_id = $("#txt_internship_id").val();
	console.log("Feedback not proccessed");
	if (week > 1) {
		for (var i = 1; i < week; i++) {
			if (!$('#param1_' + i).is('[disabled]')) {
				alert('Please give pending feedback first.');
				return;
			}
		}
	}
	
	//check for empty fields
	for (var i = 1; i <= 8; i++) {
		if ($('#param' + i + '_' + week).val() == '') {
			alert('Please fill all the parameters.');
			return;
		}
	}
	
	var fdata = "{";
	for (var i = 1; i < 9; i++) {
		var paramval = $('#param' + i + '_' + week).val();
		fdata = fdata + '"parameter_' + i + '":' + '"w' + week
		+ '-' + paramval + '",';
	}
	var overall = $("#avgParam_" + week).val();
	fdata = fdata + '"overall":' + '"w' + week + '-' + overall
		+ '"}';
		
	allData = {
			'feedbakData' : fdata,
			'internship_id' : internship_id,
			'comment' : 'internsorbit'
	};
	/*if ($("#total_weeks").val() == week) {
		alert('same');
		$("#commentModal").modal("show");
		$("#row_" + week).find("*").attr("disabled", "disabled");
	} else {*/
		saveFeedback(allData);
		$("#row_" + week).find("*").attr("disabled", "disabled");
		allData = '';
		$("#action_"+week).css("pointer-events", "none");
	
}

function saveFeedback(data) {
    console.log("save feedback not work");
    console.log(data);
    $.ajax({
        type: "POST",
        url: "saveFeedback",
        dataType: "text",
        data: data,
        success: function (response) {
            if (response === "C") {
                alert("Congrasulation Internship Completed successfully!");
            } else {
                alert("Feedback saved successfully!");
            }
        }, 
        error: function () {
            
        }
    });
}



function commentAndSaveFeedback() {
	allData.comment = $("#feedbackComment").val();
	saveFeedback(allData);
	allData = '';
	//$("#feebackModal").modal("hide");
	location.reload(true);
	window.location = "company_internships";
}

function validate(elem) {
	var week = elem.id.split("_").pop();
	if (week > 1) {
		for (var i = 1; i < week; i++) {
			if (!$('#param1_' + i).is('[disabled]')) {
				alert("Please give pending week's feedback first.");
				$(elem).val('');
				return;
			}
		}
	}
	elem.value = elem.value.replace(/[^0-9]/g, '');
	console.log("validating #elem.value:"+elem.value);
	if (Number($(elem).val()) > 10) {
		alert('You can not enter value greater than 10.');
		$(elem).val(10);
	}
	var total = 0;
	var error = 'no';
	for (var i = 1; i < 9; i++) {
		if ($.isNumeric($('#param' + i + '_' + week).val())) {
			total = total
			+ parseInt($('#param' + i + '_' + week).val());
		}
	}
	$('#avgParam_' + week).val(Math.round(total / 8));
}

function cancelInternshipModal(internship_id, activeclass){
	var title = 'Cancel Internship',msg = 'Do you really want to cancel this internship?';
	confirmDialog(function(resp) {
		if (resp == button_yes) {
			$("#internship_id_txt").val(internship_id);
			$("#currentTab").val(activeclass);
			$("#setCompCancellationReason").modal("show");
		}
	}, title, msg,button_yes,button_no);
}

function cancelInternshipByComp(){
	var cancellationReason=$("#txtCancellationReason").val();
	var internship_id=$("#internship_id_txt").val();
	var activeclass=$("#currentTab").val();
	if(cancellationReason==''){
		alert("Please enter cancellation reason.");
	}else{
		if(cancellationReason.length>90){
			alert("Reason length should not be more than 90 characters.");
		}else{
			$.ajax({
				type : 'get',
				url : 'editInternship?internship_id=' + internship_id
				+ "&action=" + internships_status_cancelled + "&activeclass="
				+ activeclass+ "&cancellationReason=" + cancellationReason,
				success : function(response) {
					if(response!="success"){
						$("#divLoading").hide();
						alert(response);
					}else{
						$("#divLoading").hide();
						location.reload(true);
					}
				},
				error : function() {
					$("#divLoading").hide();
					alert(error_fetch);
				}
			});
		}
		
	}
	
}

function editInternship(internship_id, action, activeclass) {
    var title, msg;

    if (action == internships_status_ongoing) {
        title = 'Start Internship';
        msg = 'Do you really want to start this internship?';
    } else if (action == internships_status_cancelled) {
        title = 'Cancel Internship';
        msg = 'Do you really want to cancel this internship?';
    }

    // Use the built-in confirm dialog
    if (confirm(msg)) {
        $("#divLoading").show();
        $.ajax({
            type: 'get',
            url: 'editInternship?internship_id=' + internship_id
                + "&action=" + action + "&activeclass="
                + activeclass,
            success: function(response) {
                if (response != "success") {
                    $("#divLoading").hide();
                    alert(response);
                } else {
                    $("#divLoading").hide();
                    location.reload(true);
                }
            },
            error: function() {
                $("#divLoading").hide();
                alert(error_fetch);
            }
        });
    }
}


$('#feebackModal').on('hidden.bs.modal', function() {
	$("#total_weeks").val('');
});

function viewFeedback(internship_id) {
	$("#feedbackBody").empty();
	if ($("#cmtLabel").length) {
		$("#cmtLabel").remove();
	}
	getFeedback(internship_id, function(data) {
		var feed = data.feedback;
		var a1 = 0, a2 = 0, a3 = 0, a4 = 0, a5 = 0, a6 = 0, a7 = 0, a8 = 0, a9 = 0;
		var feedlength = feed.length;
		if(feedlength>0){
			for (var week = 1; week <= feedlength; week ++) {
				var params = feed[week-1].split("-");
				var row = "<tr><td>" + (week) + "</td>"
				
				for (var prm_cnt = 0; prm_cnt < 8; prm_cnt++)
					row += "<td>" + params[prm_cnt] + "</td>"
				//add avg column
				row += "<th>" + params[8] + "</th>" + "<td></td></tr>";
				a1 = a1 + parseInt(params[0]) / feedlength;
				a2 = a2 + parseInt(params[1]) / feedlength;
				a3 = a3 + parseInt(params[2]) / feedlength;
				a4 = a4 + parseInt(params[3]) / feedlength;
				a5 = a5 + parseInt(params[4]) / feedlength;
				a6 = a6 + parseInt(params[5]) / feedlength;
				a7 = a7 + parseInt(params[6]) / feedlength;
				a8 = a8 + parseInt(params[7]) / feedlength;
				a9 = a9 + parseInt(params[8]) / feedlength;
				$("#feedbackBody").append(row);
			}
			var row = "<tr class='success'><th>Averages</th>"
				+ "<th>" + Math.round(a1) + "</th>"
				+ "<th>" + Math.round(a2) + "</th>"
				+ "<th>" + Math.round(a3) + "</th>"
				+ "<th>" + Math.round(a4) + "</th>"
				+ "<th>" + Math.round(a5) + "</th>"
				+ "<th>" + Math.round(a6) + "</th>"
				+ "<th>" + Math.round(a7) + "</th>"
				+ "<th>" + Math.round(a8) + "</th>"
				+ "<th>" + Math.round(a9) + "</th>" + "<th></th></tr>";
			$("#feedbackBody").append(row);
			var commentLabel = "<label id='cmtLabel'><strong>Comment : </strong>"
				+ data.comment + "</label>";
			$("#feebackModal").modal("show");
			$("#feedbackContentDiv").append(commentLabel);
		}else{
			alert("Feedback not given yet.");
		}
	});
}

function cancelMyInternship(internship_id){
	$("#internship_id_txt").val(internship_id);
	$("#setCancellationReason").modal("show");
}
function cancelInternshipByStud() {
	var reason=$("#txtCancellationReason").val();
	var internship_id=$("#internship_id_txt").val();
	if(reason==''){
		alert("Please enter cancellation reason.");
	}else{
		if(reason.length>90){
			alert("Reason length should not be more than 90 characters.");
		}else{
				if (confirm('Do you really want to cancel this internship?')) {
					$("#setCancellationReason").modal("hide");
					$("#divLoading").show();
					$.ajax({
						type : 'get',
						url : 'cancel_my_internship?internship_id=' + internship_id+'&reason='+reason,
						success : function(response) {
							if(response!="success"){
								$("#divLoading").hide();
								alert("Internship successfully cancelled.");
							}else{
								$("#divLoading").hide();
								location.reload(true);
							}
						},
						error : function() {
							$("#divLoading").hide();
							alert(error_fetch);
						}
					});
				}
		}
}
}