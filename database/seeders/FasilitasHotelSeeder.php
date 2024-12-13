<?php

namespace Database\Seeders;

use App\Models\FasilitasHotel;
use Illuminate\Database\Seeder;

class FasilitasHotelSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        FasilitasHotel::create([
            'nama_fasilitas_hotel'=>'Kolam Renang',
            'foto_fasilitas_hotel'=>null,
            'deskripsi_fasilitas_hotel'=>'Quo veritatis iure sint quae tempora. In natus aut nihil qui ratione animi autem. Est voluptatem impedit rerum vero aut enim. Optio quos totam dignissimos numquam recusandae commodi.',

        ]);

        FasilitasHotel::create([
            'nama_fasilitas_hotel'=>'Restoran',
            'foto_fasilitas_hotel'=>null,
            'deskripsi_fasilitas_hotel'=>'Quo veritatis iure sint quae tempora. In natus aut nihil qui ratione animi autem. Est voluptatem impedit rerum vero aut enim. Optio quos totam dignissimos numquam recusandae commodi.',

        ]);
        
        FasilitasHotel::create([
            'nama_fasilitas_hotel'=>'Parkir Luas',
            'foto_fasilitas_hotel'=>null,
            'deskripsi_fasilitas_hotel'=>'Quo veritatis iure sint quae tempora. In natus aut nihil qui ratione animi autem. Est voluptatem impedit rerum vero aut enim. Optio quos totam dignissimos numquam recusandae commodi.',

        ]);
        FasilitasHotel::create([
            'nama_fasilitas_hotel'=>'Sarapan Pagi Gratis',
            'foto_fasilitas_hotel'=>null,
            'deskripsi_fasilitas_hotel'=>'Quo veritatis iure sint quae tempora. In natus aut nihil qui ratione animi autem. Est voluptatem impedit rerum vero aut enim. Optio quos totam dignissimos numquam recusandae commodi.',

        ]);
    }
}
