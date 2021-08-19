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
	                <li class="nav-section">
	                    <span class="sidebar-mini-icon">
	                        <i class="fa fa-ellipsis-h"></i>
	                    </span>
	                    <h4 class="text-section">Components</h4>
	                </li>
	                <li
	                    class="nav-item submenu {{(Request::segment(1) == 'member' && Request::segment(2) == 'settuweb') ? 'active' :''}}">
	                    <a data-toggle="collapse" href="#sidebarLayouts">
	                        <i class="fas fa-th-list"></i>
	                        <p>Sidebar</p>
	                        <span class="caret"></span>
	                    </a>
	                    <div class="collapse" id="sidebarLayouts">
	                        <ul class="nav nav-collapse">
	                            <li
	                                class="{{(Request::segment(1) == 'member' && Request::segment(2) == 'settuweb') ? 'active' :''}}">
	                                <a href="{{route('member.settuweb')}}">
	                                    <span class="sub-item">Upload</span>
	                                </a>
	                            </li>
	                        </ul>
	                    </div>
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
