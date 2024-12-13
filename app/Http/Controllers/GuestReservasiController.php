<?php

namespace App\Http\Controllers;

use App\Helper\Lamanya;
use App\Models\Pemesanan;
use App\Models\Kamar;
use Illuminate\Http\Request;
use Barryvdh\DomPDF\Facade\Pdf;

class GuestReservasiController extends Controller
{
    public function create()
    {
        $kamar = Kamar::select('id as value','nama_kamar as option')->get();

        $kamar->map(function( $row ){
            $row->option = ucwords($row->option);
            return $row;
        });

        $kamar->toArray();

        return view('reservasi',['kamar'=>$kamar]);
    }

    public function store(Request $request)
    {
        $request->validate ([
            'nama_pemesan'=>'required',
            'email'=>'required|email',
            'no_hp'=>'required|numeric',
            'kamar'=>'required|numeric|integer',
            'jumlah_kamar'=>'required|numeric|integer|not_in:0|gt:0',
            'checkin'=>'required|date|after:today',
            'checkout'=>'required|date|after:checkin',
            'nama_tamu'=>'required',
        ]);

        $pemesanan = Pemesanan::create([
            'nama_pemesan'      =>  $request->nama_pemesan,
            'email_pemesan'     =>  $request->email,
            'no_hp'             =>  $request->no_hp,
            'kamar_id'          =>  $request->kamar,
            'jum_kamar_dipesan' =>  $request->jumlah_kamar,
            'tgl_checkin'       =>  $request->checkin,
            'tgl_checkout'      =>  $request->checkout,
            'nama_tamu'         =>  $request->nama_tamu,
            'status'            =>  'pesan',
        ]);

        return redirect()->route('guest.reservasi.show',['pemesanan'=>$pemesanan->id]);
    }

    public function show(Pemesanan $pemesanan)
    {
        return view('reservasi-show',['row'=>$pemesanan]);
    }

    public function invoice(Pemesanan $pemesanan)
    {
        $pemesanan->nama_pemesan = ucwords($pemesanan->nama_pemesan);
        $pemesanan->nama_tamu = ucwords($pemesanan->nama_tamu);
        $pemesanan-> tgl_checkin = date('l, d M Y', strtotime($pemesanan->tgl_checkin) );
        $pemesanan-> tgl_checkout = date('l, d M Y', strtotime($pemesanan->tgl_checkout) );
        $pemesanan-> lamanya = Lamanya::get($pemesanan->tgl_checkin, $pemesanan->tgl_checkout);

        $kamar = Kamar::find($pemesanan->kamar_id);

        $total = $kamar->harga_kamar * $pemesanan->jum_kamar_dipesan * $pemesanan->lamanya;
        $pemesanan->total = number_format($total, 0, '.',',');

        $kamar->nama_kamar = ucwords($kamar->nama_kamar);
        $kamar->harga_kamar = number_format($kamar->harga_kamar,0,'.',',');

        $pdf = PDF::loadView('reservasi-invoice',['row'=>$pemesanan,'kamar'=>$kamar]);
        return $pdf->stream();
    }
}
