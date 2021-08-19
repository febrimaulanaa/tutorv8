	<!-- Sidebar -->
	<div class="sidebar sidebar-style-2">
	    <div class="sidebar-wrapper scrollbar scrollbar-inner">
	        <div class="sidebar-content">
	            <!-- <div class="user">
						<div class="avatar-sm float-left mr-2">
							<img src="../assets/img/profile.jpg" alt="..." class="avatar-img rounded-circle">
						</div>
						<div class="info">
							<a data-toggle="collapse" href="#collapseExample" aria-expanded="true">
								<span>
									Hizrian
									<span class="user-level">Administrator</span>
									<span class="caret"></span>
								</span>
							</a>
							<div class="clearfix"></div>
						</div>
					</div> -->
	            <ul class="nav nav-primary">
	                <li
	                    class="nav-item {{(Request::segment(1) == 'admin' && Request::segment(2) == 'dashboard') ? 'active' :''}}">
	                    <a data-toggle="" href="{{route('admin.dashboard')}}" class="collapsed" aria-expanded="false">
	                        <i class="fas fa-home"></i>
	                        <p>Dashboard</p>
	                    </a>
	                </li>
	                <!-- <li class="nav-section">
						<span class="sidebar-mini-icon">
							<i class="fa fa-ellipsis-h"></i>
						</span>
						<h4 class="text-section">Components</h4>
					</li>
					<li class="nav-item submenu {{(Request::segment(1) == 'admin' && Request::segment(2) == 'settuweb') ? 'active' :''}}">
						<a data-toggle="collapse" href="#sidebarLayouts">
							<i class="fas fa-th-list"></i>
							<p>Sidebar</p>
							<span class="caret"></span>
						</a>
						<div class="collapse" id="sidebarLayouts">
							<ul class="nav nav-collapse">
								<li class="{{(Request::segment(1) == 'admin' && Request::segment(2) == 'settuweb') ? 'active' :''}}">
									<a href="{{route('member.settuweb')}}">
										<span class="sub-item">Upload</span>
									</a>
								</li>
								<li>
										<a href="overlay-sidebar.html">
											<span class="sub-item">Overlay Sidebar</span>
										</a>
									</li>
									<li>
										<a href="compact-sidebar.html">
											<span class="sub-item">Compact Sidebar</span>
										</a>
									</li>
									<li>
										<a href="static-sidebar.html">
											<span class="sub-item">Static Sidebar</span>
										</a>
									</li>
									<li>
										<a href="icon-menu.html">
											<span class="sub-item">Icon Menu</span>
										</a>
									</li>
							</ul>
						</div>
					</li> -->
	                <li class="nav-section">
	                    <span class="sidebar-mini-icon">
	                        <i class="fa fa-ellipsis-h"></i>
	                    </span>
	                    <h4 class="text-section">User</h4>
	                </li>
	                <li
	                    class="nav-item {{(Request::segment(1) == 'admin' && Request::segment(2) == 'createusers') ? 'active' :''}}">
	                    <a data-toggle="" href="{{route('admin.createuser')}}" class="collapsed" aria-expanded="false">
	                        <i class="fas fa-home"></i>
	                        <p>Create User</p>
	                    </a>
	                </li>
	                <li class="nav-section">
	                    <span class="sidebar-mini-icon">
	                        <i class="fa fa-ellipsis-h"></i>
	                    </span>
	                    <h4 class="text-section">Keluar</h4>
	                </li>
	                <li class="nav-item">

	                    <form method="POST" action="{{ route('logout') }}">
	                        @csrf

	                        <x-jet-dropdown-link href="{{ route('logout') }}" onclick="event.preventDefault();
                                    this.closest('form').submit();">
	                            <i class="fas fa-sign-out-alt"></i>
	                            {{ __('Log Out') }}
	                        </x-jet-dropdown-link>
	                    </form>
	                </li>

	                <!-- <li class="nav-item">
							<a data-toggle="collapse" href="#forms">
								<i class="fas fa-pen-square"></i>
								<p>Forms</p>
								<span class="caret"></span>
							</a>
							<div class="collapse" id="forms">
								<ul class="nav nav-collapse">
									<li>
										<a href="forms/forms.html">
											<span class="sub-item">Basic Form</span>
										</a>
									</li>
								</ul>
							</div>
						</li>
						<li class="nav-item">
							<a data-toggle="collapse" href="#tables">
								<i class="fas fa-table"></i>
								<p>Tables</p>
								<span class="caret"></span>
							</a>
							<div class="collapse" id="tables">
								<ul class="nav nav-collapse">
									<li>
										<a href="tables/tables.html">
											<span class="sub-item">Basic Table</span>
										</a>
									</li>
									<li>
										<a href="tables/datatables.html">
											<span class="sub-item">Datatables</span>
										</a>
									</li>
								</ul>
							</div>
						</li>
						<li class="nav-item">
							<a data-toggle="collapse" href="#maps">
								<i class="fas fa-map-marker-alt"></i>
								<p>Maps</p>
								<span class="caret"></span>
							</a>
							<div class="collapse" id="maps">
								<ul class="nav nav-collapse">
									<li>
										<a href="maps/jqvmap.html">
											<span class="sub-item">JQVMap</span>
										</a>
									</li>
								</ul>
							</div>
						</li> -->
	            </ul>
	        </div>
	    </div>
	</div>
	<!-- End Sidebar -->
