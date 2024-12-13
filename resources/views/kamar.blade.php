@extends('layouts.tamu',['title'=>'Kamar'])

@section('content')
<h1 class="text-center my-4">Kamar</h1>
    
@foreach ( $kamar as $row )
    <hr>
    <div class="row kamar mb-3">
        <div class="col-md-4">
            <img src="{{ $row->foto_kamar }}" class="img-fluid rounded img-thumbnail" />
        </div>
        <div class="col-md">
            <h2>
                <a href="{{ route('guest.kamar.show',['kamar'=>$row->id]) }}"> 
                {{ $row->nama_kamar }} 
                </a>
            </h2>
            <h5>Rp. {{ $row->harga_kamar }} <small>/ Malam.</small> </h5>
            <p> {{ $row->deskripsi_kamar }} </p>
        </div>
    </div>
    @endforeach
@endsection