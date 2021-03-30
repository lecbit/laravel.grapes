<?php

namespace Database\Seeders;

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class ProductsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for($i=0;$i<11;$i++)
        DB::table('products')->insert([
            'title' => 'Product '.$i,
            'price' => rand(200, 1500),
            'in_stock' => 1,
            'description' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellendus, iste?',
        ]);
    }
}
