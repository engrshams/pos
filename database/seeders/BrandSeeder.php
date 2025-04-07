<?php
namespace Database\Seeders;
use App\Models\User;
use App\Models\Brand;
use App\Models\Category;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class BrandSeeder extends Seeder{
    public function run(): void{
        $user = User::first(); // Assuming you have at least one user
        // Fetch category ids
        $electronicsCategory = Category::where('name', 'Electronics')->where('user_id', $user->id)->first();
        $furnitureCategory = Category::where('name', 'Furniture')->where('user_id', $user->id)->first();
        $sportsCategory = Category::where('name', 'Sports')->where('user_id', $user->id)->first();
        $booksCategory = Category::where('name', 'Books')->where('user_id', $user->id)->first();
        $toysCategory = Category::where('name', 'Toys')->where('user_id', $user->id)->first();
        $beautyCategory = Category::where('name', 'Beauty')->where('user_id', $user->id)->first();
        $automotiveCategory = Category::where('name', 'Automotive')->where('user_id', $user->id)->first();
        $healthCategory = Category::where('name', 'Health')->where('user_id', $user->id)->first();
        $gardeningCategory = Category::where('name', 'Gardening')->where('user_id', $user->id)->first();
        $stationeryCategory = Category::where('name', 'Stationery')->where('user_id', $user->id)->first();
        $foodCategory = Category::where('name', 'Food')->where('user_id', $user->id)->first();
        $beveragesCategory = Category::where('name', 'Beverages')->where('user_id', $user->id)->first();
        $householdCategory = Category::where('name', 'Household')->where('user_id', $user->id)->first();
        $petSuppliesCategory = Category::where('name', 'Pet Supplies')->where('user_id', $user->id)->first();
        $officeSuppliesCategory = Category::where('name', 'Office Supplies')->where('user_id', $user->id)->first();
        $jewelryCategory = Category::where('name', 'Jewelry')->where('user_id', $user->id)->first();
        $footwearCategory = Category::where('name', 'Footwear')->where('user_id', $user->id)->first();
        $accessoriesCategory = Category::where('name', 'Accessories')->where('user_id', $user->id)->first();
        $watchesCategory = Category::where('name', 'Watches')->where('user_id', $user->id)->first();
        $luggageCategory = Category::where('name', 'Luggage')->where('user_id', $user->id)->first();

        // Brands for Electronics
        Brand::insert([
            ['name' => 'Samsung', 'user_id' => $user->id, 'category_id' => $electronicsCategory->id],
            ['name' => 'Sony', 'user_id' => $user->id, 'category_id' => $electronicsCategory->id],
            ['name' => 'LG', 'user_id' => $user->id, 'category_id' => $electronicsCategory->id],
        ]);

        // Brands for Furnitures
        Brand::insert([
            ['name' => 'IKEA', 'user_id' => $user->id, 'category_id' => $furnitureCategory->id],
            ['name' => 'Ashley', 'user_id' => $user->id, 'category_id' => $furnitureCategory->id],
            ['name' => 'Wayfair', 'user_id' => $user->id, 'category_id' => $furnitureCategory->id]
        ]);
                
        // Brands for Sports
        Brand::create(['name' => 'Nike','user_id' => $user->id,'category_id' => $sportsCategory->id,]); // Associate with Sports category
        Brand::create(['name' => 'Adidas','user_id' => $user->id,'category_id' => $sportsCategory->id,]); // Associate with Sports category
        Brand::create(['name' => 'Puma','user_id' => $user->id,'category_id' => $sportsCategory->id,]); // Associate with Sports category);

        // Brands for Books
        Brand::create(['name' => 'Penguin', 'user_id' => $user->id, 'category_id' => $booksCategory->id]);
        Brand::create(['name' => 'HarperCollins', 'user_id' => $user->id, 'category_id' => $booksCategory->id]);
        Brand::create(['name' => 'Random House', 'user_id' => $user->id, 'category_id' => $booksCategory->id]);

        // Brands for Toys
        Brand::create(['name' => 'LEGO', 'user_id' => $user->id, 'category_id' => $toysCategory->id]);
        Brand::create(['name' => 'Hasbro', 'user_id' => $user->id, 'category_id' => $toysCategory->id]);
        Brand::create(['name' => 'Mattel', 'user_id' => $user->id, 'category_id' => $toysCategory->id]);

        // Brands for Beauty
        Brand::create(['name' => 'L’Oreal', 'user_id' => $user->id, 'category_id' => $beautyCategory->id]);
        Brand::create(['name' => 'Estee Lauder', 'user_id' => $user->id, 'category_id' => $beautyCategory->id]);
        Brand::create(['name' => 'Maybelline', 'user_id' => $user->id, 'category_id' => $beautyCategory->id]);

        // Brands for Automotive
        Brand::create(['name' => 'Ford', 'user_id' => $user->id, 'category_id' => $automotiveCategory->id]);
        Brand::create(['name' => 'Chevrolet', 'user_id' => $user->id, 'category_id' => $automotiveCategory->id]);
        Brand::create(['name' => 'Toyota', 'user_id' => $user->id, 'category_id' => $automotiveCategory->id]);

        // Brands for Health
        Brand::create(['name' => 'CVS', 'user_id' => $user->id, 'category_id' => $healthCategory->id]);
        Brand::create(['name' => 'Walgreens', 'user_id' => $user->id, 'category_id' => $healthCategory->id]);
        Brand::create(['name' => 'GNC', 'user_id' => $user->id, 'category_id' => $healthCategory->id]);

        // Brands for Gardening
        Brand::create(['name' => 'Scotts', 'user_id' => $user->id, 'category_id' => $gardeningCategory->id]);
        Brand::create(['name' => 'Miracle-Gro', 'user_id' => $user->id, 'category_id' => $gardeningCategory->id]);
        Brand::create(['name' => 'GardenWay', 'user_id' => $user->id, 'category_id' => $gardeningCategory->id]);

        // Brands for Stationery
        Brand::create(['name' => 'Paper Mate', 'user_id' => $user->id, 'category_id' => $stationeryCategory->id]);
        Brand::create(['name' => 'BIC', 'user_id' => $user->id, 'category_id' => $stationeryCategory->id]);
        Brand::create(['name' => 'Pilot', 'user_id' => $user->id, 'category_id' => $stationeryCategory->id]);

        // Brands for Food
        Brand::create(['name' => 'Nestle', 'user_id' => $user->id, 'category_id' => $foodCategory->id]);
        Brand::create(['name' => 'Kellogg\'s', 'user_id' => $user->id, 'category_id' => $foodCategory->id]);
        Brand::create(['name' => 'General Mills', 'user_id' => $user->id, 'category_id' => $foodCategory->id]);

        // Brands for Beverages
        Brand::create(['name' => 'Coca-Cola', 'user_id' => $user->id, 'category_id' => $beveragesCategory->id]);
        Brand::create(['name' => 'Pepsi', 'user_id' => $user->id, 'category_id' => $beveragesCategory->id]);
        Brand::create(['name' => 'Sprite', 'user_id' => $user->id, 'category_id' => $beveragesCategory->id]);

        // Brands for Household
        Brand::create(['name' => 'Clorox', 'user_id' => $user->id, 'category_id' => $householdCategory->id]);
        Brand::create(['name' => 'Lysol', 'user_id' => $user->id, 'category_id' => $householdCategory->id]);
        Brand::create(['name' => 'P&G', 'user_id' => $user->id, 'category_id' => $householdCategory->id]);

        // Brands for Pet Supplies
        Brand::create(['name' => 'Pedigree', 'user_id' => $user->id, 'category_id' => $petSuppliesCategory->id]);
        Brand::create(['name' => 'Purina', 'user_id' => $user->id, 'category_id' => $petSuppliesCategory->id]);
        Brand::create(['name' => 'Kong', 'user_id' => $user->id, 'category_id' => $petSuppliesCategory->id]);

        // Brands for Office Supplies
        Brand::create(['name' => 'Staples', 'user_id' => $user->id, 'category_id' => $officeSuppliesCategory->id]);
        Brand::create(['name' => 'Office Depot', 'user_id' => $user->id, 'category_id' => $officeSuppliesCategory->id]);
        Brand::create(['name' => '3M', 'user_id' => $user->id, 'category_id' => $officeSuppliesCategory->id]);

        // Brands for Jewelry
        Brand::create(['name' => 'Tiffany & Co.', 'user_id' => $user->id, 'category_id' => $jewelryCategory->id]);
        Brand::create(['name' => 'Cartier', 'user_id' => $user->id, 'category_id' => $jewelryCategory->id]);
        Brand::create(['name' => 'Bvlgari', 'user_id' => $user->id, 'category_id' => $jewelryCategory->id]);

        // Brands for Footwear
        Brand::create(['name' => 'Nike', 'user_id' => $user->id, 'category_id' => $footwearCategory->id]);
        Brand::create(['name' => 'Adidas', 'user_id' => $user->id, 'category_id' => $footwearCategory->id]);
        Brand::create(['name' => 'Reebok', 'user_id' => $user->id, 'category_id' => $footwearCategory->id]);

        // Brands for Accessories
        Brand::create(['name' => 'Ray-Ban', 'user_id' => $user->id, 'category_id' => $accessoriesCategory->id]);
        Brand::create(['name' => 'Fossil', 'user_id' => $user->id, 'category_id' => $accessoriesCategory->id]);
        Brand::create(['name' => 'Michael Kors', 'user_id' => $user->id, 'category_id' => $accessoriesCategory->id]);

        // Brands for Watches
        Brand::create(['name' => 'Rolex', 'user_id' => $user->id, 'category_id' => $watchesCategory->id]);
        Brand::create(['name' => 'Omega', 'user_id' => $user->id, 'category_id' => $watchesCategory->id]);
        Brand::create(['name' => 'Casio', 'user_id' => $user->id, 'category_id' => $watchesCategory->id]);

        // Brands for Luggage
        Brand::create(['name' => 'Samsonite', 'user_id' => $user->id, 'category_id' => $luggageCategory->id]);
        Brand::create(['name' => 'Tumi', 'user_id' => $user->id, 'category_id' => $luggageCategory->id]);
        Brand::create(['name' => 'American Tourister', 'user_id' => $user->id, 'category_id' => $luggageCategory->id]);
    }
}
