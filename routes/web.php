<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/','HomeController@index')->name('home');

Route::get('/fasilitas','GuestFasilitasController@index')->name('guest.fasilitas.index');
Route::get('fasilitas/{fasilitas}','GuestFasilitasController@show')->name('guest.fasilitas.show');

Route::get('kamar','GuestKamarController@index')->name('guest.kamar.index');
Route::get('kamar/{kamar}','GuestKamarController@show')->name('guest.kamar.show');

Route::get('reservasi','GuestReservasiController@create')->name('guest.reservasi.create');
Route::post('reservasi','GuestReservasiController@store');
Route::get('reservasi/{pemesanan}','GuestReservasiController@show')->name('guest.reservasi.show');
Route::get('reservasi/{pemesanan}/invoice','GuestReservasiController@invoice')->name('guest.reservasi.invoice');

Route::group([
    'prefix'=>config('admin.path'),
], function(){

    Route::get('login','LoginAdminController@formLogin')->name('admin.login');
    Route::post('login','LoginAdminController@login');

    Route::group(['middleware'=>'auth:admin'], function(){
        Route::post('logout','LoginAdminController@logout')->name('admin.logout');
        
        Route::get('/','DashboardController@index')->name('dashboard');
        Route::get('/chart','DashboardController@data_chart'); 
        
        Route::get('/akun','AdminController@akun')->name('admin.akun');
        Route::put('/akun','AdminController@updateAkun');

        Route::get('pemesanan','PemesananController@index')->name('pemesanan.index');
        Route::get('pemesanan/{pemesanan}','PemesananController@show')->name('pemesanan.show');
        Route::put('pemesanan/{pemesanan}','PemesananController@update')->name('pemesanan.update');
        
        Route::resource('kamar','KamarController');
        Route::resource('fasilitas','FasilitasHotelController');

        Route::group(['middleware'=>['can:role,"admin"']], function(){    
            Route::resource('kamar.fasilitas','FasilitasKamarController');
            Route::resource('admin','AdminController');
        });
        
    });
});
