<?php
namespace Database\Seeders;
use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
class UserSeeder extends Seeder{
    public function run(): void{
        User::create([
            'email' => 'engr.shams@yahoo.com', // 'password' => bcrypt('12345678'),
            'password' => 'password','name' => 'Engr. Shams','mobile' => '01322830000',
        ]);
    }
}
