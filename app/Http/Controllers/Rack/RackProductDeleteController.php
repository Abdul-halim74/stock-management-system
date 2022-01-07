<?php

namespace App\Http\Controllers\Rack;

use App\Http\Controllers\Controller;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class RackProductDeleteController extends Controller
{
    public function index(){
        return view('rack.socks-delete.index');
    }

    public function findSocks(Request $request){
        if($request->has('socks_code')){
            $socks_code = $request->input('socks_code');
            $sql = "SELECT rp.rack_code,rp.status,rp.entry_date,rp.style_code,rp.printed_socks_code, b.name  as brand_name, bs.name  as size_name, t.types_name 
            FROM `rack_products` rp 
            left join stocks st on rp.style_code  = st.style_code  
            left  join brands b on st.brand_id  = b.id 
            left  join  brand_sizes bs  on st.brand_size_id  = bs.id 
            left join  types t on st.type_id  = t.id 
            where rp.printed_socks_code='$socks_code' and rp.status = 0";

            $shocks_info = DB::select(DB::raw($sql));

            if( count($shocks_info) > 0){
                $data = [
                    "rack_code"  => $shocks_info[0]->rack_code,
                    "entry_date" => $shocks_info[0]->entry_date,
                    "brand_name" => $shocks_info[0]->brand_name,
                    "size_name"  => $shocks_info[0]->size_name,
                    "types_name" => $shocks_info[0]->types_name,
                    "style_code" => $shocks_info[0]->style_code,
                    "rack_code"  => $shocks_info[0]->rack_code,
                    "socks_code" => $socks_code,
                    "found"      => true
                ];
                return view('rack.socks-delete.search', $data);
            }else{
                $data = [
                    "found"      => false,
                    "socks_code" => $socks_code
                ];
                return view('rack.socks-delete.search', $data);
            }
            
        }
    }

    public function deleteSocks(Request $request){
        if($request->has('socks_code')){
            $socks_code = $request->input('socks_code');
            $socks_info = DB::table('rack_products')->where('printed_socks_code', $socks_code)->first();
            $style_code = $socks_info->style_code;
            try{
                DB::table('rack_products')->where('printed_socks_code', $socks_code)->update([
                    "status" => 5
                ]);
                DB::update("UPDATE stocks SET remaining_socks = (remaining_socks + 1) WHERE style_code='$style_code'");
                // rack log
                $this->socksLog($socks_info->id, "SOCKS_DELETE_FROM_RACK");
                $data = [
                    "status"  => 200,
                    "message" => "Socks Delete From Rack successfully"
                ];
                return response()->json($data);
            }catch(Exception $e){
                $data = [
                    "status" => 400,
                    "message" => $e->getMessage()
                ];
                return response()->json($data);
            }
        }
    }

}


