@extends('templateadmin.master_admin')

@section('content')


<div class="main-panel">
    <div class="content">
        <div class="page-inner">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title">Selamat Datang {{ Auth::user()->name }} di Halaman Admin</h4>
                        </div>  
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>



@endsection

@section('js')
<!-- <script src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.24/js/dataTables.bootstrap4.min.js"></script>
<script src="https://cdn.datatables.net/responsive/2.2.7/js/dataTables.responsive.min.js"></script>
<script src="https://cdn.datatables.net/responsive/2.2.7/js/responsive.bootstrap4.min.js"></script> -->
<script>
    $(document).ready(function () {
        $('#example').DataTable();
    });
</script>
@endsection