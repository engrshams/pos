<?php
namespace App\Http\Controllers;
use Exception;
use App\Models\User;
use Inertia\Inertia;
use App\Mail\OTPMail;
use App\Models\Invoice;
use App\Models\Product;
use App\Helper\JWTToken;

use App\Models\Category;
use App\Models\Customer;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use function Laravel\Prompts\password;

class UserController extends Controller{


    public function LoginPage(Request $request){
        return Inertia::render('LoginPage');
    }//end method

    public function RegistrationPage(Request $request){
        return Inertia::render('RegistrationPage');
    }//end method

    public function SendOTPPage(Request $request){
        return Inertia::render('SendOTPPage');
    }//end method

    public function VerifyOTPPage(Request $request){
        return Inertia::render('VerifyOTPPage');
    }//end method

    public function ResetPasswordPage(Request $request){
        return Inertia::render('ResetPasswordPage');
    }//end method

    public function ProfilePage(Request $request){
        $email = request()->header('email');

        $user = User::where('email', $email)->first();
        return Inertia::render('ProfilePage',['user'=>$user]);
    }//end method

    public function UserUpdate(Request $request){
        $email = request()->header('email');
        User::where('email', $email)->update([
            'name' => $request->input('name'),
            'email'=> $request->input('email'),
            'mobile'=> $request->input('mobile'),
        ]);
        $data = ['message'=> 'Profile update successfully','status'=>true, 'error'=>'' ];
        return redirect()->back()->with($data);
    }//end method
    
    public function userRegistration(Request $request){
        try{ 
            $request->validate([
                'name'=>'required',
                'email'=>'required|email|unique:users,email',
                'password'=>'required',
                'mobile'=>'required'
            ]);
            $user=User::factory()->create([
                'email' => $request->input('email'),
                'password' => $request->input('password'),
                'name' => $request->input('name'),
                'mobile' => $request->input('mobile'),
            ]);
            $data = ['message'=>'User created successfully','status'=>true,'error'=>''];
            return redirect('/login')->with($data);
        }
        catch(Exception $e){
            $data = ['message'=>'Something went wrong','status'=>false,'error'=>''];
            return redirect('/registration')->with($data);
        }
    }

    public function userLogin(Request $request){        
        // Check if user exists with provided email and password
        $userId=User::where('email',$request->input('email'))->where('password',$request->input('password'))->select('id')->first();
        // dd($userId);
        // If user is found
        if ($userId !== null) {
            //For user login page use session variable
            $email= $request->input('email');
            $user_id=$userId->id;
            // save email and user_id in session
            $request->session()->put('email', $email);
            $request->session()->put('user_id', $user_id);

            $data = ['message'=>'User login successfully','status'=>true,'error'=>''];
            return redirect('/DashboardPage')->with($data);
        }else {
            $data = ['message'=>'Login failed','status'=>false,'error'=>''];
            return redirect('/login')->with($data);
        }
    }//end method

    public function DashboardPage(Request $request){
        $user_id = request()->header('id');

        $product = Product::where('user_id', $user_id)->count();
        $category = Category::where('user_id', $user_id)->count();
        $customer = Customer::where('user_id', $user_id)->count();
        $invoice = Invoice::where('user_id', $user_id)->count();
        $total = Invoice::where('user_id', $user_id)->sum('total');
        $vat = Invoice::where('user_id', $user_id)->sum('vat');
        $payable = Invoice::where('user_id', $user_id)->sum('payable');
        $discount = Invoice::where('user_id', $user_id)->sum('discount');

        $data = [
            'product' => $product,
            'category' => $category,
            'customer' => $customer,
            'invoice' => $invoice,
            'total' => round($total),
            'vat' => round($vat),
            'payable' => round($payable),
            'discount' => $discount
        ];
        return Inertia::render('DashboardPage',['list'=>$data]);
    }//end method

    function userLogout(Request $request){
        $request->session()->forget('email');  // remove email from session OR it can use FLASH
        $request->session()->forget('user_id');// remove email from session OR it can use FLASH
        $data = ['message'=>'User logout successfully','status'=>true,'error'=>''];
        return redirect('/login')->with($data);
    }

    public function SendOTP(Request $request){
        $email = $request->input('email');
        $otp = rand(1000,9999); 
        //$passW = Str::random(6); // 6-character alphanumeric string
        $customMsg="Dhaka, Bangladesh";
        $count=User::where('email',$email)->count();
        if($count==1){
            // User::where('email',$email)->update(['otp'=>$otp, 'password'=>$passW]);
            User::where('email',$email)->update(['otp'=>$otp]);
            Mail::to($email)->send(new OTPMail($otp,$customMsg));  // OTPMail is a custom class for OTP by email
            $request->session()->put('email', $email);  // save email in session
            $data = ["message"=>"4 Digit {$otp} OTP send successfully","status"=>true,"error"=>''];
            return redirect('/verify-otp')->with($data); //redirect to VerifyOTPPage
        }else{
            $data = ['message'=>'unauthorized','status'=>false,'error'=>''];
            return redirect('/registration')->with($data);  //redirect to registration page
        }
    }//end method
    public function VerifyOtp(Request $request){
        // $email = $request->input('email');
        $email = $request->session()->get('email');
       $otp = $request->input('otp');
       $count=User::where('email',$email)->where('otp',$otp)->count();
       if($count==1){
           User::where('email',$email)->update(['otp'=>0]);
           // $token=JWTToken::CreateTokenForSetPassword($request->input('email'));
           $request->session()->put('otp_verify','yes');
           $data = ["message"=>"OTP verification successfully","status"=>true,"error"=>''];
           return redirect('/reset-password')->with($data);  // ResetPasswordPage
       }else{
           $data = ['message'=> 'unauthorized','status'=>false, 'error'=>''];
           return redirect('/login')->with($data);
       }
   }


    public function ResetPassword(Request $request){
        try{
            $email = $request->session()->get('email','default');
            $password = $request->input('password');

            $otp_verify = $request->session()->get('otp_verify','default');
            if($otp_verify === 'yes'){
                User::where('email', $email)->update(['password' => $password]);
                $request->session()->flush();  // remove all session data

                $data = ['message'=> 'Password reset successfully','status'=>true, 'error'=>'' ];
                return redirect('/login')->with($data);  // redirect to login page
            }else{
                $data = ['message'=> 'Request fail','status'=>false, 'error'=>'' ];
                return redirect('/reset-password')->with($data);// redirect to reset password page
            }
        }catch(Exception $e){
            $data = ['message'=> $e->getMessage(),'status'=>false, 'error'=>'' ];
            return redirect('/reset-password')->with($data);// redirect to reset password page
        }
    }//end method
}
