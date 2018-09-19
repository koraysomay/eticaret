<?php
  session_start();
class newreleaseController{
    
    public function index(){    
        
  include './Views/newreleaseView.php';
  
  $anakontrol="stay";
return $anakontrol;
    }
}