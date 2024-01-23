




<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<!-- Basic Page Info -->
	<meta charset="utf-8">
	<title>SkillPilots | Login/Registration</title>

	<!-- Site favicon -->
	<link rel="apple-touch-icon" sizes="180x180" href="/dist/dash/vendors/images/apple-touch-icon.png">
	<link rel="icon" type="image/png" sizes="16x16" href="/dist/dash/vendors/images/favicon.ico">

	<!-- Mobile Specific Metas -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

	<!-- Google Font -->
	<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
	<!-- CSS -->
	<link rel="stylesheet" type="text/css" href="/dist/dash/src/plugins/sweetalert2/sweetalert2.css">
	<link rel="stylesheet" type="text/css" href="/dist/dash/vendors/styles/core.css">
	<link rel="stylesheet" type="text/css" href="/dist/dash/vendors/styles/icon-font.min.css">
	<link rel="stylesheet" type="text/css" href="/dist/dash/vendors/styles/style.css">

	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-119386393-1"></script>
	<script type="text/javascript">
		$(function() {
			var p = document.createElement('script');
			p.type = 'text/javascript';
			p.async = true;
			p.src = 'https://apis.google.com/js/client.js?onload=onLoadFunction';
			var s = document.getElementsByTagName('script')[0];
			s.parentNode.insertBefore(p, s);
		});
		
		function forceLower(strInput) 
		{
		strInput.value=strInput.value.toLowerCase();
		}
		
		$(function(){
			var check = false;
			(function(a){if(/(android|bb\d+|meego).+mobile|avantgo|bada\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|iris|kindle|lge |maemo|midp|mmp|mobile.+firefox|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|series(4|6)0|symbian|treo|up\.(browser|link)|vodafone|wap|windows ce|xda|xiino/i.test(a)||/1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|yas\-|your|zeto|zte\-/i.test(a.substr(0,4))) check = true;})(navigator.userAgent||navigator.vendor||window.opera);
			
			if (check){
				document.getElementsByClassName('login')[0].style.display = 'none';
				document.getElementsByClassName('mobile')[0].style.display = 'block';
			}else{
				document.getElementsByClassName('mobile')[0].style.display = 'none';
			}
		});
	</script>
		<style type="text/css">
		@media screen and (max-width: 991px) {
	.logo {
		margin-left: 0px
	}
	.image {
		width: 300px;
		height: 220px
	}
	.border-line {
		border-right: none
	}
	.card2 {
		border-top: 1px solid #EEEEEE !important;
		margin: 0px 15px
	}
}
.alert-danger {
    color: #721c24;
    background-color: #f8d7da;
    border-color: #f5c6cb;
}
.alert {
    position: relative;
    padding: .75rem 1.25rem;
    margin-bottom: 1rem;
    border: 1px solid transparent;
    border-radius: .25rem;
}
.fade {
    transition: opacity .15s linear;
}
@media only screen and (max-width: 600px) {
	.login {
		display: none;
	}
	.mobile {
		display: block !important;
	}
}

@media only screen and (min-width: 601px) {
	.login {
		display: block;
	}
	.mobile {
		display: none;
	}
}
		.login-box .login-title {
			padding: 0 0 10px;
			margin-bottom: 0px;
		}
		.select-role {
			margin-bottom: 0px;
			padding: 0 5px;
		}
		.fade:not(.show) {
     opacity: 1;
}
		</style>
</head>
<body class="login-page">
	<div class="login-header box-shadow">
		<div class="container-fluid d-flex justify-content-between align-items-center">
			<div class="brand-logo" style="width: 12%;">
				<a href="/home">
					<img src="/dist/dash/vendors/images/deskapp-logo.svg" alt="">
				</a>
			</div>
		</div>
	</div>
	<div class="login login-wrap d-flex align-items-center flex-wrap justify-content-center">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-md-6 col-lg-7">
					<img src="/dist/dash/vendors/images/login-page-img.png" alt="">
				</div>
				<div class="col-md-6 col-lg-5">
					<div class="login-box bg-white box-shadow border-radius-10">
						<div class="login-title">
							<h6 class="text-center text-primary">Register With SkillPilots As</h6>
						</div>
						
						<form id="user" action="login" method="post">
							<div class="select-role">
								<div class="btn-group btn-group-toggle" data-toggle="buttons" style="flex-wrap: inherit;">
									<label class="btn active"><a href="student_reg_step1">
										<input type="radio" name="options" id="admin">
										<div class="icon"><img src="/dist/dash/vendors/images/person.svg" class="svg" alt=""></div>
										<span>I'm</span>
										Student</a>
									</label>
									<label class="btn"><a href="college_reg">
										<input type="radio" name="options" id="user">
										<div class="icon"><img src="/dist/dash/vendors/images/briefcase.svg" class="svg" alt=""></div>
										<span>I'm</span>
										Institute</a>
									</label>
									<label class="btn"><a href="comp_reg">
										<input type="radio" name="options" id="admin">
										<div class="icon"><img src="/dist/dash/vendors/images/briefcase.svg" class="svg" alt=""></div>
										<span>I'm</span>
										Industry</a>
									</label>
								</div><br>
								<div class="login-title">
							<h5 class="text-center text-primary">Login To SkillPilots</h5>
						</div>
							</div>
							<div class="input-group custom">
								<input id="email_id" name="email" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+(\.[a-z]+){1,2}$" placeholder="Enter Your Valid Email Address" autofocus="autofocus" class="form-control form-control-lg" required="required" type="text" value=""/>
								<div class="input-group-append custom">
									<span class="input-group-text"><i class="icon-copy dw dw-user1"></i></span>
								</div>
							</div>
							<div class="input-group custom">
								<input id="psswrd_data" name="password" name="password" placeholder="Enter Your Password" type="password" class="form-control form-control-lg" required="required" value=""/>
								<div class="input-group-append custom">
									<span class="input-group-text"><i class="dw dw-padlock1"></i></span>
								</div>
							</div>
							<div class="row pb-20">
								<div class="col-6">
									<div class="custom-control custom-checkbox">
										<input type="checkbox" class="custom-control-input" id="customCheck1">
										<label class="custom-control-label" for="customCheck1">Remember</label>
									</div>
								</div>
								<div class="col-6">
									<div class="forgot-password"><a href="forgot_password">Forgot Password</a></div>
								</div>
							</div>
							<div class="row pb-20">
								
							
							
							
							<span style="color: red;"></span>
							</div>
							
							<div class="row">
								<div class="col-sm-12">
									<div class="input-group mb-0">
										<input  class="btn btn-primary btn-sm btn-block" type="submit" value="Sign In">
										
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="mobile">
		<div
			style="font-size: 30px; color: #1974c3; padding: 20px; text-align: center">
			<p>Hi there!</p>
			<p>We are only available for larger screens as of now. We'll be
				here soon. Please try again later.</p>
			<p>
				For students we also have our <br> <a
					href='https://play.google.com/store/apps/details?id=com.internsorbit'
					style="color: #01af36;"><i class="fa fa-android"></i> App</a>
			</p>
		</div>
	</div>
	<!-- js -->
	<script src="/dist/dash/vendors/scripts/core.js"></script>
	<script src="/dist/dash/vendors/scripts/script.min.js"></script>
	<script src="/dist/dash/vendors/scripts/process.js"></script>
	<script src="/dist/dash/vendors/scripts/layout-settings.js"></script>
	
	<!-- add sweet alert js & css in footer -->
	<script src="/dist/dash/src/plugins/sweetalert2/sweetalert2.all.js"></script>
	<script src="/dist/dash/src/plugins/sweetalert2/sweet-alert.init.js"></script>
</body>
</html>