<?php
require "../vendor/autoload.php";
require "services/ProductService.php";
Flight::register('product_service', "ProductService");
require_once 'routes/ProductRoutes.php';
Flight::start();
?>