<!DOCTYPE html>
<html>
<head>
    <title>VLL Socks</title>

    <style type="text/css">
        table, td, th {     
      border: 1px solid black;
      text-align: left;
    }

table {
  border-collapse: collapse;
  width: 100%;
}

th{
  padding: 15px;
}
td{
    padding-top:10px;
    padding-bottom:10px;
    padding-left:15px;
    padding-right:15px;
}
.undersockscode{
    font-size: 8px;
}
    </style>
</head>
<body>
   
<h3 style="text-align:center;">Rack Code : 
    <?php echo $rack_no; ?> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Date : <?php echo $date; ?></h3>




    <table >
       <?php 
            $output = '';
            $str = '';
            $etr = '';
            $sl = 1;

           

            $new_arr   = [
                "printed_socks_code_array" => [],
                "shop_socks_code_array"    => [],
                "short_code_array"         => []
            ];

            foreach($get_data as $key=>$single_get_data){   
                array_push($new_arr['printed_socks_code_array'], $single_get_data->printed_socks_code);
                array_push($new_arr['shop_socks_code_array'], $single_get_data->shop_socks_code);
                array_push($new_arr['short_code_array'], $single_get_data->brand_name);
            }



            for($i=0; $i<count($get_data); $i++){
                // tr row starting
                if($sl == 1){
                    $output.="<tr>";
                }
                $shop_socks_code   = $new_arr['shop_socks_code_array'][$i];
                $short_code        = $new_arr['short_code_array'][$i];
                $print_shocks_code = $new_arr['printed_socks_code_array'][$i];
                

                // add tr
                $output.="<td style='text-align:center;font-weight:bold; font-size:14px;'>
                 $shop_socks_code<br>
                <small class='undersockscode'>
                   $short_code-\\$print_shocks_code
                </small>
                </td>"; 

                if($sl == 6){
                    $output.="</tr>";
                    $sl = 0;
                }   

                $sl++;    
              
            }

            $need_td =  $i  % 6 ;
           
            if($need_td != 0){
                for($m=$need_td; $m < 6; $m++){
                    $output.="<td style='text-align:center;font-weight:bold;'>-</td>"; 
                }
 
            }
            
            


            if( (($i + 1) % 6) != 0){
                $output.="</tr>";
            }

           

            echo $output;
       ?>
       

    </table>

    


</body>
</html>

