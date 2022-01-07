<?php

namespace App\Http\Controllers\ParameterSetup\Agent;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use Illuminate\Support\Facades\DB;
Use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Hash;

use Image;

class AgentController extends Controller
{
   public function index(){

    $get_data = DB::table('agent_users')->orderBy('id','DESC')->get();

    return view('parameter-setup.agent.index', compact('get_data'));
   }


   public function create(){

   return view('parameter-setup.agent.create');
   }


   public function store(Request $request){

        $name = $request->name;
        $nid = $request->nid;
        $mobile = $request->mobile;
        $present_address = $request->present_address;
        $permanent_address = $request->permanent_address;
        $email = $request->email;
        $image = $request->image;

       $last_inserted_id = DB::table('agent_users')->insertGetId([

            "name"=>$name,
            "nid_number"=>$nid,
            "mobile_number"=>$mobile,
            "present_address"=>$present_address,
            "permanent_address"=>$permanent_address,
            "email"=>$email,
            "entry_user_id"=>Auth::user()->id,
            "entry_datetime"=>date('Y-m-d h:i:s a'),
        ]);


       // echo $last_inserted_id;
       //user face image
        if ($request->hasFile('image')) {

            $image = $request->image;
            
            $image_filename_extension = $image->getClientOriginalExtension();
            

             $filename = $last_inserted_id.".".$image_filename_extension;

             //echo base_path('public/uploads/blog_image/'.$filename);

             Image::make($image)->resize(400,300)->save(base_path('uploads/agent_user_image/'.$filename));

             DB::table('agent_users')->where('id',$last_inserted_id)->update([
                'image'=>$filename
             ]);

        }


        //user NID image
        if ($request->hasFile('nid_image')) {

            $image = $request->nid_image;
            
            $image_filename_extension = $image->getClientOriginalExtension();
            

             $filename = $last_inserted_id.".".$image_filename_extension;

             //echo base_path('public/uploads/blog_image/'.$filename);

             Image::make($image)->resize(400,300)->save(base_path('uploads/agent_user_nid/'.$filename));

             DB::table('agent_users')->where('id',$last_inserted_id)->update([
                'nid_image'=>$filename
             ]);

        }


        DB::table('users')->insert([
            "role_id"=>2,
            "agent_id"=>$last_inserted_id,
            "name"=>$name,
            "email"=>$email,
            'password' => Hash::make("12345678"),
        ]);



        return redirect('parameter-setup/agent/index')->with('message', 'Data Inserted Successfully ');

   } //end store function


   
}
