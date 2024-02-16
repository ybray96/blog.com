<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use \App\Models\User;
use App\Mail\RegisterMail;
use Hash;
use Mail;
use Str;
use Auth;

class AuthController extends Controller
{
    public function login()
    {
        return view('auth.login');
    }

    public function register()
    {
        return view('auth.register');
    }

    public function forgot()
    {
        return view('auth.forgot');
    }

    public function auth_login(Request $request)
    {
        $remember = !empty($remember->remember) ? true :false;
        if(Auth::attempt(['email'=> $request->email, 'password'=>$request->password], $remember))
        {
            if(!empty(Auth::user()->email_verified_at))
            {
                echo "Succesfully";
                die;
            }
            else
            {
                $user_id=Auth::user()->id;
                Auth::logout();

                $save=User::getSingle($user_id);
                $save->remember_token = Str::random(40);
                $save->save();
                

                Mail::to($save->email)->send(new RegisterMail($save));
                return redirect()->back()->with('success', "Please first you can verify your email address");
            }
        }
        else
        {
            return redirect()->back()->with('error', "Please enter currect email and password");
        }

    }

    public function create_user(Request $request)
    {
        request()->validate([
            'name'=>'required',
            'email'=>'required|email|unique:users',
            'password'=>'required',

        ]);

        $save = new User;
        $save->name=trim($request->name);
        $save->email=trim($request->email);
        $save->password=Hash::make($request->password);
        $save->remember_token=Str::random(40);
        
        $save->save();

        Mail::to($save->email)->send(new RegisterMail($save));
        return redirect('login')->with('success', 'Your account register successfully and verify your email address');

    }

    public function verify($token){
        $user = User::where('remember_token', '=', $token)->first();
        if(!empty($user)){
            $user->email_verified_at = date('Y-m-d H:i:s');
            $user->remember_token = Str::random(40);
            $user->save();

            return redirect('login')->with('success', 'Your account register successfully verified');
        }
        else{
            abort(404);
        }
    }
}
