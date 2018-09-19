<?php
  session_start();
class categoryController{
    
    public function index(){    
        
  include './Views/categoryView.php';
  
  $anakontrol="stay";
return $anakontrol;
    }
}