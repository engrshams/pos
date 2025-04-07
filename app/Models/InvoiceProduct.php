<?php
namespace App\Models;
use App\Models\User;
use App\Models\Invoice;
use App\Models\Product;
use Illuminate\Database\Eloquent\Model;
class InvoiceProduct extends Model{
    protected $fillable = ['product_id','invoice_id','user_id','qty','sale_price'];
    public function user(){
        return $this->belongsTo(User::class);}
    public function invoice(){
        return $this->belongsTo(Invoice::class);}
    public function product(){
        return $this->belongsTo(Product::class);}
}
