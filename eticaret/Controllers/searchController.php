<?php
  session_start();
class searchController{
    
    public function index(){    
        
  include './Views/searchView.php';
  
  $anakontrol="stay";
return $anakontrol;
    }
}