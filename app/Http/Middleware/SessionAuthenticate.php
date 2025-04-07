<?php
namespace App\Http\Middleware;
use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;
class SessionAuthenticate{
    public function handle(Request $request, Closure $next): Response{
        // Debug the session data by dumping the session content
        // dd($request->session()->all());  // This will show all session data

        $email = $request->session()->get('email','default');
        $user_id = $request->session()->get('user_id','default');
        if($email == 'default'){
            return redirect('/login');
        }else{
            $request->headers->set('email',$email);
            $request->headers->set('id',$user_id);
            return $next($request);
        }
    }
}