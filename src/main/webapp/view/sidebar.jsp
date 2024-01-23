<nav id="sidebar">
	<div class="sidebar-header" style="padding: 6px!important;">
		<img
						src="" class="user-image"
						alt="User Image" style="height: 90px; width: 90px; border-radius: 45px;">
		<h3><c:if test="${not empty user_data.username}">${user_data.username}</c:if>
		<c:if test="${empty user_data.username}">New User</c:if>
		</h3>
		<p>Student/Intern</p>
		<strong>SP</strong>
	</div>
	<div class="left-custom-menu-adp-wrap">
		<ul class="nav navbar-nav left-sidebar-menu-pro">
			<li class="nav-item"><a href="#" data-toggle="dropdown"
				role="button" aria-expanded="false" class="nav-link dropdown-toggle"><i
					class="fa big-icon fa-home"></i> <span class="mini-dn">Dashboard</span>
					<span class="indicator-right-menu mini-dn"><i
						class="fa indicator-mn fa-angle-left"></i></span></a>
				</li>
			<li class="nav-item"><a href="<c:url value='viewCompAndApply'/>" class="nav-link dropdown-toggle"><i
					class="fa big-icon fa-envelope"></i> <span class="mini-dn">Industry List</span>
					<span class="indicator-right-menu mini-dn"><i
						class="fa indicator-mn fa-angle-left"></i></span></a>
				</li>
				<li class="nav-item"><a href="<c:url value='studentinternships'/>" class="nav-link dropdown-toggle"><i
					class="fa big-icon fa-envelope"></i> <span class="mini-dn">Internships</span>
					<span class="indicator-right-menu mini-dn"><i
						class="fa indicator-mn fa-angle-left"></i></span></a>
				</li>
			<li class="nav-item"><a href="<c:url value='appliedCompanies'/>" class="nav-link dropdown-toggle"><i
					class="fa big-icon fa-flask"></i> <span class="mini-dn">Request Status</span>
					<span class="indicator-right-menu mini-dn"><i
						class="fa indicator-mn fa-angle-left"></i></span></a>
				</li>
			<li class="nav-item"><a href="<c:url value='live_chat'/>" class="nav-link dropdown-toggle"><i
					class="fa big-icon fa-pie-chart"></i> <span class="mini-dn">Live Chat</span>
					<span class="indicator-right-menu mini-dn"><i
						class="fa indicator-mn fa-angle-left"></i></span></a>
				</li>
			<li class="nav-item"><a href="<c:url value='stud_testHistory'/>" class="nav-link dropdown-toggle"><i
					class="fa big-icon fa-bar-chart-o"></i> <span class="mini-dn">Test History</span>
					<span class="indicator-right-menu mini-dn"><i
						class="fa indicator-mn fa-angle-left"></i></span></a>
				</li>
			<li class="nav-item"><a href="<c:url value='certificate'/>" class="nav-link dropdown-toggle"><i
					class="fa big-icon fa-table"></i> <span class="mini-dn">View Certificate
						</span> <span class="indicator-right-menu mini-dn"><i
						class="fa indicator-mn fa-angle-left"></i></span></a>
				</li>
		</ul>
	</div>
</nav>