<?php
  session_start();
class homeController{
    
    public function index(){    
        
  include './Views/homeView.php';
  
  $anakontrol="stay";
return $anakontrol;
    }
}