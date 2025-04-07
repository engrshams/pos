<?php
namespace App\Http\Controllers;
use Inertia\Inertia;
use Illuminate\Http\Request;
class HomeController extends Controller{
    public function first(){
        return Inertia::render('MainPage');
    }
    public function test(){
        return Inertia::render('TestPage');
    }

    public function index(){
        return Inertia::render('HomePage');
    }
}

