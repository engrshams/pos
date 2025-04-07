<?php

namespace App\Http\Controllers;

use Exception;
use Inertia\Inertia;
use App\Models\Brand;
use App\Models\Category;
use Illuminate\Http\Request;

class BrandController extends Controller{
    
    public function BrandPage(Request $request){
        $user_id=$request->header('id');  // middleware SessionAuthenticate
        $brands=Brand::where('user_id',$user_id)->get();
        // return $brands;
        return Inertia::render('BrandPage', ['brands' => $brands,]);
    }

    public function BrandSavePage(Request $request){
        $brand_id=$request->query('id'); 
        $user_id=$request->header('id'); 
        $brand=Brand::where('id',$brand_id)->where('user_id',$user_id)->first();     
        // dd($brand_id,$user_id);
        // dd($brand);
        $categories = Category::where('user_id', $user_id)->get();
        return Inertia::render('BrandSavePage', ['brand' => $brand, 'categories' => $categories]); 
    }
    
    public function AddBrand(Request $request){
        // dd($request->all());
        $user_id=$request->header('id');  // middleware TokenVerificationMiddleware 
        $request->validate([
            'category_id' => 'required',
            'name' => 'required',            
        ]);
        $data=[
            'user_id'=>$user_id,
            'category_id'=>$request->input('category_id'),
            'name'=>$request->input('name'),
        ];
        Brand::create($data);
        $data=['message' => 'Brand added successfully','status' => true,'error'=>''];
        return redirect('/BrandPage')->with($data);        
    }
    public function BrandList(Request $request){
        $user_id=$request->header('id');  // middleware TokenVerificationMiddleware
        $brands=Brand::where('user_id',$user_id)->get();
        return response()->json(['status' => 'success','message' => 'Brands fetched successfully','data'=>$brands],200);
        // return $brands;
    }
    public function BrandById(Request $request){
        $user_id=$request->header('id');  // middleware TokenVerificationMiddleware
        $brand=Brand::where('user_id',$user_id)->where('id',$request->input('id'))->first();
        return response()->json(['status' => 'success','message' => 'Brand fetched successfully','data'=>$brand],200);
        // return $brand;
    }

    public function BrandUpdate(Request $request){
        $user_id = $request->header('id');

        // Validate incoming request data upfront
        $request->validate([
            'id' => 'required|integer|exists:brands,id,user_id,' . $user_id,  // This checks that the id exists in the brands table and that it belongs to the user with the user_id passed in the header.
            'name' => 'required|string|max:255',            
            'category_id' => 'required|integer|exists:categories,id', // 'exists:categories,id': This checks that the category_id exists in the categories table.
        ]);

        // Find the brand, if not found it will return a 404 automatically
        $brand = Brand::where('user_id', $user_id)->findOrFail($request->input('id'));

        // Update the brand fields
        $brand->name = $request->input('name');
        $brand->category_id = $request->input('category_id');
        
        // Attempt to save the updated brand
        $saveSuccessful = $brand->save();

        if ($saveSuccessful) {
            $data= ['message' => 'Brand updated successfully','status' => true,'error' => '' ];
            return redirect('/BrandPage')->with($data);
        } else {
            $data= ['message' => 'Failed to updated Brand','status' => false,'error' => '' ];
            return redirect('/BrandPage')->with($data);
        }
    }

    public function BrandDelete(Request $request, $id){
    $user_id = $request->header('id'); 

    try {
        $brand = Brand::where('user_id', $user_id)
            ->where('id', $id)
            ->first();
        $name = $brand->name;

        if ($brand) {
            $brand->delete();

            $data = ['message' => "Brand {$name} deleted successfully", 'status' => true, 'error' => ''];
            return redirect('BrandPage')->with($data);
        } else {
            $data = ['status' => false, 'message' => "Brand {$name} not found", 'error' => ''];
            return redirect('BrandPage')->with($data);
        }
        } catch (Exception $e) {
            $data = ['status' => false, 'message' => 'Error ' . $e->getMessage(), 'error' => ''];
            return redirect('BrandPage')->with($data);
        }
    }

}

