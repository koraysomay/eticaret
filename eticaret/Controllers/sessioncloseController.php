<?php
  session_start();

class sessioncloseController{
    
public function index(){
    include './Views/sessioncloseView.php';
    
    $anakontrol="home";
    session_destroy();
 
          return $anakontrol;      
                }
        
          
  }  
