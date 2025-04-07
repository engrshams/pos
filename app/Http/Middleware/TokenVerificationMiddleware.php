<?php
namespace App\Http\Middleware;
use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;
use App\Helper\JWTToken;

class TokenVerificationMiddleware{
    public function handle(Request $request, Closure $next): Response
    {
        $token=$request->cookie('token');
        $result=JWTToken::VerifyToken($token);
        if($result=='Unauthorized'){
            return response()->json([
                'status'=>'Failed',
                'message' =>'Unauthorized'
            ]);
        }else{
            $request->headers->set('email',$result->userEmail);// same variable name defined in JWTToken.php file's createToken function
            $request->headers->set('id',$result->userId);// same variable name defined in JWTToken.php file's createToken function
            return $next($request);
        }
    }
}
