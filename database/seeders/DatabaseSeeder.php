<?php
namespace Database\Seeders;
use App\Models\User;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Database\Seeders\UserSeeder;
use Database\Seeders\BrandSeeder;
use Database\Seeders\ProductSeeder;
use Database\Seeders\CategorySeeder;
use Database\Seeders\CustomerSeeder;

class DatabaseSeeder extends Seeder{
    public function run(): void{
        User::create(['name' => 'Engr. Shams','email' => 'engr.sams@gmail.com', 'password' => 'password','mobile' => '01912528253',]);
        User::factory()->create(['name' => 'Test User','email' => 'test@gmail.com','password' => 'password','mobile' => '1234567890',]);
        User::create(['name' => 'admin','email' => 'admin@gmail.com', 'password' => 'password','mobile' => '1234567890',]);
                
        $this->call(UserSeeder::class);
        $this->call(CategorySeeder::class);
        $this->call(BrandSeeder::class);
        $this->call(CustomerSeeder::class);
        $this->call(ProductSeeder::class);        
    }
}
