@extends('layouts.admin',['title'=>'Fasilitas Kamar '. ucwords( $kamar->nama_kamar ) ])

@section('content-header')
<h1 class="m-0"> <i class="fas fa-tv"></i> Fasilitas Kamar {{ ucwords( $kamar->nama_kamar ) }}</h1>
@endsection

@section('content')

<x-status />

<div class="card">
    <div class="card-header">
        <div class="row">
            <div class="col">
                <x-btn-create :link="route('kamar.fasilitas.create',['kamar'=>$kamar->id])" />              
            </div>
        </div>
    </div>
    <x-card-table>
            <thead>
                <tr>
                    <th>No.</th>
                    <th>Fasilitas</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
                <?php $no = 1;?>
                @foreach ( $data as $row )
                <tr>
                    <td>{{ $no++ }}</td>
                    <td>{{ $row->nama_fasilitas_kamar }}</td>
                    <td>
                        <x-btn-edit :link="route('kamar.fasilitas.edit',['kamar'=>$kamar->id,'fasilita'=>$row->id])" />
                        <x-btn-delete :link="route('kamar.fasilitas.destroy',['kamar'=>$kamar->id,'fasilita'=>$row->id])" />

                    </td>
                </tr>
                @endforeach
            </tbody>
    </x-card-table>
    <!-- ./card-body -->
</div>

@endsection

@section('modal')
<x-modal-delete />
@endsection