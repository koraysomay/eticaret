<?php
  session_start();
class productController{
    
    public function index(){    
        
  include './Views/productView.php';
  
  $anakontrol="stay";
return $anakontrol;
    }
}