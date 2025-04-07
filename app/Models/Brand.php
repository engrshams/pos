<?php
namespace App\Models;
use Illuminate\Database\Eloquent\Model;
class Brand extends Model{
    protected $fillable = ['name','user_id','category_id'];
    public function category(){
        return $this->belongsTo(Category::class);    }
    public function products(){
        return $this->hasMany(Product::class);    }
    public function user(){
        return $this->belongsTo(User::class);}
}
