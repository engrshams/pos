<?php
namespace App\Models;
use App\Models\User;
use App\Models\Brand;
use App\Models\Product;
use Illuminate\Database\Eloquent\Model;

class Category extends Model{
    protected $fillable = ['name','user_id'];
    public function products(){
        return $this->hasMany(Product::class);    }
    public function brands(){
        return $this->hasMany(Brand::class);    }
    public function user(){
        return $this->belongsTo(User::class);}
}
