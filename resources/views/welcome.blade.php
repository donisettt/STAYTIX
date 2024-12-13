@extends('layouts.tamu')

@section('content')
<x-form-pesan />

<h1 class="text-center my-4">Informasi Hotel</h1>
<p>
    </h1 class="text-center">Don's OYO menawarkan akomodasi dengan restoran, parkir pribadi gratis, kolam renang luar ruangan, dan bar di Pangandaran, 300 meter dari Pangandaran Sunset. OYO bintang 5 ini menawarkan resepsionis 24 jam, layanan kamar, dan Wi-Fi gratis. Akomodasi ini menawarkan layanan penyewaan mobil, taman, dan teras.

    OYO ini menyediakan kamar-kamar ber-AC dengan meja, brankas, TV layar datar, dan kamar mandi pribadi dengan shower. Di Don's OYO, setiap kamar memiliki seprai dan handuk.

    Anda dapat menikmati sarapan kontinental di akomodasi.

    Tempat-tempat menarik yang populer di dekat Don's OYO termasuk Pangandaran Sunset, Pantai Barat, dan Pasar Turis Pangandaran. Bandara terdekat adalah Bandara Nusawiru, 5 km dari hotel.</p>
</h1>

<h1 class="text-center my-4">Fasilitas</h1>

<div class="row fasilitas">
    @foreach ( $fasilitas as $row )
    <div class="col-md-3">
        <a class="card card-danger" href="{{ route('guest.fasilitas.show',['fasilitas'=>$row->id]) }}">
            <div class="card-header">
                {{ $row->nama_fasilitas_hotel }}
            </div>
            <div class="card-body p-1">
                <img src="{{ $row->foto_fasilitas_hotel }}" class="img-fluid rounded" />
            </div>
        </a>
    </div>
    @endforeach
</div>

<h1 class="text-center my-4">Kamar</h1>

<div class="row kamar">
    @foreach ( $kamar as $row )
    <div class="col-md-4">
        <a class="card card-danger" href="{{ route('guest.kamar.show',['kamar'=>$row->id]) }}">
            <div class="card-header">
                {{ $row->nama_kamar }}
            </div>
            <div class="card-body p-1">
                <img src="{{ $row->foto_kamar }}" class="img-fluid rounded" />
            </div>
            <div class="card-footer">
                Rp. {{ $row->harga_kamar }} <small>/ Malam.</small>
            </div>
        </a>
    </div>
    @endforeach
</div>

@endsection