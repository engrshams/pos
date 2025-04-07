<?php

namespace App\Http\Controllers;
use Exception;
use Inertia\Inertia;
use App\Models\Invoice;
use App\Models\Product;
use App\Models\Customer;
use Illuminate\Http\Request;
use App\Models\InvoiceProduct;
use Illuminate\Support\Facades\DB;

class InvoiceController extends Controller{

    public function InvoiceListPage(Request $request){
        $user_id = request()->header('id');
        $list = Invoice::where('user_id', $user_id)
            ->with('customer','invoiceProducts.product')->get();
        return Inertia::render('InvoiceListPage', ['list' => $list]);
        //return $list;
    }
    
    public function InvoiceCreate(Request $request){
        // dd($request->all());
        DB::beginTransaction();
        $user_id = $request->header('id');
        $existCustomer = Customer::where('user_id', $user_id)->where('id', $request->customer_id)->first();
            if($existCustomer){
            try {                
                $data = [
                    'user_id' => $user_id,
                    'customer_id' => $request->customer_id,
                    'total' => $request->total,
                    'vat' => $request->vat,
                    'payable' => $request->payable,
                    'discount' => $request->discount
                ];            
                $invoice = Invoice::create($data);
                $products = $request->input('products');
                foreach($products as $product){
                    $existUnit = Product::where('user_id', $user_id)->where('id', $product['id'])->first();
                    // dd($existUnit);
                    if(!$existUnit){
                        $data= ['status' => false,'message' => "Product with ID {$product['id']} of user ID {$user_id} not found",'error'=> ''];
                        return redirect('/InvoiceListPage')->with($data);                        
                    }

                    if($existUnit->unit < $product['unit']){
                        $data= ['status'=> false,'message'=> 'Only '.$existUnit->unit.' units available in stock for product id '.$product['id'],'error'=> ''];
                        return redirect('/InvoiceListPage')->with($data);                        
                    }
                    InvoiceProduct::create([
                        'invoice_id' => $invoice->id,
                        'product_id' => $product['id'],
                        'user_id' => $user_id,
                        'qty' => $product['unit'],        // model migration and here field name should be same  qty
                        'sale_price' => $product['price']
                    ]);
                    Product::where('id', $product['id'])->update([
                        'unit' => $existUnit->unit - $product['unit']
                    ]);
                }//end foreach

                DB::commit();
                $data= ['status' => true,'message' => 'Invoice created successfully','error'=> ''];
                return redirect('/InvoiceListPage')->with($data);                
            }catch(Exception $e){
                DB::rollBack();
                $data= ['status'=> false,'message'=> 'Error. '. $e->getMessage(),'error'=> ''];
                return redirect('/InvoiceListPage')->with($data);                
            }
        }else{
            $data= ['status'=> false,'message'=> 'Customer with ID '.$request->customer_id.' of user ID '.$user_id.' not found','error'=> ''];
            return redirect('/InvoiceListPage')->with($data);            
        }
    }//end method

    public function InvoiceList(){
        $user_id = request()->header('id');
        $invoices = Invoice::with('customer')->where('user_id', $user_id)->get();
        return $invoices;
    }//end method

    public function InvoiceDetails(Request $request){
        $user_id = request()->header('id');

        $invoiceDetails = Invoice::where('user_id', $user_id)->where('id', $request->invoice_id)->first();
        $customerDetails = Customer::where('user_id', $user_id)->where('id', $invoiceDetails['customer_id'])->first();        
        $invoiceProduct = InvoiceProduct::where('invoice_id', $request->invoice_id)
            ->where('user_id',$user_id)->with('product')
            ->get();

        return [
            'customer' => $customerDetails,
            'invoice' => $invoiceDetails,
            'product' => $invoiceProduct
        ];
    }//end method

    public function InvoiceDelete(Request $request, $id){
        DB::beginTransaction();
        $user_id = request()->header('id');
        $existInvoice = Invoice::where('user_id', $user_id)->where('id', $id)->first();
        if($existInvoice){
            try {                                            
                InvoiceProduct::where('invoice_id', $id)
                    ->where('user_id', $user_id)
                    ->delete();

                Invoice::where('id', $id)
                    ->where('user_id', $user_id)
                    ->delete();

                DB::commit();
                // return response()->json([
                //     'status' => 'success',
                //     'message' => "Invoice {$id} deleted successfully"	
                // ]);
                $data= ['status' => true,'message' => "Invoice {$id} deleted successfully",'error'=> ''];
                return redirect('/InvoiceListPage')->with($data);
            }catch(Exception $e){
                DB::rollBack();                
                $data= ["status"=> false,"message"=> 'Error. '.$e->getMessage(),'error'=> ''];
                return redirect('/InvoiceListPage')->with($data);
            }
        }else{            
            $data= ['status' => false,'message' => "Invoice with ID {$id} of user ID {$user_id} not found",'error'=> ''];            
            return redirect('/InvoiceListPage')->with($data);
        }
    }
}
