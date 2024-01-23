<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Basic Page Info -->
<meta charset="utf-8">
<title>SkillPilots | Manage Advertisements</title>

<!-- Site favicon -->
<link rel="apple-touch-icon" sizes="180x180" href="/dist/dash/vendors/images/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="16x16" href="/dist/dash/vendors/images/favicon.ico">

<!-- Mobile Specific Metas -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap"
	rel="stylesheet">
<!-- CSS -->
<link rel="stylesheet" type="text/css" href="/dist/dash/vendors/styles/core.css">
<link rel="stylesheet" type="text/css" href="/dist/dash/vendors/styles/icon-font.min.css">
<link rel="stylesheet" type="text/css" href="/dist/dash/src/plugins/datatables/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet" type="text/css" href="/dist/dash/src/plugins/datatables/css/responsive.bootstrap4.min.css">"
<link rel="stylesheet" type="text/css" href="/dist/dash/vendors/styles/style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.14/css/bootstrap-multiselect.css" integrity="sha512-EvvoSMXERW4Pe9LjDN9XDzHd66p8Z49gcrB7LCUplh0GcEHiV816gXGwIhir6PJiwl0ew8GFM2QaIg2TW02B9A==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async
	src="https://www.googletagmanager.com/gtag/js?id=UA-119386393-1"></script>
<script>
	window.dataLayer = window.dataLayer || [];
	function gtag() {
		dataLayer.push(arguments);
	}
	gtag('js', new Date());

	gtag('config', 'UA-119386393-1');
</script>
<style type="text/css">
	.sidebar-menu .dropdown-toggle {
		padding: 15px 12px 15px 54px!important;
		font-size: 15px!important;
	}
	.user-notification .dropdown-toggle .badge {
    position: absolute;
    right: 5px;
    top: 7px;
    /* background: #0f2c7eeb; */
    width: 5px;
    height: 5px;
    display: block;
    padding: 0;
}
.notification-list ul li a {
    display: block;
    position: relative;
    padding: 0px 15px 1px 7px!important;
    min-height: 75px;
    color: #666;
    font-size: 13px;
    font-weight: 500;
    font-family: 'Inter', sans-serif;
    border-radius: 1px;
    }
    .dataTable{
    	white-space: nowrap;
    }
    .datepicker table tr td.redday, .datepicker table tr th.redday {
			background: none !important;
			background-color: red !important;
			background-image: none !important;
			color: White !important;
			font-weight: bold !important;
			font-size: 12pt;
		}
		
		#errmsg {
			color: red;
		}
		
		table.dataTable>tbody>tr.child ul li:first-child {
			padding-top: 0;
			display: block;
			width: 300px;
			overflow: hidden;
			white-space: nowrap;
			text-overflow: ellipsis;
		}
		
		table.dataTable thead th {
			padding: 0px 0px;
			text-align: center !important;
		}
		
		table.dataTable tbody td {
			padding: 10px 0px;
			text-align: center !important;
		}
		
		table.dataTable tbody td.child {
			text-align: left !important;
		}
		
		.multiselect-container {
			overflow: auto;
			max-height: 150px;
			min-width: 250px;
		}
		.multiselect {
			margin: 0px !important;
		}
		
		.checkbox input[type=checkbox], label.checkbox-inline input[type=checkbox]
			{
			opacity: 1;
			position: absolute;
			margin: 0;
			z-index: 1000;
			width: 47px !important;
			height: 17px !important;
			overflow: hidden;
			left: 0;
			pointer-events: none;
		}
		
		.dropdown-menu>.active>a, .dropdown-menu>.active>a:focus, .dropdown-menu>.active>a:hover
		{
			background-color: white !important;
		}
		
		.checkbox {
			color: black !important;
		}
		
		.box .box-body .input-group{
			margin:0px;
		}
		.wrapper {
    
    overflow-x: hidden;
    overflow-y: auto;
}
.page-link{
	height: 34px;
}

.datepicker table tr td.redday, .datepicker table tr th.redday {
			background: none !important;
			background-color: red !important;
			background-image: none !important;
			color: White !important;
			font-weight: bold !important;
			font-size: 12pt;
		}
		
		#errmsg {
			color: red;
		}
		
		table.dataTable>tbody>tr.child ul li:first-child {
			padding-top: 0;
			display: block;
			width: 300px;
			overflow: hidden;
			white-space: nowrap;
			text-overflow: ellipsis;
		}
		
		table.dataTable thead th {
			padding: 0px 0px;
			text-align: center !important;
		}
		
		table.dataTable tbody td {
			padding: 10px 0px;
			text-align: center !important;
		}
		
		table.dataTable tbody td.child {
			text-align: left !important;
		}
		
		.multiselect-container {
			overflow: auto;
			max-height: 150px;
		}
		
		.multiselect-container {
			overflow: auto;
			max-height: 150px;
		}
		
		.checkbox input[type=checkbox], label.checkbox-inline input[type=checkbox]
			{
			opacity: 1;
			position: absolute;
			margin: 0;
			z-index: 1000;
			width: 47px !important;
			height: 17px !important;
			overflow: hidden;
			left: 0;
			pointer-events: none;
		}
		
		.multiselect {
			margin: 0px !important;
		}
		
		.dropdown-menu>.active>a, .dropdown-menu>.active>a:focus, .dropdown-menu>.active>a:hover
			{
			background-color: white !important;
		}
		
		.checkbox {
			color: black !important;
		}
		
		/* below css file for daily schedule scroll */
		#test_daily {
			display: block;
			height: 300px;
			overflow: auto;
		}
		
		#daily_thead, #test_daily tr {
			display: table;
			width: 100%;
			table-layout: fixed;
		}
		
		#daily_thead {
			width: calc(100% - 1em)
		}
		
		/* below css file for weekly schedule scroll */
		#test_weekly {
			display: block;
			height: 300px;
			overflow: auto;
		}
		
		#weekly_thead, #test_weekly tr {
			display: table;
			width: 100%;
			table-layout: fixed;
		}
		
		#weekly_thead {
			width: calc(71% - 1em)
		}
</style>
</head>
<body>
	<div class="pre-loader">
		<div class="pre-loader-box">
			<div class="loader-logo">
				<img src="/dist/dash/vendors/images/deskapp-logos.svg"
					alt="">
			</div>
			<div class='loader-progress' id="progress_div">
				<div class='bar' id='bar1'></div>
			</div>
			<div class='percent' id='percent1'>0%</div>
			<div class="loading-text">Loading...</div>
		</div>
	</div>

	<%@include file="header.jsp"%>

	<div class="right-sidebar">
		<div class="sidebar-title">
			<h3 class="weight-600 font-16 text-blue">
				Layout Settings <span class="btn-block font-weight-400 font-12">User
					Interface Settings</span>
			</h3>
			<div class="close-sidebar" data-toggle="right-sidebar-close">
				<i class="icon-copy ion-close-round"></i>
			</div>
		</div>
		<div class="right-sidebar-body customscroll">
			<div class="right-sidebar-body-content">
				<h4 class="weight-600 font-18 pb-10">Header Background</h4>
				<div class="sidebar-btn-group pb-30 mb-10">
					<a href="javascript:void(0);"
						class="btn btn-outline-primary header-white">White</a> <a
						href="javascript:void(0);"
						class="btn btn-outline-primary header-dark active">Dark</a>
				</div>

				<h4 class="weight-600 font-18 pb-10">Sidebar Background</h4>
				<div class="sidebar-btn-group pb-30 mb-10">
					<a href="javascript:void(0);"
						class="btn btn-outline-primary sidebar-light ">White</a> <a
						href="javascript:void(0);"
						class="btn btn-outline-primary sidebar-dark active">Dark</a>
				</div>
				<div class="reset-options pt-30 text-center">
					<button class="btn btn-danger" id="reset-settings">Reset
						Settings</button>
				</div>
			</div>
		</div>
	</div>

	<div class="left-side-bar">
		<div class="brand-logo">
			<a href="javascript:;"> <img
				src="/dist/dash/vendors/images/deskapp-logo.svg/>" alt="" class="dark-logo"> 
				<img src="/dist/dash/vendors/images/skillpilot_white.svg/>" alt="" class="light-logo">
			</a>
			<div class="close-sidebar" data-toggle="left-sidebar-close">
				<i class="ion-close-round"></i>
			</div>
		</div>
		<div class="menu-block customscroll">
			<div class="sidebar-menu">
				<ul id="accordion-menu">
					<li><a href="company_dashboard" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-house-1"></span><span class="mtext">Dashboard</span>
					</a></li>
					<li><a href="company_internships" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-certificate"></span><span class="mtext">Internships</span>
					</a></li>
					<li><a href="company_posts" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-computer"></span><span class="mtext">Manage Advertisements</span>
					</a></li>
					<li><a href="external_internship_request_company" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-computer-1"></span><span class="mtext">External Request</span>
					</a></li>
					<li><a href="company_internal_request" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-computer-1"></span><span class="mtext">Internal Request</span>
					</a></li>
					<li><a href="college_tie_up" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-repeat-1"></span><span class="mtext">Institute Tie-Ups</span>
					</a></li>
					<li><a href="add_company_member" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-user-11"></span><span class="mtext">Manage Teams</span>
					</a></li>
					<li><a href="company_online_test" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-personal-computer"></span><span class="mtext">Manage Test</span>
					</a></li>
					<li><a href="companyTransactions" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-money-2"></span><span class="mtext">Balances</span>
					</a></li>
					<li><a href="company_report" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-file3"></span><span class="mtext">Internship Reports</span>
					</a></li>
					<li><a href="certificate" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-certificate-1"></span><span class="mtext">Certificates</span>
					</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="mobile-menu-overlay"></div>

	<div class="main-container">
		<div class="xs-pd-20-10 pd-ltr-20">
			<div class="title pb-20 text-center">
				<h6 class="h4 mb-0"><button class="btn btn-primary btn-sm" onclick="showAdversementForm()" style="margin-left: 85%;padding: 2px 6px 2px 6px;">Add Advertisement</button></h6>
			</div>
			<div class="card-box mb-30">
				<div class="pd-20">
					<table id=" " class="data-table table hover">
									<thead class="thead-light" style="height: 34px;">
										<tr>
											<th></th>
											<th>Actions</th>
											<th>Request ID</th>
											<th>Title</th>
											<th>Skill</th>
											<th>Positions</th>
											<th>Duration</th>
											<th>Stipend</th>
											<th>Start Date</th>
											<th>Description</th>
											<th>Requirement</th>
											<th>Location</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${compAdvertisements}" var="item">
											<tr>
												<td></td>
												<td> <span class="pointer" style="background: #1b00ff; color: white; padding: 2px 0px 2px 5px; margin-right: 4px; border-radius: 4px;"
													data-toggle="tooltip" data-placement="top" title="Click Here To Edit Your Advertisement">
													<i class="fa fa-pencil-square-o" aria-hidden="true"onclick="editAdvertisement('${item.id}', '${item.adv_title}', '${item.technology_name}', '${item.capacity}', '${item.duration}', '${item.stipend}', '${item.start_date}', '${item.description}', '${item.requirement}', '${item.location}');"></i>
												  </span>
												  
													<a href="delete_com_adv?adv_id=${item.id}" style="background: #e4350d;padding: 2px 5px 2px 5px;border-radius: 4px;" data-toggle="tooltip" data-placement="top" title="Click Here To Delete Your Advertisement">
														<i style="color: white;" class="fa fa-trash-o"></i>
													</a>
												</td>
												<td><span>${item.id}</span></td>
												<td><c:if test="${fn:length(item.adv_title) > 25}">
														<c:set var="string2" value="${fn:substring(item.adv_title, 0, 15)}" />
														${string2}
														<a href="javascript:void(0);" onclick="readmore(`${item.adv_title}`);"
															style="font-size: 11px;"> read more..</a>
													</c:if>
													<c:if test="${fn:length(item.adv_title) <= 25}">
														${item.adv_title}
													</c:if>
												</td>
												<%-- <td><span>${item.adv_title}</span></td> --%>
												<td><span>${item.technology_name}</span></td>
												<td><span>${item.capacity}</span></td>
												<td><span>${item.duration} Weeks</span></td>
												<td><span>${item.stipend}</span></td>
												<td><span>${item.start_date}</span></td>
												<td><span>${item.description}</span></td>
												
												<td><span>${item.requirement}</span></td>
												<td><span>${item.location}</span></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
				</div>
			</div>
			<div class="card-box mb-30">
				<div class="pd-20">
					
		<form id="schedform" action="/add_advertisment" method="post">
			<div class="col-xs-12" id="comp_adv_form" >
				<div class="box">
					<div class="box-body">
						<span class="glyphicon glyphicon-remove panel-title" style="margin: 5px; float: right;
							cursor: pointer;" onclick="closeForm();"> </span>
					</div>
					<div class="box-body">
					<input id="advertisement_id" name="id" type="hidden" value="">
							<input id="company_id" name="company_id" class="form-control" type="hidden" value="CP0000000001">
						<!--Start data table-->
						<div class="row">
						<div class="col-md-4">
							<div class="form-group">
								<label>* Advertisement Title</label>
								<input id="adv_title" name="adv_title" style="height: 35px;" placeholder="Title for advertisement" class="form-control" type="text" value="" maxlength="50">
							</div>
						</div>
						<div class="col-md-4"><div class="form-group">
								<label>* Skill</label>
								<select id="technology_name" name="technology_name" style="padding: 0px !important;height: 35px;" class="form-control">
									<option value="MongoDB">MongoDB</option><option value="Redis">Redis</option><option value="SASS">SASS</option><option value="Assembly">Assembly</option><option value="OrientDB">OrientDB</option><option value="Microsoft CRM">Microsoft CRM</option><option value="JasmineJS">JasmineJS</option><option value="Powerpoint">Powerpoint</option><option value="Apache Tapestry">Apache Tapestry</option><option value="Web Services">Web Services</option><option value="Magento Framework">Magento Framework</option><option value="PouchDB">PouchDB</option><option value="Framework7">Framework7</option><option value="BackboneJS">BackboneJS</option><option value="Awk">Awk</option><option value="Java Bean Utils">Java Bean Utils</option><option value="Phalcon">Phalcon</option><option value="Numpy">Numpy</option><option value="Google Maps">Google Maps</option><option value="Entity Framework">Entity Framework</option><option value="Flexbox">Flexbox</option><option value="Selenium">Selenium</option><option value="Ajax">Ajax</option><option value="MATLAB">MATLAB</option><option value="VBA">VBA</option><option value="EmberJS">EmberJS</option><option value="Computer Programming">Computer Programming</option><option value="Video Editing">Video Editing</option><option value="Pure-CSS">Pure-CSS</option><option value="R Programming">R Programming</option><option value="Website Development">Website Development</option><option value="Typescript">Typescript</option><option value="ASP - DotNet">ASP - DotNet</option><option value="Scipy">Scipy</option><option value="Python">Python</option><option value="Foundation">Foundation</option><option value="Clojure">Clojure</option><option value="Rexx Programming">Rexx Programming</option><option value="CGI with PERL">CGI with PERL</option><option value="Tcl-Tk">Tcl-Tk</option><option value="Ruby">Ruby</option><option value="XHTML">XHTML</option><option value="Sencha Touch">Sencha Touch</option><option value="RESTful Web Services">RESTful Web Services</option><option value="Arduino">Arduino</option><option value="Microsoft Access">Microsoft Access</option><option value="Go Programing">Go Programing</option><option value="PyGTK">PyGTK</option><option value="MFC">MFC</option><option value="XAML">XAML</option><option value="RequireJS">RequireJS</option><option value="Microsoft Azure">Microsoft Azure</option><option value="Groovy">Groovy</option><option value="Wordpress">Wordpress</option><option value="SQL">SQL</option><option value="COBOL">COBOL</option><option value="Microsoft Expression Web">Microsoft Expression Web</option><option value="LISP">LISP</option><option value="RichFaces">RichFaces</option><option value="SL4A">SL4A</option><option value="Human Resources">Human Resources</option><option value="D3JS">D3JS</option><option value="C">C</option><option value="Apex">Apex</option><option value="PhantomJS">PhantomJS</option><option value="Kotlin">Kotlin</option><option value="Polymer">Polymer</option><option value="LeafletJS">LeafletJS</option><option value="MySQL">MySQL</option><option value="Web2Py">Web2Py</option><option value="iOS Development - Swift2">iOS Development - Swift2</option><option value="OBIEE">OBIEE</option><option value="H2 Database">H2 Database</option><option value="Content Writing">Content Writing</option><option value="MariaDB">MariaDB</option><option value="ReactJS">ReactJS</option><option value="DC.js">DC.js</option><option value="Advanced Excel">Advanced Excel</option><option value="Gulp">Gulp</option><option value="Parrot">Parrot</option><option value="C++">C++</option><option value="Axure RP">Axure RP</option><option value="Yii">Yii</option><option value="Highcharts">Highcharts</option><option value="SVG">SVG</option><option value="Ruby on Rails-2.1">Ruby on Rails-2.1</option><option value="TurboGears">TurboGears</option><option value="Scala">Scala</option><option value="Prototype">Prototype</option><option value="KoaJS">KoaJS</option><option value="Grav">Grav</option><option value="HTTP">HTTP</option><option value="Ionic">Ionic</option><option value="Windows Server 12">Windows Server 12</option><option value="Android">Android</option><option value="RSpec">RSpec</option><option value="Ruby on Rails">Ruby on Rails</option><option value="Microsoft Project">Microsoft Project</option><option value="Python Panda">Python Panda</option><option value="PL-SQL">PL-SQL</option><option value="Cpanel">Cpanel</option><option value="Bootstrap">Bootstrap</option><option value="Swift">Swift</option><option value="Haskell">Haskell</option><option value="Manual Testing">Manual Testing</option><option value="AngularJS">AngularJS</option><option value="LESS">LESS</option><option value="Amazon Web Services">Amazon Web Services</option><option value="WebGL">WebGL</option><option value="WPF">WPF</option><option value="Apache Presto">Apache Presto</option><option value="Cordova">Cordova</option><option value="Illustrator">Illustrator</option><option value="Symfony">Symfony</option><option value="Aurelia">Aurelia</option><option value="Erlang">Erlang</option><option value="Dart">Dart</option><option value="MicroStrategy">MicroStrategy</option><option value="Django">Django</option><option value="VB.Net">VB.Net</option><option value="Euphoria">Euphoria</option><option value="Python Forensics">Python Forensics</option><option value="ExtJS">ExtJS</option><option value="MS SQl Server">MS SQl Server</option><option value="DotNet">DotNet</option><option value="PostgreSQL">PostgreSQL</option><option value="LinQ">LinQ</option><option value="Drupal">Drupal</option><option value="Xamarin">Xamarin</option><option value="Web Icons">Web Icons</option><option value="JSF">JSF</option><option value="Batch Script">Batch Script</option><option value="Flask">Flask</option><option value="D">D</option><option value="Memcached">Memcached</option><option value="IMS DB">IMS DB</option><option value="Microsoft Visio">Microsoft Visio</option><option value="Digital Marketing">Digital Marketing</option><option value="CherryPy">CherryPy</option><option value="VBScript">VBScript</option><option value="Photoshop">Photoshop</option><option value="KDB+">KDB+</option><option value="JavaScript">JavaScript</option><option value="iOS">iOS</option><option value="Electron">Electron</option><option value="WebRTC">WebRTC</option><option value="Zend Framework">Zend Framework</option><option value="Pascal">Pascal</option><option value="Sharepoint">Sharepoint</option><option value="Node.js">Node.js</option><option value="Firebase">Firebase</option><option value="PHP">PHP</option><option value="Designing Tools">Designing Tools</option><option value="MVVM">MVVM</option><option value="JCL">JCL</option><option value="CakePHP">CakePHP</option><option value="VueJS">VueJS</option><option value="Joomla">Joomla</option><option value="Grunt">Grunt</option><option value="HTML5">HTML5</option><option value="ES6">ES6</option><option value="NHibernate">NHibernate</option><option value="Neo4J">Neo4J</option><option value="Codeigniter">Codeigniter</option><option value="Laravel">Laravel</option><option value="DynamoDB">DynamoDB</option><option value="WxPython">WxPython</option><option value="Meteor">Meteor</option><option value="CSS">CSS</option><option value="Unix">Unix</option><option value="Web Sockets">Web Sockets</option><option value="OAuth2.0">OAuth2.0</option><option value="MathML">MathML</option><option value="C-Sharp">C-Sharp</option><option value="Elixir">Elixir</option><option value="Sed">Sed</option><option value="HSQLDB">HSQLDB</option><option value="Adobe Flex">Adobe Flex</option><option value="PhoneGap">PhoneGap</option><option value="Perl">Perl</option><option value="Automation Testing">Automation Testing</option><option value="F-Sharp">F-Sharp</option><option value="GWT">GWT</option><option value="Web Developer's Guide">Web Developer's Guide</option><option value="Business Development">Business Development</option><option value="PyQt">PyQt</option><option value="CouchDB">CouchDB</option><option value="Socket-IO">Socket-IO</option><option value="React Native">React Native</option><option value="jQuery">jQuery</option><option value="CoffeeScript">CoffeeScript</option><option value="Silverlight">Silverlight</option><option value="Sales &amp; Marketing">Sales &amp; Marketing</option><option value="Fortran">Fortran</option><option value="FuelPHP">FuelPHP</option><option value="Mootools">Mootools</option><option value="WCF">WCF</option><option value="Objective C">Objective C</option><option value="Lua">Lua</option><option value="Java">Java</option><option value="Excel">Excel</option><option value="ExpressJS">ExpressJS</option><option value="LOGO">LOGO</option><option value="PySpark">PySpark</option><option value="Windows 10">Windows 10</option><option value="KnockoutJS">KnockoutJS</option><option value="Microsoft Word">Microsoft Word</option><option value="Corel Draw">Corel Draw</option><option value="HTML">HTML</option>
								</select>
							</div></div>
						<div class="col-md-4">
						<div class="form-group">
								<label>* Number of Positions</label>
								<input id="capacity" name="capacity" style="height: 35px;" placeholder="Number of vacancies" class="form-control" type="text" value="">
								<span id="errmsgcap" style="color: red; display: none;">Number Only</span>
							</div></div></div>
							<div class="col-md-12 row" style="padding-right: 0!important;">
						<div class="col-md-4">
							<div class="form-group">
								<label>* Duration(Weeks)</label>
								<input id="duration" name="duration" pattern="\d*" style="height: 35px;" placeholder="Duration of the Internship" class="form-control" type="text" value="" maxlength="15">
								<span id="errmsg"></span>
							</div>
						</div>
						<div class="col-md-4"><div class="form-group">
								<label>Start Date</label>
								<input type="date" name="start_date" id="startdate" class="form-control date-picker" readonly="true" style="height: 35px;">
							</div>
							</div>
						<div class="col-md-4">
						<div class="form-group">
								<label>Stipend</label>
								<input id="stipend" name="stipend" style="height: 35px;" placeholder="Enter stipend" class="form-control" type="text" value="0.0">
							</div></div></div>
						<div class="col-md-12 row" style="padding-right: 0!important;">
						<div class="col-md-6">
						<div class="form-group">
								<label>* Description</label>
								<textarea id="description" name="description" style="height:auto !important;" placeholder="Description for the advertisement" class="form-control" rows="3"></textarea>
							</div></div>
							<div class="col-md-6">
								<div class="form-group">
								<label>Requirements</label>
								<div>
									<select id="select_requirements" name="requirement" style="height: 76px;" class="multiselect form-control" multiple="multiple">
										
											
												
											
												
													<option value="M.B.A. - Human Resource">M.B.A. - Human Resource</option>																																	
													<option value="M.B.A. - Intl.Business">M.B.A. - Intl.Business</option>																																		
													<option value="M.B.A. - Retail">M.B.A. - Retail</option>																																
													<option value="M.B.A. - Operations">M.B.A. - Operations</option>									
										
									</select>
									
								</div>
							</div>
							</div>
							
							
							<div class="col-md-6"></div>
							<div class="col-md-6">
							<div>
								<input type="button" id="nxtbtn" class="btn btn-primary btn-sm pull-right" onclick="showCompanyScheduleform($('#edited_comadv_id').val(),$('#edited_comadv_duration').val());" value="Next" disabled="">
							</div>
						</div>
						</div>
						<!--End data table-->
					</div>
				</div>
			</div>
			<div class="col-sm-12" id="comp_schedule_form" style="display: none;">
				<div class="box">
					<div class="box-body">
						<center>
							<h3>Plan for Internship
								<span class="glyphicon glyphicon-remove panel-title" style="margin: 5px; float: right; cursor: pointer;" onclick="closeForm();"></span>
							</h3>
							<div class="col-sm-12">
								<div class="box-body" id="weekly_form">
								<span style="width:0;"><b style="margin-left:-10px;float: left;">Weeks</b></span>
								<span style="text-align:center"><b>Weekly Assignments</b></span><br>
									<table>
										<thead id="weekly_thead">
											<tr>
											</tr>
										</thead>
										<tbody id="weekly_schd">
	
										</tbody>
									</table>
								</div>
							</div>
						</center>
						<input type="hidden" id="weekly_data_str" name="weekly_data_str" value="">
						<input type="hidden" id="getskipval" name="getskipval" value="">
						<div class="col-sm-12">
						<div class="form-group">
							<input type="submit" id="sbtn"  class="btn btn-sm btn-primary pull-right" value="Submit">
						</div>
						<div class="form-group">
							<input type="button" id="bckbtn" onclick="back()" class="btn btn-sm btn-primary pull-right" style="margin-right: 15px;" value="Back">
						</div>
						<span><a href="#" id="skiplink" onclick="SkipSchdl_form()" style="margin-left: 33px;">Skip</a></span>
						</div>
					</div>
				</div>

			</div>
			<!-- </div>
		</section> -->
		</form>
				</div>
			</div>
	<%@include file="modal_common.jsp"%>		
	<%@include file="modal.jsp"%>
	
			
		</div>
		<div class="modal fade" id="comp_advt_details_modal" role="dialog">
		<div class="modal-dialog" style="width: 750px;">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="panel-heading">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<span class="modal-title">Advertisement Description</span>
				</div>
				<div class="modal-body">

					<p id="advt_details"></p>
				</div>
			</div>
		</div>
	</div>
		<div class="modal fade show" id="comp_advt_details_modal" role="dialog">
		<div class="modal-dialog modal-dialog-centered">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="panel-heading" style="background: #0f2c7eeb;padding: 4px 0px 4px 16px;color: white;">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<span class="modal-title">Advertisement Description</span>
				</div>
				<div class="modal-body">

					<p id="advt_details"></p>
				</div>
			</div>
		</div>
	</div>
	</div>
	<!-- js -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="/dist/js/myjs/company_posts.js"></script>
	<script src="/dist/js/bootstrap-multiselect.js"type="text/javascript"></script>
	
	<script src="/dist/js/myjs/form_elements.js"></script>
	<script src="/dist/js/myjs/internship_schedule.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script src="/dist/dash/vendors/scripts/core.js"></script>
	<script src="/dist/dash/vendors/scripts/script.min.js"></script>
	<script src="/dist/dash/vendors/scripts/process.js"></script>
	<script src="/dist/dash/vendors/scripts/layout-settings.js"></script>
	<script src="/dist/dash/src/plugins/datatables/js/jquery.dataTables.min.js"></script>
	<script src="/dist/dash/src/plugins/datatables/js/dataTables.bootstrap4.min.js"></script>
	<script src="/dist/dash/src/plugins/datatables/js/dataTables.responsive.min.js"></script>
	<script src="/dist/dash/src/plugins/datatables/js/responsive.bootstrap4.min.js"></script>
	<script src="/dist/dash/src/plugins/datatables/js/dataTables.buttons.min.js"></script>
	<script src="/dist/dash/src/plugins/datatables/js/buttons.bootstrap4.min.js"></script>
	<script src="/dist/dash/src/plugins/datatables/js/buttons.print.min.js"></script>
	<script src="/dist/dash/src/plugins/datatables/js/buttons.html5.min.js"></script>
	<script src="/dist/dash/src/plugins/datatables/js/buttons.flash.min.js"></script>
	<script src="/dist/dash/src/plugins/datatables/js/pdfmake.min.js"></script>
	<script src="/dist/dash/src/plugins/datatables/js/vfs_fonts.js"></script>
	<script src="/dist/dash/src/plugins/switchery/switchery.min.js"></script>
	<script src="/dist/dash/src/plugins/bootstrap-tagsinput/bootstrap-tagsinput.js"></script>
	<script src="/dist/dash/vendors/scripts/datatable-setting.js"></script>
	<script type="text/javascript">
		function setRejection_id(id) {
			$('#txt_request_id').val(id);
		}
		function rejectReqId(req_id) {
			$('#rejection_id').val(req_id);
		}

		function assigned_test(request_id, student_id) {
			$.ajax({
				type : "GET",
				url : "getAssignedTestName?request_id=" + request_id,
				success : function(response) {
					$("#student_test_id").val(response[0]);
					$("#test_name_" + student_id).text(response[1]);
					$(".assigned_test_name" + request_id).tooltip({
						title : response[1]
					});
				},
				error : function() {
					alert('not assigned');
				}
			});
		}
		$('.date-picker').datepicker({
			 autoclose: true,
			 format: 'yyyy-mm-dd',
			 startDate: new Date(),
			 todayHighlight: true
			 });
	
		$('#comp_adv_form').hide();
		function showAdversementForm(){
			$('#schedform').trigger("reset");
			document.getElementById("technology_name").selectedIndex = -1;
			$("#nxtbtn").prop('disabled', true);
			$("#comp_schedule_form").hide();
			$('#comp_adv_form').show();
			$('.content-wrapper').animate({scrollTop: $(document).height()}, 1000);
		}
		function closeForm(){
			$('#schedform').trigger("reset");
			document.getElementById("technology_name").selectedIndex = -1;
			$('#comp_adv_form').hide();
			$("#comp_schedule_form").hide();
		}
		
		function SkipSchdl_form(){
			$("#comp_schedule_form").hide();
			$("#nxtbtn").replaceWith('<input type="submit" id="sbtn" onclick="getdataskip()" class="btn btn-primary pull-right" value="Submit');
			$('#comp_adv_form').show();
		}
		
		function type_of_schedule(adv_id,duration){
			var advertisement_id=adv_id;
			$.ajax({
				  type :'GET',
				  url  :'getInternshipByAdv_id?adv_id='+advertisement_id,
				  success : function(response) {
					 if(response=='D'){
						 $('#chk_daily').prop('checked',true);
						 
						 $("#weekly_form").hide();
							var duration_val = document.getElementById("duration").value;
						     var tab = document.getElementById("test_daily");
							while (tab.hasChildNodes()) {
								tab.removeChild(tab.lastChild);
						    } 
						     for (var i = 1; i <= duration_val; i++) {
									$('#test_daily').append('<tr>');
									$('#test_daily').append('<td style="font-weight: bold;">#'+i+'</td>');
									for(j = 1; j <=7; j++){
										$("#test_daily").append('<td><textarea onkeyup="testempty()"  maxlength="45" style="width:125px" id="D'+i+''+j+'"></textarea></td>');
										$("#test_daily").append('</tr>');
									}
									
						  }
						 
						 $.ajax({
								type : "GET",
								dataType : 'json',
								url : "getInternshipScheduleByAdv_id?adv_id="
										+ advertisement_id,
								success : function(response) {
									for (var i = 0; i < response.internshipSchedule.length; i++) {
										// schedule_1 = "{\" + response.internshipSchedule[i].schedule_1 + "\"}"; sk
										// schedule_2 = "{\" + response.internshipSchedule[i].schedule_2 + "\"}";
										// schedule_3 = "{\" + response.internshipSchedule[i].schedule_3 + "\"}";
										// schedule_4 = "{\" + response.internshipSchedule[i].schedule_4 + "\"}";
		
										$.each($.parseJSON(schedule_1), function(k, v) {
											$("#" + k).val(v);
										});
										$.each($.parseJSON(schedule_2), function(k, v) {
											$("#" + k).val(v);
										});
										$.each($.parseJSON(schedule_3), function(k, v) {
											$("#" + k).val(v);
										});
										$.each($.parseJSON(schedule_4), function(k, v) {
											$("#" + k).val(v);
										});
									}
									$("#daily_form").show();
								},
								error : function() {
		
								}
		
							});
					 }
					 else if(response=='W'){
						 $('#chk_weekly').prop('checked',true);
						 var week_1='',week_2='',week_3='',week_4='';
						 
						 $("#daily_form").hide();
							var duration_val = document.getElementById("duration").value;
							var tab = document.getElementById("test_weekly");
							while (tab.hasChildNodes()) {
								tab.removeChild(tab.lastChild);
						    }
							for (var i = 1; i <= duration_val; i++) {
								$('#test_weekly').append('<tr>');
								$('#test_weekly').append('<td style="font-weight: bold;">#'+i+'</td>');
								for(j = 1; j <=1; j++){
									$("#test_weekly").append('<td><textarea onkeyup="testempty()" maxlength="345" style="width:800px; margin-left: 10px; height: 65px;" id="W'+i+''+j+'"></textarea></td>');
									$("#test_weekly").append('</tr>');
								}
							}
						 
						 $.ajax({
								type : "GET",
								dataType : 'json',
								url : "getInternshipScheduleByAdv_id?adv_id="
										+ advertisement_id,
								success : function(response) {
									 for (var i = 0; i < response.internshipSchedule.length; i++) {
										// week_1 = response.internshipSchedule[i].schedule_1.replace(/\"/g, ").split(":");
										// week_2 = response.internshipSchedule[i].schedule_2.replace(/\"/g, ").split(":");
										// week_3 = response.internshipSchedule[i].schedule_3.replace(/\"/g, ").split(":");
										// week_4 = response.internshipSchedule[i].schedule_4.replace(/\"/g, ").split(":");
					                   
										$("#" + week_1[0]).val(week_1[1]);
										$("#" + week_2[0]).val(week_2[1]);
										$("#" + week_3[0]).val(week_3[1]);
										$("#" + week_4[0]).val(week_4[1]);
					                    
									} 
									 $("#weekly_form").show();
								},
								error : function() {
								}
							});
					 }
				  },
				error : function() {
					//alert('error');
				}
			});
		}
		
		
	
	
		
		function readmore(val){
			$("#advt_details").text(val);
			$("#comp_advt_details_modal").modal("show");
		}
		
		// acccept only number
		$(document).ready(function () {
			  //called when key is pressed in textbox
			  $("#duration").keypress(function (e) {
			     //if the letter is not digit then display error and don't type anything
			     if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
			        /* display error message */
			        $("#errmsg").html("Number Only").show().fadeOut("slow");
			               return false;
			    }
			   });
			  
			  $("#capacity").keypress(function (e) {
				     //if the letter is not digit then display error and don't type anything
				     if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
				        /* display error message */
				        $("#errmsgcap").html("Number Only").show().fadeOut("slow");
				               return false;
				    }
				   });
			  
			});
		
		//set default drowp down first element blank
		document.getElementById("technology_name").selectedIndex = -1;
			
		$("#comp_schedule_form").hide();
		function showCompanyScheduleform(com_adv_id,duration){
				$('#comp_adv_form').hide();
				get_schedule(com_adv_id,"INLINE");
				type_of_schedule(com_adv_id,duration);
				$("#comp_schedule_form").show();
		}
		
		function back(){
			$("#comp_schedule_form").hide();
			$('#comp_adv_form').show();
		}
		function testempty(){
			$("#sbtn").prop('disabled', false);
		}
		
		function getdataskip(){
			$("#getskipval").val("yes");
			$("#schedform").submit();
		}	
		</script>
	
	<script>
		function editAdvertisement(id, advTitle, technology, capacity, duration, stipend, startDate, description, requirement, location) {
			// Set values for the fields in the hidden form
			document.getElementById("advertisement_id").value = id;
			document.getElementById("company_id").value = "CP0000000002"; // Change this to the actual company ID
			document.getElementById("adv_title").value = advTitle;
			document.getElementById("technology_name").value = technology;
			document.getElementById("capacity").value = capacity;
			document.getElementById("duration").value = duration;
			document.getElementById("startdate").value = startDate;
			document.getElementById("stipend").value = stipend;
			document.getElementById("description").value = description;
	
			// For multi-select box (requirements)
			var selectedRequirements = requirement.split(','); // Assuming requirement is a comma-separated string
			var selectRequirements = document.getElementById("select_requirements");
			for (var i = 0; i < selectRequirements.options.length; i++) {
				selectRequirements.options[i].selected = selectedRequirements.includes(selectRequirements.options[i].value);
			}
	
			// Show the hidden form
			document.getElementById("comp_adv_form").style.display = "block";
		}
	</script>
	
</body>
</html>
