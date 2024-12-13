@extends('layouts.admin',['title'=>'Pemesanan'])

@section('content-header')
<h1 class="m-0"> <i class="fas fa-cash-register"></i> Pemesanan</h1>
@endsection

@section('content')

<x-status />

<div class="card">
    <div class="card-header">
        <div class="row">
            <div class="col">
                <!-- -->
            </div>
            <div class="col">
                <x-search-date />
            </div>
        </div>
    </div>
    <x-card-table>
            <thead>
                <tr>
                    <th>No.</th>
                    <th>Nama Pemesan</th>
                    <th>Nama Tamu</th>
                    <th>Kamar</th>
                    <th>Jum</th>
                    <th>Check IN</th>
                    <th>Check OUT</th>
                    <th>Malam</th>
                    <th>Status</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
                <?php $no = $data->firstItem();?>
                @foreach ( $data as $row )
                <tr>
                    <td>{{ $no++ }}</td>
                    <td>{{ $row->nama_pemesan }}</td>
                    <td>{{ $row->nama_tamu }}</td>
                    <td>{{ $row->nama_kamar }}</td>
                    <td>{{ $row->jum }}</td>
                    <td>{{ $row->tgl_checkin }}</td>
                    <td>{{ $row->tgl_checkout }}</td>
                    <td>{{ $row->lamanya  }}</td>
                    <td>{{ $row->status }}</td>
                    <td>
                        <x-btn-show :link="route('pemesanan.show',['pemesanan'=>$row->id])"/>
                    </td>
                </tr>
                @endforeach
            </tbody>
    </x-card-table>
    <!-- ./card-body -->
    <div class="card-body pb-0">
        {{ $data->appends(['search' => request()->search,'tanggal' => request()->tanggal ])->links('page') }}
    </div>
    <!-- ./card-body -->
</div>

@endsection

@section('modal')
<x-modal-delete />
@endsection
