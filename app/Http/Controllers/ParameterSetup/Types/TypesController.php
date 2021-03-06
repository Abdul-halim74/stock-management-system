<?php

namespace App\Http\Controllers\ParameterSetup\Types;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use Illuminate\Support\Facades\DB;
Use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class TypesController extends Controller
{
    public function index(){

        $get_data = DB::table('types')->LeftJoin('users','types.entry_user_id','=','users.id')->get();

        return view('parameter-setup.types.index', compact('get_data'));

    }


    public function create(){

         return view('parameter-setup.types.create');
    }


    public function store(Request $request){

        $types_name = $request->types_name;

       $insert = DB::table('types')->insert([

            "types_name"=>$types_name,
            "entry_user_id"=>Auth::user()->id,

        ]);


       return redirect('parameter-setup/types/index')->with('message',"Data Inserted Successfully");
        

    }
}
