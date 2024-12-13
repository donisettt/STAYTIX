@extends('layouts.tamu',['title'=>'Fasilitas'])

@section('content')
    <h1 class="text-center my-4">Fasilitas</h1>

    @foreach ( $fasilitas as $row )
        <hr>
        <div class="row kamar mb-3">
            <div class="col-md-4">
                <img src="{{ $row->foto_fasilitas_hotel }}" class="img-fluid rounded img-thumbnail" />
            </div>
            <div class="col-md">
                <h2>
                    <a href="{{ route('guest.fasilitas.show',['fasilitas'=>$row->id]) }}"> 
                    {{ $row->nama_fasilitas_hotel }} 
                    </a>
                </h2>
                <p> {{ $row->deskripsi_fasilitas_hotel }} </p>
            </div>
        </div>
@endforeach

@endsection