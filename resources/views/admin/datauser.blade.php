@extends('templateadmin.master_admin')

@section('content')


    <div class="main-panel">
        <div class="content">
            <div class="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                <h4 class="card-title">Data User</h4>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table id="example" class="display table table-striped table-hover">
                                        <thead>
                                            <tr>
                                                <th>No</th>
                                                <th>Member Name</th>
                                                <th>Email</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @php
                                                $no = 1;
                                            @endphp
                                            @foreach ($users as $i)
                                                <tr>
                                                    <td>{{ $no++ }}</td>
                                                    <td>{{ $i->name }}</td>
                                                    <td>{{ $i->email }}</td>
                                                </tr>
                                            @endforeach
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function() {
            $('#example').DataTable();
        });
    </script>

    <link href="https://code.jquery.com/jquery-3.5.1.js">
    <link href="https://cdn.datatables.net/1.11.0/js/jquery.dataTables.min.js">
    <link href=" https://cdn.datatables.net/1.11.0/js/dataTables.bootstrap4.min.js">

@endsection
