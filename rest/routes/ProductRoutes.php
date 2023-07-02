<?php
Flight::route("GET /products", function(){
    Flight::json(Flight::product_service()->get_all());
});

Flight::route("GET /latest", function(){
    Flight::json(Flight::product_service()->get_latest());
});

Flight::route("GET /featured", function(){
    Flight::json(Flight::product_service()->featured_products());
});

Flight::route("GET /special", function(){
    Flight::json(Flight::product_service()->special_product());
});

Flight::route("GET /product_by_id", function(){
    Flight::json(Flight::product_service()->get_by_id(Flight::request()->query['id']));
});

Flight::route("GET /products/@id", function($id){
    Flight::json(Flight::product_service()->get_by_id($id));
});

Flight::route("DELETE /products/@id", function($id){
    Flight::product_service()->delete($id);
    Flight::json(['message' => "product deleted successfully"]);
});

Flight::route("POST /product", function(){
    $request = Flight::request()->data->getData();
    Flight::json(['message' => "product added successfully",
        'data' => Flight::product_service()->add($request)
    ]);
});

Flight::route("PUT /product/@id", function($id){
    $product = Flight::request()->data->getData();
    Flight::json(['message' => "product edit successfully",
        'data' => Flight::product_service()->update($product, $id)
    ]);
});

Flight::route("GET /products/@name", function($name){
    echo "Hello from /products route with name= ".$name;
});

Flight::route("GET /products/@name/@status", function($name, $status){
    echo "Hello from /products route with name = " . $name . " and status = " . $status;
});

?>