<?php
namespace App\Models;
use App\Models\Brand;
use App\Models\Invoice;
use App\Models\Product;
use App\Models\Category;
use App\Models\Customer;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use App\Models\InvoiceProduct;
use Illuminate\Notifications\Notifiable;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable{
    use HasFactory, Notifiable;
    protected $fillable = ['name','mobile','email','otp','password',];
    protected $attributes = ['otp' => 0,];

    protected $hidden = ['password','remember_token',];

    protected function casts(): array{
        return ['email_verified_at' => 'datetime',
        // 'password' => 'hashed',
        ]; }

    public function products(){
        return $this->hasMany(Product::class);}
    public function brands(){
        return $this->hasMany(Brand::class);}
    public function categories(){
        return $this->hasMany(Category::class);}
    public function customers(){
        return $this->hasMany(Customer::class);}
    public function invoices(){
        return $this->hasMany(Invoice::class);}
    public function invoiceProducts(){
        return $this->hasMany(InvoiceProduct::class);}
}
