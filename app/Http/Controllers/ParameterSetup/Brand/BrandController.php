<?php

namespace App\Http\Controllers\ParameterSetup\Brand;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use Illuminate\Support\Facades\DB;
Use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;



class BrandController extends Controller
{
     public function index(){

    $get_data = DB::table('brands')->orderBy('id','DESC')->get();

    return view('parameter-setup.brand.index', compact('get_data'));
   }


   public function create(){

   return view('parameter-setup.brand.create');
   }


   public function store(Request $request){

        $name = $request->name;
       
       
        DB::table('brands')->insert([

            "name"=>$name,
           
            "entry_by"=>Auth::user()->id,
        ]);


       



        return redirect('parameter-setup/brand/index')->with('message', 'Data Inserted Successfully ');

   } //end store function

}
