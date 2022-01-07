<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        if(Auth::user()->role_id == 2){
            return redirect()->route('agent.home');
        }

        if(Auth::user()->role_id == 6){
            return redirect()->route('shopkeeper.home');
        }

        if(Auth::user()->role_id == 4){
            return 'fddf';
        }
        

        if((Auth::user()->role_id == 1) or (Auth::user()->role_id == 3)){ // admin
            return redirect()->route('admin.home');            
        }

        return view('home');
        
    }


    public function password_change()
    {
        return view('auth.passwords.change-password');
    }
}
