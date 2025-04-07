<?php
namespace Database\Seeders;
use App\Models\User;
use App\Models\Customer;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
class CustomerSeeder extends Seeder{
    public function run(): void{
        $user = User::first(); // Assuming you have at least one user
        Customer::insert([
            ['name' => 'John Doe', 'email' => 'johndoe@example.com', 'mobile' => '1234567890', 'user_id' => $user->id],
            ['name' => 'Jane Smith', 'email' => 'janesmith@example.com', 'mobile' => '0987654321', 'user_id' => $user->id],
            ['name' => 'Alice Johnson', 'email' => 'alicejohnson@example.com', 'mobile' => '1122334455', 'user_id' => $user->id],
            ['name' => 'Bob Brown', 'email' => 'bobbrown@example.com', 'mobile' => '2233445566', 'user_id' => $user->id],
            ['name' => 'Charlie Davis', 'email' => 'charliedavis@example.com', 'mobile' => '3344556677', 'user_id' => $user->id],
            ['name' => 'David Miller', 'email' => 'davidmiller@example.com', 'mobile' => '4455667788', 'user_id' => $user->id],
            ['name' => 'Emma Wilson', 'email' => 'emmawilson@example.com', 'mobile' => '5566778899', 'user_id' => $user->id],
            ['name' => 'Frank Moore', 'email' => 'frankmoore@example.com', 'mobile' => '6677889900', 'user_id' => $user->id],
            ['name' => 'Grace Taylor', 'email' => 'gracetaylor@example.com', 'mobile' => '7788990011', 'user_id' => $user->id],
            ['name' => 'Henry Anderson', 'email' => 'henryanderson@example.com', 'mobile' => '8899001122', 'user_id' => $user->id],
            ['name' => 'Ivy Thomas', 'email' => 'ivythomas@example.com', 'mobile' => '9900112233', 'user_id' => $user->id],
            ['name' => 'Jack Harris', 'email' => 'jackharris@example.com', 'mobile' => '1011122233', 'user_id' => $user->id],
            ['name' => 'Kathy Clark', 'email' => 'kathyclark@example.com', 'mobile' => '2022233344', 'user_id' => $user->id],
            ['name' => 'Liam Lewis', 'email' => 'liamlewis@example.com', 'mobile' => '3033344455', 'user_id' => $user->id],
            ['name' => 'Megan Young', 'email' => 'meganyoung@example.com', 'mobile' => '4044455566', 'user_id' => $user->id],
        ]);
    }
}
