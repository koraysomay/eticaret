<?php
session_start();
include './Models/DBsignup.php';

class signupController{
    
    public function index(){
    include './Views/signupView.php';
    $signupkontrol=false;
    $anakontrol="stay";
   if(isset($_POST["submit"]))
       {
    $emailkontrol=true;
    $uyeadi=$_POST["uyeadi"];
    $uyesoyadi=$_POST["uyesoyadi"];    
    $email=$_POST["email"];    
    $password=sha1($_POST["password"]);
    $emailkontrol= emailcontroller($email);
    if (empty($uyeadi) || empty($uyesoyadi) || empty($email) || empty($password)){
          echo "<p style='text-align:center'>Eksik Bilgi Girdiniz.</p>";
          }else if($emailkontrol==false){
          echo "<p style='text-align:center'>Mevcut Kullanıcı E-Postası Girdiniz.</p>";                 
          }else{           
        $_SESSION["ad"]=$uyeadi;
        $_SESSION["soyad"]=$uyesoyadi;
        $_SESSION["email"]=$email;
        insert($uyeadi, $uyesoyadi, $email, $password);
        $signupkontrol=true; 
        $anakontrol="home";
        }      
        }
         return $anakontrol;  
            }
}
   