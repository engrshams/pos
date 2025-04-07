<?php
namespace Database\Seeders;
use App\Models\User;
use App\Models\Brand;
use App\Models\Product;
use App\Models\Category;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class ProductSeeder extends Seeder{
    public function run(): void{
        $user = User::first(); // Assuming you have at least one user

        // Fetch categories and brands
        $electronics = Category::where('name', 'Electronics')->first();
        $furniture = Category::where('name', 'Furniture')->first();
        $sports = Category::where('name', 'Sports')->first();
        $books = Category::where('name', 'Books')->first();
        $toys = Category::where('name', 'Toys')->first();
        $beauty = Category::where('name', 'Beauty')->first();
        $automotive = Category::where('name', 'Automotive')->first();
        $health = Category::where('name', 'Health')->first();
        $gardening = Category::where('name', 'Gardening')->first();
        $stationery = Category::where('name', 'Stationery')->first();
        $food = Category::where('name', 'Food')->first();
        $beverages = Category::where('name', 'Beverages')->first();
        $household = Category::where('name', 'Household')->first();
        $petSupplies = Category::where('name', 'Pet Supplies')->first();
        $officeSupplies = Category::where('name', 'Office Supplies')->first();
        $jewelry = Category::where('name', 'Jewelry')->first();
        $footwear = Category::where('name', 'Footwear')->first();
        $accessories = Category::where('name', 'Accessories')->first();
        $watches = Category::where('name', 'Watches')->first();
        $luggage = Category::where('name', 'Luggage')->first();

        // Brands
        $samsung = Brand::where('name', 'Samsung')->first();
        $ikea = Brand::where('name', 'IKEA')->first();
        $nike = Brand::where('name', 'Nike')->first();
        $penguin = Brand::where('name', 'Penguin')->first();
        $lego = Brand::where('name', 'LEGO')->first();
        $loreal = Brand::where('name', 'L’Oreal')->first();
        $ford = Brand::where('name', 'Ford')->first();
        $cvs = Brand::where('name', 'CVS')->first();
        $scotts = Brand::where('name', 'Scotts')->first();
        $papermate = Brand::where('name', 'Paper Mate')->first();
        $nestle = Brand::where('name', 'Nestle')->first();
        $cocacola = Brand::where('name', 'Coca-Cola')->first();
        $clorox = Brand::where('name', 'Clorox')->first();
        $pedigree = Brand::where('name', 'Pedigree')->first();
        $staples = Brand::where('name', 'Staples')->first();
        $tiffany = Brand::where('name', 'Tiffany & Co.')->first();
        $rayban = Brand::where('name', 'Ray-Ban')->first();
        $rolex = Brand::where('name', 'Rolex')->first();
        $samsonite = Brand::where('name', 'Samsonite')->first();

        // Example Electronics Products
        Product::create(['name' => 'Samsung Galaxy S21','price' => 799.99,'unit' => '10','image' => 'samsung_s21.jpg','user_id' => $user->id,'category_id' => $electronics->id,'brand_id' => $samsung->id,]);
        Product::create(['name'=> 'Samsung Smart TV','price'=> 1299.99,'unit'=> '9','image'=> 'samsung_tv.jpg','user_id'=> $user->id,'category_id'=> $electronics->id,'brand_id'=> $samsung->id,]);

        // Example Furniture Products       
        Product::create(['name'=> 'IKEA Sofa','price'=> 499.99,'unit'=> '9','image'=> 'ikea_sofa.jpg','user_id'=> $user->id,'category_id'=> $furniture->id,'brand_id'=> $ikea->id,]);
        Product::create(['name'=> 'IKEA Dining Table','price'=> 299.99,'unit'=> '9','image'=> 'ikea_table.jpg','user_id'=> $user->id,'category_id'=> $furniture->id,'brand_id'=> $ikea->id,]);

        // Example Sports Products
        Product::create(['name'=> 'Nike Running Shoes','price'=> 120.00,'unit'=> '9','image'=> 'nike_shoes.jpg','user_id'=> $user->id,'category_id'=> $sports->id,'brand_id'=> $nike->id,]);
        Product::create(['name' => 'Nike Sportswear Hoodie','price' => 65.00,'unit' => '9','image' => 'nike_hoodie.jpg','user_id' => $user->id,'category_id' => $sports->id,'brand_id' => $nike->id,]);

        // Example Books Products
        Product::create(['name'=> 'The Great Gatsby','price'=> 14.99,'unit'=> '9','image'=> 'gatsby.jpg','user_id'=> $user->id,'category_id'=> $books->id,'brand_id'=> $penguin->id,]);
        Product::create(['name' => 'To Kill a Mockingbird','price'=> 18.99,'unit'=> '9','image'=> 'mockingbird.jpg','user_id'=> $user->id,'category_id'=> $books->id,'brand_id'=> $penguin->id,]);

        // Example Toys Products
        Product::create(['name'=> 'LEGO Star Wars Set','price'=>59.99,'unit'=>'15','image'=>'lego_starwars.jpg','user_id'=>$user->id,'category_id'=>$toys->id,'brand_id'=>$lego->id,]);
        Product::create(['name'=> 'LEGO Creator Set','price'=> 79.99,'unit'=> '20','image'=> 'lego_creator.jpg','user_id'=>$user->id,'category_id'=>$toys->id,'brand_id'=>$lego->id,]);

        // Example Beauty Products
        Product::create(['name'=> 'L’Oreal Hair Color','price'=> 9.99,'unit'=> '9','image'=> 'loreal_haircolor.jpg','user_id'=> $user->id,'category_id'=> $beauty->id,'brand_id'=> $loreal->id,]);
        Product::create(['name'=> 'Estee Lauder Foundation','price'=> 38.00,'unit'=> '9','image'=> 'estee_foundation.jpg','user_id'=> $user->id,'category_id'=> $beauty->id,'brand_id'=> $loreal->id,]);

        // Example Automotive Products
        Product::create(['name'=> 'Ford F-150 Truck','price'=> 35000.00,'unit'=> '9','image'=> 'ford_f150.jpg','user_id'=> $user->id,'category_id'=> $automotive->id,'brand_id'=> $ford->id,]);     
        Product::create(['name'=> 'Chevrolet Camaro','price'=> 42000.00,'unit'=> '20','image'=> 'chevrolet_camaro.jpg','user_id'=> $user->id,'category_id'=> $automotive->id,'brand_id'=> $ford->id,]);

        // Example Health Products
        Product::create(['name' => 'CVS Vitamin C Tablets', 'price' => 8.99, 'unit' => 'Bottle', 'image' => 'cvs_vitamin_c.jpg', 'user_id' => $user->id, 'category_id' => $health->id, 'brand_id' => $cvs->id]);
        Product::create(['name' => 'Clorox Disinfecting Wipes', 'price' => 4.99, 'unit' => 'Pack', 'image' => 'clorox_wipes.jpg', 'user_id' => $user->id, 'category_id' => $health->id, 'brand_id' => $clorox->id]);

        // Example Gardening Products
        Product::create(['name' => 'Scotts Turf Builder', 'price' => 25.99, 'unit' => 'Bag', 'image' => 'scotts_turf_builder.jpg', 'user_id' => $user->id, 'category_id' => $gardening->id, 'brand_id' => $scotts->id]);
        Product::create(['name' => 'Garden Trowel', 'price' => 12.99, 'unit' => 'Piece', 'image' => 'garden_trowel.jpg', 'user_id' => $user->id, 'category_id' => $gardening->id, 'brand_id' => $scotts->id]);

        // Example Food Products
        Product::create(['name' => 'Nestle Chocolate Bar', 'price' => 1.99, 'unit' => 'Bar', 'image' => 'nestle_chocolate.jpg', 'user_id' => $user->id, 'category_id' => $food->id, 'brand_id' => $nestle->id]);
        Product::create(['name' => 'Nestle Instant Coffee', 'price' => 5.99, 'unit' => 'Jar', 'image' => 'nestle_coffee.jpg', 'user_id' => $user->id, 'category_id' => $food->id, 'brand_id' => $nestle->id]);

        // Example Beverages Products
        Product::create(['name' => 'Coca-Cola Classic', 'price' => 1.50, 'unit' => 'Can', 'image' => 'coca_cola_classic.jpg', 'user_id' => $user->id, 'category_id' => $beverages->id, 'brand_id' => $cocacola->id]);
        Product::create(['name' => 'Coca-Cola Diet', 'price' => 1.50, 'unit' => 'Can', 'image' => 'coca_cola_diet.jpg', 'user_id' => $user->id, 'category_id' => $beverages->id, 'brand_id' => $cocacola->id]);

        // Example Household Products
        Product::create(['name' => 'Clorox Bleach', 'price' => 6.99, 'unit' => 'Bottle', 'image' => 'clorox_bleach.jpg', 'user_id' => $user->id, 'category_id' => $household->id, 'brand_id' => $clorox->id]);
        Product::create(['name' => 'Pedigree Dog Food', 'price' => 18.99, 'unit' => 'Bag', 'image' => 'pedigree_dog_food.jpg', 'user_id' => $user->id, 'category_id' => $household->id, 'brand_id' => $pedigree->id]);

        // Example Pet Supplies Products
        Product::create(['name' => 'Pedigree Wet Dog Food', 'price' => 13.99, 'unit' => 'Pack', 'image' => 'pedigree_wet_dog_food.jpg', 'user_id' => $user->id, 'category_id' => $petSupplies->id, 'brand_id' => $pedigree->id]);
        Product::create(['name' => 'Pedigree Dog Bones', 'price' => 4.99, 'unit' => 'Pack', 'image' => 'pedigree_dog_bones.jpg', 'user_id' => $user->id, 'category_id' => $petSupplies->id, 'brand_id' => $pedigree->id]);

        // Example Office Supplies Products
        Product::create(['name' => 'Staples Printer Paper', 'price' => 10.99, 'unit' => 'Ream', 'image' => 'staples_printer_paper.jpg', 'user_id' => $user->id, 'category_id' => $officeSupplies->id, 'brand_id' => $staples->id]);
        Product::create(['name' => 'Staples Stapler', 'price' => 6.99, 'unit' => 'Piece', 'image' => 'staples_stapler.jpg', 'user_id' => $user->id, 'category_id' => $officeSupplies->id, 'brand_id' => $staples->id]);

        // Example Jewelry Products
        Product::create(['name' => 'Tiffany & Co. Silver Necklace', 'price' => 150.00, 'unit' => 'Piece', 'image' => 'tiffany_necklace.jpg', 'user_id' => $user->id, 'category_id' => $jewelry->id, 'brand_id' => $tiffany->id]);
        Product::create(['name' => 'Tiffany & Co. Diamond Ring', 'price' => 2500.00, 'unit' => 'Piece', 'image' => 'tiffany_ring.jpg', 'user_id' => $user->id, 'category_id' => $jewelry->id, 'brand_id' => $tiffany->id]);

        // Example Footwear Products
        Product::create(['name' => 'Ray-Ban Sunglasses', 'price' => 159.99, 'unit' => 'Pair', 'image' => 'rayban_sunglasses.jpg', 'user_id' => $user->id, 'category_id' => $footwear->id, 'brand_id' => $rayban->id]);
        Product::create(['name' => 'Ray-Ban Aviator', 'price' => 179.99, 'unit' => 'Pair', 'image' => 'rayban_aviator.jpg', 'user_id' => $user->id, 'category_id' => $footwear->id, 'brand_id' => $rayban->id]);

        // Example Watches Products
        Product::create(['name' => 'Rolex Submariner', 'price' => 8000.00, 'unit' => 'Piece', 'image' => 'rolex_submariner.jpg', 'user_id' => $user->id, 'category_id' => $watches->id, 'brand_id' => $rolex->id]);
        Product::create(['name' => 'Rolex Day-Date', 'price' => 12000.00, 'unit' => 'Piece', 'image' => 'rolex_day_date.jpg', 'user_id' => $user->id, 'category_id' => $watches->id, 'brand_id' => $rolex->id]);

        // Example Luggage Products
        Product::create(['name' => 'Samsonite Suitcase', 'price' => 149.99, 'unit' => 'Piece', 'image' => 'samsonite_suitcase.jpg', 'user_id' => $user->id, 'category_id' => $luggage->id, 'brand_id' => $samsonite->id]);
        Product::create(['name' => 'Samsonite Carry-On', 'price' => 119.99, 'unit' => 'Piece', 'image' => 'samsonite_carryon.jpg', 'user_id' => $user->id, 'category_id' => $luggage->id, 'brand_id' => $samsonite->id]);
    }
}
