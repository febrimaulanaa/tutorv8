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
	                <li class="nav-section">
	                    <span class="sidebar-mini-icon">
	                        <i class="fa fa-ellipsis-h"></i>
	                    </span>
	                    <h4 class="text-section">User</h4>
	                </li>
                    <li
	                    class="nav-item {{(Request::segment(1) == 'admin' && Request::segment(2) == 'masaujian') ? 'active' :''}}">
	                    <a data-toggle="" href="{{route('admin.masaujian')}}" class="collapsed" aria-expanded="false">
	                        <i class="fas fa-home"></i>
	                        <p>Create Masa Ujian</p>
	                    </a>
	                </li>
	                <li
	                    class="nav-item {{(Request::segment(1) == 'admin' && Request::segment(2) == 'createusers') ? 'active' :''}}">
	                    <a data-toggle="" href="{{route('admin.createuser')}}" class="collapsed" aria-expanded="false">
	                        <i class="fas fa-home"></i>
	                        <p>Create User</p>
	                    </a>
	                </li>
                    <li
	                    class="nav-item {{(Request::segment(1) == 'admin' && Request::segment(2) == 'datauser') ? 'active' :''}}">
	                    <a data-toggle="" href="{{route('admin.datauser')}}" class="collapsed" aria-expanded="false">
	                        <i class="fas fa-home"></i>
	                        <p>Data User</p>
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
	            </ul>
	        </div>
	    </div>
	</div>
	<!-- End Sidebar -->
