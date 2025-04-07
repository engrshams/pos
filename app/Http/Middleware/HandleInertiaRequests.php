<?php
namespace App\Http\Middleware;
use Illuminate\Http\Request;
use Inertia\Middleware;
class HandleInertiaRequests extends Middleware{
    protected $rootView = 'app';
    public function version(Request $request): ?string{
        return parent::version($request);
    }
    public function share(Request $request): array{
        return array_merge(parent::share($request), [
            'flash'=>[
                'message'=> fn() => $request->session()->pull('message'), // default 'message'
                'status'=> fn() => $request->session()->pull('status'), // default 'status'
                'error'=> fn() => $request->session()->pull('error'), // default 'error'
            ]
        ]);
    }
}    
