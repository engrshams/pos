<?php

namespace App\Http\Controllers;

use Exception;
use Inertia\Inertia;
use App\Models\Brand;
use App\Models\Product;
use App\Models\Category;
use Illuminate\Http\Request;

class ProductController extends Controller{

    public function ProductPage(Request $request){
        $user_id = $request->header('id');
        $products = Product::where('user_id', $user_id)
            ->with('category')->with('brand')->latest()->get();//latest product will display first
        return Inertia::render('ProductPage', ['products' => $products]);
        // return $products;
    }//end method

    public function ProductSavePage(Request $request){
        $user_id = $request->header('id');
        $product_id = $request->query('id');
        $product = Product::where('id',$product_id)->where('user_id',$user_id)->first();
        $categories = Category::where('user_id', $user_id)->get();
        $brands = Brand::where('user_id', $user_id)->get();
        return Inertia::render('ProductSavePage', ['product' => $product, 'categories' => $categories, 'brands'=> $brands]);
    }//end method

    
    public function AddProduct(Request $request){
        // dd($request->all());
        $user_id=$request->header('id');  // middleware TokenVerificationMiddleware 
        $request->validate([
            'category_id' => 'required',
            'brand_id'=> 'required',
            'name' => 'required',
            'price' => 'required',                        
            'unit' => 'required',
            'image' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg,webp|max:2048', // max 2MB
        ]);
        $data=[
            'user_id'=>$user_id,
            'category_id'=>$request->input('category_id'),
            'brand_id'=>$request->input('brand_id'),
            'name'=>$request->input('name'),
            'price'=>$request->input('price'),           
            'unit'=>$request->input('unit'),
            //'image'=>$request->input('image'),
        ];
        if($request->hasFile('image')) {
            $image = $request->file('image');
            $imageName = time() . '.' . $image->getClientOriginalExtension();
            $imagePath = 'uploads/' . $imageName;
            $image->move(public_path('uploads'), $imageName);
            $data['image'] = $imagePath;            
        }
        Product::create($data);
        $data=['message' => 'Product added successfully','status' => true,'error'=>''];
        return redirect('/ProductPage')->with($data);
        //return response()->json(['status' => 'success','message' => 'Product added successfully'], 200);
    }//end method

    public function ProductList(Request $request){
        $user_id=$request->header('id');  // middleware TokenVerificationMiddleware
        $products=Product::where('user_id',$user_id)->get();
        if ($products) {
            return response()->json(['status' => 'success','message' => 'Products fetched successfully','data'=>$products],200);
            //return $products;
        }else{
            return response()->json(['status' => 'failed','message' => 'Products not found'],404);
        }
    }//end method

    public function ProductById(Request $request){
        $user_id=$request->header('id');  // middleware TokenVerificationMiddleware
        $id=$request->input('id');
        $product=Product::where('user_id',$user_id)->where('id',$id)->first();
        if ($product) {
            return response()->json(['status' => 'success','message' => 'Category fetched successfully','data'=>$product],200);
            //return $category;
        } else {
            // If the category is not found for this user, return a 404 response
            return response()->json(['status' => 'failed', 'message' => 'Product with ID ' . $request->input('id') . ' for user ID ' . $user_id . ' not found'], 404);
        }
    }

    public function ProductUpdate(Request $request){
        $user_id = $request->header('id');

        // Validate incoming request data upfront
        $request->validate([
            'id' => 'required|integer|exists:products,id,user_id,' . $user_id,  // This checks that the id exists in the products table and that it belongs to the user with the user_id passed in the header.
            'name' => 'required|string|max:255',
            'price' => 'required|numeric',
            'unit' => 'required|string|max:255',
            'brand_id' => 'required|integer|exists:brands,id',
            'category_id' => 'required|integer|exists:categories,id', // 'exists:categories,id': This checks that the category_id exists in the categories table.
        ]);

        // Find the product, if not found it will return a 404 automatically
        $product = Product::where('user_id', $user_id)->findOrFail($request->input('id'));

        // Update the product fields
        $product->name = $request->input('name');
        $product->price = $request->input('price');
        $product->unit = $request->input('unit');
        $product->category_id = $request->input('category_id');
        $product->brand_id = $request->input('brand_id');

        // Handle the image upload if it exists in the request
        if ($request->hasFile('image')) {
            // Validate image
            $request->validate([
                'image' => 'image|mimes:jpeg,png,jpg,gif,svg,webp|max:2048'
            ]);

            // If the product has an existing image, delete it
            if ($product->image && file_exists(public_path($product->image))) {
                unlink(public_path($product->image));
            }

            // Process the new image upload
            $image = $request->file('image');
            $fileName = time() . '.' . $image->getClientOriginalExtension();
            $filePath = 'uploads/' . $fileName;
            $image->move(public_path('uploads'), $fileName);

            // Assign the new image path to the product
            $product->image = $filePath;
        }

        // Attempt to save the updated product
        $saveSuccessful = $product->save();

        if ($saveSuccessful) {
            $data= ['message' => 'Product updated successfully','status' => true,'error' => '' ];
            return redirect('/ProductPage')->with($data);
        } else {
            $data= ['message' => 'Failed to updated Product','status' => false,'error' => '' ];
            return redirect('/ProductPage')->with($data);
        }
    }//end method

    public function ProductDelete(Request $request,$id){
        try{
            $product = Product::findOrFail($id);
            if($product->image && file_exists(public_path($product->image))){
                unlink(public_path($product->image));
            }
            $product->delete();
            $data=['message' => 'Product deleted successfully','status' => true,'error'=>''];
            return redirect('/ProductPage')->with($data);
        }catch(Exception $e){            
            $data=['message' => 'error: '.$e->getMessage(),'status' => true,'error'=>''];
            return redirect('/ProductPage')->with($data);
        }
    }//end method
    
}
