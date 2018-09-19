<?php
  session_start();
class basketController{
    
    public function index(){    
        
  include './Views/basketView.php';
  
  $anakontrol="stay";
return $anakontrol;
    }
}
