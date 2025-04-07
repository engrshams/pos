<?php
namespace App\Helper;
use \Firebase\JWT\JWT;  // Add this line to import the Firebase JWT class
use \Firebase\JWT\Key;
use Exception;
class JWTToken{
    public static function CreateToken($userEmail,$userId){
        $key = env('JWT_KEY');
        $payload = [
            'iss' => 'laravel-token',  // token creator
            'iat' => time(),  // token creation time
            'exp' => time()+60*24*30, // 30 days, token expire time
            'userEmail'=>$userEmail,
            'userId'=>$userId,
        ];
        return JWT::encode($payload,$key,'HS256');
    }

    public static function VerifyToken($token):string|object{   // used/called from Middleware
        try{
            if($token==null){
                return 'unauthorized';
            }else{
                $key=env('JWT_KEY');
                $decode= JWT::decode($token, new Key($key, 'HS256'));
                return $decode;
            }
        }catch(Exception $e){
            return 'unauthorized';
        }
    }

    public static function CreateTokenForSetPassword($userEmail){
        $key = env('JWT_KEY');
        $payload = [
            'iss' => 'laravel-token',  // token creator
            'iat' => time(),  // token creation time
            'exp' => time()+60*24*30, // 30 days, token expire time
            'userEmail'=>$userEmail,
            'userId'=>'0',
        ];
        return JWT::encode($payload,$key,'HS256');
    }

}
