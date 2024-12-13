@extends('layouts.admin',['title'=>'Fasilitas Hotel'])

@section('content-header')
<h1 class="m-0"> <i class="fas fa-swimming-pool"></i> Fasilitas Hotel</h1>
@endsection

@section('content')
<div class="card">
    <div class="card-body">
        <div class="row">
            <div class="col">
                <img src="{{ $row->foto_fasilitas_hotel }}" class="img-fluid w-100" />
            </div>
            <!-- ./col -->
            <div class="col">
                <h2>{{ ucwords( $row->nama_fasilitas_hotel ) }}</h2>
                <p>
                    <h6>Deskripsi  :</h6>
                    {{ $row->deskripsi_fasilitas_hotel }}
                </p>
            </div>
            <!-- ./col -->
        </div>
    </div>
</div>
@endsection