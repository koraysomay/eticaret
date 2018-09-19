<?php
  session_start();
  include './Models/DBadmin.php';
class adminController{
    
    public function index(){    
        
  include './Views/adminView.php';
  if(isset($_POST["categorysubmit"])){
    $categoryname=$_POST["categoryname"];
    insertcategory($categoryname); 
     }
  if(isset($_POST["submit"])){
    $urun_kod=$_POST["urun_kod"];
    $urun_ad=$_POST["urun_ad"];
    $urun_fiyat=$_POST["urun_fiyat"];
    $kategori_ad=$_POST["kategori"];
    $resim_path=$_POST["resim_path"];
    $urun_ozet=$_POST["urun_ozet"];
    $urun_studyo=$_POST["urun_studyo"];
    $urun_rating=$_POST["urun_rating"];
    insertproduct($urun_kod,$urun_ad,$urun_fiyat,$kategori_ad,$resim_path,$urun_ozet,$urun_studyo,$urun_rating);
         }

  $anakontrol="stay";
return $anakontrol;
    }
}