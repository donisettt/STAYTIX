@extends('layouts.admin',['title'=>'Kamar'])

@section('content-header')
<h1 class="m-0"> <i class="fas fa-bed"></i> Kamar</h1>
@endsection

@section('content')
<div class="card">
    <div class="card-body">
        <div class="row">
            <div class="col">
                <img src="{{ $row->foto_kamar }}" class="img-fluid w-100" />
            </div>
            <!-- ./col -->
            <div class="col">
                <h2>{{ ucwords( $row->nama_kamar ) }}</h2>
                <p>
                    <h6>Harga /Malam :</h6> Rp. {{ number_format($row->harga_kamar,0,',','.',) }} 
                </p>
                <p>
                    <h6>Jumlah Kamar :</h6> {{ $row->jum_kamar }} Kamar
                </p>
                <p>
                    <h6>Fasilitas Kamar :</h6>
                    <ul>
                        @foreach( $fasilitas as $fas )
                            <li>{{ $fas->nama_fasilitas_kamar }}</li>
                        @endforeach
                    </ul>
                </p>
                <p>
                    <h6>Deskripsi Kamar :</h6>
                    {{ $row->deskripsi_kamar }}
                </p>
            </div>
            <!-- ./col -->
        </div>
    </div>
</div>
@endsection