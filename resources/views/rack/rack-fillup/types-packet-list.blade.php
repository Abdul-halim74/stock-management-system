<option value="">Select Shocks Packet</option>      
@foreach($products as $product)
    <option value='{{ $product->style_code  }}'>{{ $product->lot_no }} - {{ $product->brand_name }} - {{ $product->style_code }} - {{ $product->size_name }}</option>
@endforeach    