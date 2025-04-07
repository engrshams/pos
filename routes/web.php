<?php
use Inertia\Inertia;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\SaleController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\BrandController;
use App\Http\Controllers\InvoiceController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\CustomerController;
use App\Http\Middleware\SessionAuthenticate;
use App\Http\Controllers\DashboardController;
use App\Http\Middleware\TokenVerificationMiddleware;

Route::get('/main',[HomeController::class,'first'])->name('main');
Route::get('/test',[HomeController::class,'test']);


Route::get('/',[HomeController::class,'index'])->name('home');

Route::post('/user-registration',[UserController::class,'userRegistration']);
Route::post('/user-login', [UserController::class, 'UserLogin'])->name('user.login');
Route::post('/send-otp',[UserController::class,'SendOTP'])->name('SendOTP');
Route::post('/verify-otp',[UserController::class,'VerifyOtp'])->name('VerifyOtp');

Route::middleware(SessionAuthenticate::class)->group(function(){
    Route::get('/DashboardPage',[UserController::class,'DashboardPage']);
    Route::get('/user-logout',[UserController::class,'userLogout']);
    Route::post('/reset-password',[UserController::class,'ResetPassword']);

    Route::post('/add-category',[CategoryController::class,'AddCategory'])->name('add.category');
    Route::get('/list-category',[CategoryController::class,'CategoryList'])->name('list.category');
    Route::post('/category-by-id',[CategoryController::class,'CategoryById']);
    Route::post('/update-category',[CategoryController::class,'CategoryUpdate']);
    Route::get('/delete-category/{id}',[CategoryController::class,'CategoryDelete'])->name('category.delete');
    Route::get('/CategoryPage',[CategoryController::class,'CategoryPage'])->name('CategoryPage');
    Route::get('/CategorySavePage', [CategoryController::class, 'CategorySavePage'])->name('CategorySavePage');

    Route::post('/add-brand',[BrandController::class,'AddBrand'])->name('add.brand');
    Route::get('/list-brand',[BrandController::class,'BrandList'])->name('list.brand');
    Route::post('/brand-by-id',[BrandController::class,'BrandById']);
    Route::post('/update-brand',[BrandController::class,'BrandUpdate']);
    Route::get('/delete-brand/{id}',[BrandController::class,'BrandDelete'])->name('brand.delete');
    Route::get('/BrandPage',[BrandController::class,'BrandPage'])->name('BrandPage');
    Route::get('/BrandSavePage', [BrandController::class, 'BrandSavePage'])->name('BrandSavePage');


    Route::post('/add-product',[ProductController::class,'AddProduct'])->name('add.product');
    Route::get('/list-product',[ProductController::class,'ProductList'])->name('list.product');
    Route::post('/product-by-id',[ProductController::class,'ProductById']);
    Route::post('/update-product',[ProductController::class,'ProductUpdate'])->name('product.update');
    Route::get('/delete-product/{id}',[ProductController::class,'ProductDelete'])->name('product.delete');
    Route::get('/ProductPage', [ProductController::class, 'ProductPage'])->name('ProductPage');
    Route::get('/ProductSavePage', [ProductController::class, 'ProductSavePage'])->name('ProductSavePage');

    
    Route::post('/add-customer', [CustomerController::class, 'AddCustomer'])->name('AddCustomer');
    Route::get('/list-customer', [CustomerController::class, 'CustomerList'])->name('CustomerList');
    Route::post('/customer-by-id', [CustomerController::class, 'CustomerById'])->name('CustomerById');
    Route::post('/update-customer', [CustomerController::class, 'CustomerUpdate'])->name('CustomerUpdate');
    Route::get('/delete-customer/{id}', [CustomerController::class, 'CustomerDelete'])->name('CustomerDelete');
    Route::get('/CustomerPage', [CustomerController::class, 'CustomerPage'])->name('CustomerPage');
    Route::get('CustomerSavePage', [CustomerController::class, 'CustomerSavePage'])->name('CustomerSavePage');
     
    //Invoice all routes
    Route::post('/invoice-create', [InvoiceController::class, 'InvoiceCreate'])->name('InvoiceCreate');
    Route::get('/invoice-list', [InvoiceController::class, 'InvoiceList'])->name('InvoiceList');
    Route::post('/invoice-details', [InvoiceController::class, 'InvoiceDetails'])->name('InvoiceDetails');
    Route::get('/invoice-delete/{id}', [InvoiceController::class, 'InvoiceDelete'])->name('InvoiceDelete');
    Route::get('/InvoiceListPage', [InvoiceController::class, 'InvoiceListPage'])->name('InvoiceListPage');

    //sale route
    Route::get('/create-sale', [SaleController::class, 'SalePage'])->name('SalePage');

    //Dashboard Summary
    Route::get('/dashboard-summary', [DashboardController::class, 'DashboardSummary'])->name('DashboardSummary');

    //Reset password page
    Route::get('/reset-password',[UserController::class, 'ResetPasswordPage']);

    Route::get('/ProfilePage', [UserController::class, 'ProfilePage']);
    Route::post('/user-update', [UserController::class, 'UserUpdate']);
    
});


Route::get('/test1',function () {return Inertia::render('Test1');});




//Pages all routes
Route::get('/login',[UserController::class, 'LoginPage'])->name('login.page');
Route::get('/registration',[UserController::class, 'RegistrationPage'])->name('registration.page');
Route::get('/send-otp',[UserController::class, 'SendOTPPage'])->name('sendotp.page');
Route::get('/verify-otp',[UserController::class, 'VerifyOTPPage'])->name('VerifyOTPPage');