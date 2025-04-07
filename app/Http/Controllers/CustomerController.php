<?php

namespace App\Http\Controllers;

use Exception;
use Inertia\Inertia;
use App\Models\Customer;
use Illuminate\Http\Request;

class CustomerController extends Controller{
    public function CustomerPage(Request $request){
        $user_id= $request->header('id');
        $customers = Customer::where('user_id', $user_id)->get();
        return Inertia::render('CustomerPage', ['customers' => $customers,]);
    }//end method
    public function CustomerSavePage(Request $request){
        $user_id= $request->header('id');
        $id= $request->query('id');
        $customer = Customer::where('user_id', $user_id)->where('id', $id)->first();
        return Inertia::render('CustomerSavePage',['customer'=> $customer]);
    }//end method

    public function AddCustomer(Request $request){
        $user_id = $request->header('id');
        // dd($request->all());

        $request->validate([
            'name' => 'required',
            'email' => 'required|email|unique:customers,email',
            'mobile' => 'required',
        ]);

        Customer::create([
            'name' => $request->input('name'),
            'email' => $request->input('email'),
            'mobile' => $request->input('mobile'),
            'user_id' => $user_id,
        ]);
        $data=['message' => 'Customer added successfully', 'status' => true, 'error' => ''];
        return redirect('CustomerPage')->with( $data);
    }//end method

    public function CustomerList(Request $request){
        $user_id = $request->header('id');
        $customers = Customer::where('user_id', $user_id)->get();
        return $customers;
    }//end method

    public function CustomerById(Request $request){
        $user_id = $request->header('id');
        $customer =Customer::where('id', $request->id)->where('user_id', $user_id)->first();
        return $customer;
    }//end method

    public function CustomerUpdate(Request $request){
        $user_id = $request->header('id');
        $id = $request->input('id');
        Customer::where('id', $id)->where('user_id', $user_id)->update([
            'name' => $request->input('name'),
            'email' => $request->input('email'),
            'mobile' => $request->input('mobile'),
        ]);
        $data=['message' => 'Customer updated successfully', 'status' => true, 'error' => ''];
        return redirect('CustomerPage')->with( $data);
    }//end method

    public function CustomerDelete(Request $request,$id){
        $user_id = $request->header('id');
        try {
            $customer = Customer::where('user_id', $user_id)
                ->where('id', $id)
                ->first();
            $name = $customer->name;
    
            if ($customer) {
                $customer->delete();
    
                $data = ['message' => "Customer {$name} deleted successfully", 'status' => true, 'error' => ''];
                return redirect('CustomerPage')->with($data);
            } else {
                $data = ['status' => false, 'message' => "Customer {$name} not found", 'error' => ''];
                return redirect('CustomerPage')->with($data);
            }
            } catch (Exception $e) {
                $data = ['status' => false, 'message' => 'Error ' . $e->getMessage(), 'error' => ''];
                return redirect('CustomerPage')->with($data);
            }
    }//end method

}
