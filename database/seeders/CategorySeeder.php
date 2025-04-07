<?php
namespace Database\Seeders;
use App\Models\User;
use App\Models\Category;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
class CategorySeeder extends Seeder{
    public function run(): void{
        $user = User::first(); // Assuming you have at least one user
        Category::create(['name' => 'Electronics','user_id' => $user->id,]);
        Category::create(['name' => 'Furniture','user_id' => $user->id,]);
        Category::create(['name'=> 'Sports','user_id' => $user->id,]);
        Category::create(['name'=> 'Books','user_id' => $user->id,]);
        Category::create(['name' => 'Toys','user_id' => $user->id,]);        
        Category::create(['name' => 'Beauty','user_id' => $user->id,]);
        Category::create(['name' => 'Automotive','user_id' => $user->id,]);
        Category::create(['name' => 'Health','user_id' => $user->id,]);
        Category::create(['name' => 'Gardening','user_id' => $user->id,]);
        Category::create(['name'=> 'Stationery','user_id' => $user->id,]);
        Category::create(['name' => 'Food','user_id' => $user->id,]);
        Category::create(['name' => 'Beverages','user_id' => $user->id,]);
        Category::create(['name' => 'Household','user_id' => $user->id,]);
        Category::create(['name' => 'Pet Supplies','user_id' => $user->id,]);
        Category::create(['name' => 'Office Supplies','user_id' => $user->id,]);
        Category::create(['name' => 'Jewelry','user_id' => $user->id,]);
        Category::create(['name' => 'Footwear','user_id' => $user->id,]);
        Category::create(['name' => 'Accessories','user_id' => $user->id,]);
        Category::create(['name' => 'Watches','user_id' => $user->id,]);
        Category::create(['name' => 'Luggage','user_id' => $user->id,]);
    }
}
