<div ng-controller="UserController as ctrl">
	<div ng-hide="currentUser==''">
		<div class="nav navbar-nav navbar-left">
			Welcome:{{currentUser.name} | <a href="#" ng-click="ctrl.logout()">Logout</a>
		</div>
		<div class="nav navbar-nav navbar-center">You Logged in as
			:{{currentUser.role}}</div>
		<div class="nav navbar-nav navbar-right">
			<a href="#" ng-click="ctrl.myProfile()">My Profile</a>
		</div>
		<hr color="blue" width="100%">
		<div ng-show="currentUser.role=='admin'">
			<div ng-include="'C_admin/admin_menu.html'"></div>
		</div>
		<div ng-include="'C_home/user_home.html'"></div>
	</div>




	<div ng-show="currentUser==''" class="container">
		<div class="row">
			<div class="col-sm-4">
				<h3 class="bg-primary">Jobs</h3>
				<p>You can view and apply jobs</p>
				<p>You can apply for a particular job after login</p>
			</div>
			<div class="col-sm-4">
				<h3 class="bg-primary">Blogs</h3>
			</div>
		</div>
	</div>
</div>