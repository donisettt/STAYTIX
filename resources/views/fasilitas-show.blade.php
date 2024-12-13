@extends('layouts.tamu',['title'=>$row->nama_fasilitas_hotel])

@section('content')
<h1 class="text-center my-4">{{ $row->nama_fasilitas_hotel }}</h1>
<div class="row">
    <div class="col">
        <img src="{{ $row->foto_fasilitas_hotel }}" class="img-fluid w-100" />
    </div>
    <div class="col">
        {{ $row->deskripsi_fasilitas_hotel }}
    </div>
</div>
@endsection