<?php
  session_start();
class aboutController{
    
    public function index(){    
        
  include './Views/aboutView.php';
  
  $anakontrol="stay";
return $anakontrol;
    }
}