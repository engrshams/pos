<?php

namespace App\Http\Controllers;

use Exception;
use App\Models\Category;
use Illuminate\Http\Request;
use Inertia\Inertia;

class CategoryController extends Controller{
    
    public function CategoryPage(Request $request){
        $user_id=$request->header('id');  // middleware SessionAuthenticate
        $categories=Category::where('user_id',$user_id)->get();
        // return $categories;
        return Inertia::render('CategoryPage', ['categories' => $categories,]);
    }

    public function CategorySavePage(Request $request){
        $category_id=$request->query('id'); 
        $user_id=$request->header('id'); 
        $category=Category::where('id',$category_id)->where('user_id',$user_id)->first();
        return Inertia::render('CategorySavePage', ['category' => $category,]); 
    }
    
    public function AddCategory(Request $request){
        //validation will handle from frontend
        $user_id=$request->header('id');  // middleware TokenVerificationMiddleware
        // dd($user_id);
        Category::create([
            'user_id'=>$user_id,
            'name'=>$request->input('name'),
        ]);
        $data=['message' => 'Category added successfully', 'status' => true, 'error' => ''];
        return redirect('CategoryPage')->with( $data);
    }
    public function CategoryList(Request $request){
        $user_id=$request->header('id');  // middleware TokenVerificationMiddleware
        $categories=Category::where('user_id',$user_id)->get();
        return response()->json(['status' => 'success','message' => 'Categories fetched successfully','data'=>$categories],200);
        // return $categories;
    }
    public function CategoryById(Request $request){
        $user_id=$request->header('id');  // middleware TokenVerificationMiddleware
        $category=Category::where('user_id',$user_id)->where('id',$request->input('id'))->first();
        return response()->json(['status' => 'success','message' => 'Category fetched successfully','data'=>$category],200);
        // return $category;
    }

    public function CategoryUpdate(Request $request){
        // Get the user ID from the header, typically from a middleware.
        $user_id = $request->header('id');     
        try {
            // Attempt to update the category based on the user_id and category_id
            $category = Category::where('user_id', $user_id)
                ->where('id', $request->input('id'))
                ->first();    
            if ($category) {
                // Update the category
                $category->update([
                    'name' => $request->input('name'),
                ]);
                $data=['status' => true, 'message' => 'Category updated successfully','error' => ''];
                return redirect('CategoryPage')->with($data); 
            } else {
                $data=['status'=> false,'message'=> 'Category not found','error'=> ''];
                return redirect('CategoryPage')->with($data);
            }            
        } catch (Exception $e) {
            // Handle any unexpected exceptions
            $data=['status'=> false,'message'=> 'Error: ' . $e->getMessage(),'error'=> ''];
            return redirect('CategoryPage')->with( $data);            
        }
    }

    public function CategoryDelete(Request $request, $id){
    $user_id = $request->header('id'); 

    try {
        $category = Category::where('user_id', $user_id)
            ->where('id', $id)
            ->first();
        $name = $category->name;

        if ($category) {
            $category->delete();

            $data = ['message' => "Category {$name} deleted successfully", 'status' => true, 'error' => ''];
            return redirect('CategoryPage')->with($data);
        } else {
            $data = ['status' => false, 'message' => "Category {$name} not found", 'error' => ''];
            return redirect('CategoryPage')->with($data);
        }
        } catch (Exception $e) {
            $data = ['status' => false, 'message' => 'Error ' . $e->getMessage(), 'error' => ''];
            return redirect('CategoryPage')->with($data);
        }
    }

}

