function get_schedule(advertisement_id,source){
	duration = $("#duration").val();
	var tab = document.getElementById("weekly_schd");
	while (tab.hasChildNodes()) {
		tab.removeChild(tab.lastChild);
	}
	for (var i = 1; i <= duration; i++) {
		var row = '<tr><td style="font-weight:bold;width:5%;">#'+i+'</td>';
		for(j = 1; j <=1; j++){
			row += '<td style="padding-left: 30px;padding-bottom: 15px;"><textarea class="form-control" onkeyup="testempty()" maxlength="345" style="width:100% ;height:65px;" id="W'+i+''+j+'"';
			if(source == 'ADV')
				row += ' disabled=true';
			row += '></textarea></td>';
		}
		row += '</tr>';
		$('#weekly_schd').append(row);
	}

	if(source == 'CIR')
		$('#schedule_modal').modal('show');

	if(null != advertisement_id && advertisement_id != ""){	
		$.ajax({
			type : "GET",
			dataType : 'json',
			url : "getInternshipScheduleByAdv_id?adv_id=" + advertisement_id,
			success : function(response) {
				if (response.internshipSchedule != undefined){
					var week_1='',week_2='',week_3='',week_4='';
					for (var i = 0; i < response.internshipSchedule.length; i++) {
						//alert(response.internshipSchedule[i].schedule_2);
						week_1 = response.internshipSchedule[i].schedule_1.replace(/\"/g, "").split(":");
						week_2 = response.internshipSchedule[i].schedule_2.replace(/\"/g, "").split(":");
						week_3 = response.internshipSchedule[i].schedule_3.replace(/\"/g, "").split(":");
						week_4 = response.internshipSchedule[i].schedule_4.replace(/\"/g, "").split(":");

						$("#" + week_1[0]).val(week_1[1]);
						$("#" + week_2[0]).val(week_2[1]);
						$("#" + week_3[0]).val(week_3[1]);
						$("#" + week_4[0]).val(week_4[1]);
					}
					if(source == 'ADV')
						$('#schedule_modal').modal('show');
				}else{
					if(source == 'ADV')
						swal("",no_plan_internship, "error");
						//alertMsg(no_plan_internship);
				}
			},error : function() {
				alert(error_fetch);
			}
		});
	}
	$("#weekly_form").show();
}

//save schedule internship
function getschddata(){
	var str = "";
	var duration_val = $("#duration").val();	
	for (var i=1;i<=duration_val;i++){
		for(var j =1; j<=1; j++){
			var id = "W"+i+""+j;
			$('#'+id).each(function(){
				str += '"'+id+'"'+":"+'"'+$('#'+id).val()+'"'+",";
			});
		}
	}
	$("#weekly_data_str").val(str);
}

function show_schedule_modal(advertisement_id,duration,source){
	$("#duration").val(duration);
	get_schedule(advertisement_id,source);
}

function testempty(){
	$("#sbtn").prop('disabled', false);
}

$('#close_schedule_modal').on('click', function(){location.reload();});
$('#cancel_schedule_modal').on('click', function(){location.reload();});

function saveschedule(){
	getschddata();
	var adv_id = $('#adv_id').val();
	var group_id = $('#group_id').val();
	var weekly_data_str = $("#weekly_data_str").val();

	$.ajax({
		type : "POST",
		url : "saveschedule",
		data: {adv_id:adv_id,group_id:group_id,weekly_data_str:weekly_data_str},
		success : function(response) {
			$('#schedule_modal').modal('hide');
			location.reload();
			return response;
		},
		error : function() {
			alert('oops! Some error occured while saving data. Please try again after sometime.');
		}
	});
}