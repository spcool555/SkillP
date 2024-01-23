<nav id="sidebar">
	<div class="sidebar-header" style="padding: 6px!important;">
		<img
						src="/get_logo" class="user-image"
						alt="User Image" style="height: 90px; width: 90px; border-radius: 45px;">
		<h3><c:if test="${not empty user_data.username}">${user_data.username}</c:if>
		</h3>
		<p>Manager/Team Lead</p>
		<strong>SP</strong>
	</div>
	<div class="left-custom-menu-adp-wrap">
		<ul class="nav navbar-nav left-sidebar-menu-pro">
			<li class="nav-item"><a href='company_dashboard' class="nav-link dropdown-toggle"><i
					class="fa big-icon fa-home"></i> <span class="mini-dn">Dashboard</span>
					<span class="indicator-right-menu mini-dn"><i
						class="fa indicator-mn fa-angle-left"></i></span></a>
				</li>
			<li class="nav-item"><a href='company_internships' class="nav-link dropdown-toggle"><i
					class="fa big-icon fa-envelope"></i> <span class="mini-dn">Internships</span>
					<span class="indicator-right-menu mini-dn"><i
						class="fa indicator-mn fa-angle-left"></i></span></a>
				</li>
				<li class="nav-item"><a href='company_internal_request' class="nav-link dropdown-toggle"><i
					class="fa big-icon fa-envelope"></i> <span class="mini-dn">Internal Request</span>
					<span class="indicator-right-menu mini-dn"><i
						class="fa indicator-mn fa-angle-left"></i></span></a>
				</li>
				<li class="nav-item"><a href='live_chat' class="nav-link dropdown-toggle"><i
					class="fa big-icon fa-pie-chart"></i> <span class="mini-dn">Live Chat</span>
					<span class="indicator-right-menu mini-dn"><i
						class="fa indicator-mn fa-angle-left"></i></span></a>
				</li>
			<li class="nav-item"><a href='college_tie_up' class="nav-link dropdown-toggle"><i
					class="fa big-icon fa-flask"></i> <span class="mini-dn">Institute Tie-ups</span>
					<span class="indicator-right-menu mini-dn"><i
						class="fa indicator-mn fa-angle-left"></i></span></a>
				</li>
			
			<li class="nav-item"><a href='add_company_member' class="nav-link dropdown-toggle"><i
					class="fa big-icon fa-bar-chart-o"></i> <span class="mini-dn">Manage Teams</span>
					<span class="indicator-right-menu mini-dn"><i
						class="fa indicator-mn fa-angle-left"></i></span></a>
				</li>
		</ul>
	</div>
</nav>