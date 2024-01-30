<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<style>
.header-right {
    display: -webkit-box;
    display: flex;
    -webkit-box-pack: end;
    justify-content: flex-end;
    height: 70px;
    width: 70%;
}
.header-left {
    display: -webkit-box;
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    height: 100%;
    width: 10%;
}
</style>
<div class="header">
		<div class="header-left">
			<div class="menu-icon dw dw-menu"></div>
			<div class="search-toggle-icon dw dw-search2" data-toggle="header_search"></div>
		</div>
		<div class="header-right">
			<!-- <div style="padding: 19px 14px 0px 0px;">
				<button class="btn btn-primary btn-sm" style="background: yellowgreen;border-radius: 3px;border-color: yellowgreen;padding: 4px 9px 4px 9px;"
				data-toggle="modal" data-target="#help_tutorial"
									data-keyboard="false" data-backdrop="static"
									onclick="start_tutorial();">Start Tutorial</button>
			</div> -->
			<div class="dashboard-setting user-notification">
				<div class="dropdown">
					<a class="dropdown-toggle no-arrow" href="javascript:;" data-toggle="right-sidebar">
						<i class="dw dw-settings2"></i>
					</a>
				</div>
			</div>
			<div class="user-notification">
				<div class="dropdown">
					<a class="dropdown-toggle no-arrow" href="#" role="button" data-toggle="dropdown">
						<i class="icon-copy dw dw-notification"></i>
						<span class="badge notification-active">
						<c:if
							test="${notifResponse.urCount gt 0}">
							<span class="label label-warning" id="noOfNotif"
								style="font-size: 13px !important;color: #9ff711;">${notifResponse.urCount}</span>
						</c:if>
						</span>
					</a>
				<div class="dropdown-menu dropdown-menu-right">
					<div class="notification-list mx-h-350 customscroll">
						<ul>
							<li><c:if
										test="${empty notifResponse.notif}">
										<ul>
											<li><span>You dont have any notification.</span></li>
										</ul>
									</c:if> <c:if test="${not empty notifResponse.notif}">
										<ul>
											<li><c:if test="${notifResponse.urCount gt 0}">
													<h6 class="notif-header-title text-center">
														<span class="fa fa-info-circle"></span> <span
															id="notif_header_text" style="color: #1b00ff;">You have
															${notifResponse.urCount} unread notification(s)</span>
													</h6><br>
												</c:if> <c:if test="${notifResponse.urCount eq 0}">
													<h3 class="notif-header-title">
														<span class="fa fa-info-circle"></span> <span
															id="notif_header_text">You don't have any new
															notifications.</span>
													</h3>
													<!-- <span id="notifHeader">You don't have any new notifications.</span> -->
												</c:if></li>
											<li>
												<!-- inner menu: contains the actual data -->
												<ul class="menu" id="notifications_div">
												
													<jsp:useBean id="now_today" class="java.util.Date" />

													<li id="notif_list"><c:forEach
															items="${notifResponse.notif}" var="notification">
															<a
																class="list-group-item <c:if test="${notification.status==ProjectConstants.notifications_status_unread}">unread</c:if>
												<c:if test="${notification.status==ProjectConstants.notifications_status_deleted}">deleted</c:if>"
																href="<c:if test="${empty dept_validity}">redirect_notif_url?notif_id=${notification.notification_id}</c:if><c:if test="${dept_validity eq ProjectConstants.reg_user_expiration_rsn_dept_del}">#</c:if>"
																id="not${notification.notification_id}"
																data-toggle="popover"
																data-content="${notification.notif_msg}">
																${fn:substring(notification.notif_msg,0,100)} <c:if
																	test="${fn:length(notification.notif_msg) gt 100}">...</c:if>
																<span
																style="float: right; font-size: 10px !important; margin-top: 10px;color:#1b00ff;"><fmt:formatDate
																		pattern="${ProjectConstants.date_format}"
																		value="${notification.creation_date}" /> :
																	${notification.creation_time}</span>
															</a>
														</c:forEach> <span id="loding_content"
														style="display: none; padding: 10px; color: blue;">Loading....</span>
													</li>
												</ul>
											</li>
											<li class="notif-footer" style="height: 20px;text-align: center;"><a id="view_all_notif_footer" style="color: #073ee8;"
												href=<c:if test="${empty dept_validity}"><c:url value="/viewAllNotifications"/></c:if><c:if test="${dept_validity eq ProjectConstants.reg_user_expiration_rsn_dept_del}">#</c:if>">Show
													all notifications</a></li>
										</ul>
									</c:if>
							</li>
						</ul>
					</div>
				</div>
			</div>
			</div>
			<div class="user-info-dropdown">
				<div class="dropdown">
					<a class="dropdown-toggle" href="#" role="button" data-toggle="dropdown">
						<span class="user-icon">
							<img src="" alt="" style="width: 100%;height: 100%;">
						</span>
						<span class="user-name">
						
						<c:if test="${not empty user.email}">${user.username}</c:if>
						</span>
					</a>
					
					<div class="dropdown-menu dropdown-menu-right dropdown-menu-icon-list">
					<c:if test="${user.role eq '0' || user.role eq '10'|| user.role eq '8'}">
						<a class="dropdown-item" href="editStudentProfile"><i class="dw dw-user1"></i> Edit Profile</a>
					</c:if>
				
			        	 <c:if test="${user.role eq '5'}">
						<a class="dropdown-item" href="editCollegeProfile"><i class="dw dw-user1"></i> Edit Profile</a>
						<a class="dropdown-item" href="editUserProfile"><i class="dw dw-user1"></i> Edit III Profile</a>
					
			      	</c:if>
			     
			        	 <c:if test="${user.role eq '1'}">
						<a class="dropdown-item" href="editCompProfile"><i class="dw dw-user1"></i> Edit Profile</a>
						<a class="dropdown-item" href="editUserProfile"><i class="dw dw-user1"></i> Edit HR Profile</a>
					
			      	</c:if>
					<c:if test="${user.role eq '7' || user.role eq '6'|| user.role eq '4' || user.role eq '3' || user.role eq '2'}">
						
						
							<a class="dropdown-item" href="editUserProfile"><i class="dw dw-user1"></i> Edit Profile</a>
						
					</c:if>
					<c:if test="${user_data.role eq '2'}">
						<a class="dropdown-item" href="editUserProfile"><i class="dw dw-user1"></i> Edit Profile</a>
					</c:if>
					<c:if test="${user_data.role eq '3'}">
						<a class="dropdown-item" href="editUserProfile"><i class="dw dw-user1"></i> Edit Profile</a>
					</c:if>
						<a class="dropdown-item" href="change_password"><i class="dw dw-password"></i> Change Password</a>
						<a class="dropdown-item" href="/logout"><i class="dw dw-logout"></i> Log Out</a>
					</div>
				</div>
			</div>
		</div>
	</div>