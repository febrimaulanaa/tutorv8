@extends('templateadmin.master_admin')

@section('content')


<div class="main-panel">
    <div class="content">
        <div class="page-inner">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title">Masa Ujian</h4>
                            <br>
                            <br>
                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#tambahmasa">
                                Tambah Masa
                            </button>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table id="example" class="display table table-striped table-hover">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>Masa Ujian</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @php
                                        $no = 1 ;
                                        @endphp
                                        @foreach($masas as $masa)
                                        <tr>
                                            <td>{{$no++}}</td>
                                            <td>{{$masa->tahun_masa}}</td>
                                            <td>
                                                <form action="{{route( 'admin.hapusmasa', $masa->kd_masa )}}" method="post" class="d-inline" onsubmit="return confirm('Yakin hapus data?')">
                                                    @method('delete')
                                                    @csrf
                                                    <button class="btn btn-danger btn-sm">
                                                        <i class="fa fa-trash"></i>
                                                    </button>
                                                </form>
                                            </td>
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

<!-- Modal Tambah Masa Ujian -->
        <div class="modal fade" id="tambahmasa" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Tambah Masa</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form method="post" action="{{ route ('admin.tambahmasa') }}" enctype="multipart/form-data">
                            {{ csrf_field() }}
                            <label>Input Masa </label>
                            <div class="form-group">
                                <input id="tambahmasa" type="text" maxlength="9" name="tambahmasa" placeholder="____/__._" required>
                            </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Save changes</button>
                    </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- End Modal Tambah Masa Ujian -->


@endsection
