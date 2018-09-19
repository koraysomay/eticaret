<?php
  session_start();
include './Models/DBsignin.php';


class signinController{
    
public function index(){
    include './Views/signinView.php';
    
    $email="zzz";
    $password=123;
    $signinkontrol=false;
    $anakontrol="stay";
    if(isset($_POST["submit"]))
    {
    $email=$_POST["email"];
    $password=sha1($_POST["password"]);
    
    $kontrol= selectsigninEmail($email); 
    $kontrol2= selectsigninPassword($password);
    
    if($kontrol && $kontrol2)
    {
        $result=selectAdSoyad($email);
        $_SESSION["ad"]=$result[0]["musteri_ad"];
        $_SESSION["soyad"]=$result[0]["musteri_soyad"];
        $_SESSION["email"]=$result[0]["musteri_email"];
        $signinkontrol=true;
    }else{
        $signinkontrol=false;
    }
     if($signinkontrol){
            $anakontrol="home";
                }else{
            $anakontrol="stay";
                }
    }          
          return $anakontrol;      
                }
        
          
  }  