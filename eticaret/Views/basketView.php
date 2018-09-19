<?php
include './auxilliary/header.php';

   
     $url = $_GET['_url'];
        $route = explode('/',$url);
        $uye_ad=$_SESSION["ad"];
        if (isset($_SESSION["email"])){
          $email=$_SESSION["email"];  
        }else{
            echo "tanımlanmamış";
        }
        
        include './Models/DBbasket.php'; 
        $resultid= selectId($email);
        $uye_id=$resultid[0]["musteri_id"];
     if(!empty($route[2]) & empty($route[3])){
          $urun_kod=$route[2];
          
    $resultproduct= selectproduct($urun_kod);
    $resultcustomer= selectcustomer($uye_ad);

    $urun_id=$resultproduct[0]["urun_id"];
    $urun_ad=$resultproduct[0]["urun_ad"];
    $urun_fiyat=$resultproduct[0]["urun_fiyat"];
    $resim_path=$resultproduct[0]["resim_path"];
    
    $musteri_id=$resultcustomer[0]["musteri_id"];
    $musteri_ad=$resultcustomer[0]["musteri_ad"];
    $musteri_soyad=$resultcustomer[0]["musteri_soyad"];
    
    insertbasket($urun_id, $urun_ad, $urun_fiyat,$urun_kod, $resim_path, $musteri_id, $musteri_ad, $musteri_soyad);   
     }
     
     if(!empty($route[2]) & !empty($route[3])){
          $urun_kod=$route[2];
    deletebasket($urun_kod);   
     }
     
     
     $result= selectbasket($uye_ad);
     $toplamtutar=0;
  
    for($i=0;$i<count($result);$i++){
    $basketurun_ad=$result[$i]["urun_ad"];
    $basketurun_fiyat=$result[$i]["urun_fiyat"];
    $basketurun_kod=$result[$i]["urun_kod"];
    $basketresim_path=$result[$i]["resim_path"];
    $basketmusteri_ad=$result[$i]["musteri_ad"];
    $basketmusteri_soyad=$result[$i]["musteri_soyad"];
    $toplamtutar=$basketurun_fiyat+$toplamtutar;

    echo '<div style="float:left;width:32%;height:250px;margin:4px;border:2px solid #ccc;">';
    echo '<div style="float:left;width:16%;height:250px;margin:4px">';
    
    echo '<img border="0" title='.$basketurun_ad.' src='.$basketresim_path.' style="height:90%;width:auto;margin-top:8px">';
    echo '</div>';
    echo '<div style="float:right;width:50%;height:250px;margin-right:20px">';
    echo '<p style="font-size:13px;text-align: center"><a href="http://localhost/eticaret/product/index/'.$basketurun_ad.'" style="text-decoration:none">'.$basketurun_ad.'</a></p>';
    echo '<p style="font-size:13px;text-align: center"><a href="http://localhost/eticaret/product/index/'.$basketurun_fiyat.'" style="text-decoration:none">'.$basketurun_fiyat.'  TL</a></p>'; 
    echo '<p style="font-size:13px;text-align: center"><a href="http://localhost/eticaret/product/index/'.$basketmusteri_ad.'" style="text-decoration:none">'.$basketmusteri_ad.'  '.$basketmusteri_soyad.'</a></p>'; 
    echo '<a href="http://localhost/eticaret/basket/index/'.$basketurun_kod.'/remove" style="text-decoration:none">';
    echo '<img border="0" src=/eticaret/images/removebasket.jpg alt="Sepetten Çıkart" style="height:25%;width:auto;margin-top:30px";>';
    echo '</a>';
    echo '</div>';
    echo '</div>';
    }
    echo '<div style="float:left;width:32%;height:250px;margin:3px">';
    echo '<p style="text-align:center;font-size:17px" style="text-decoration:none">TOPLAM TUTAR: '.$toplamtutar.'  TL</p>';
    echo '<a href="http://localhost/eticaret/complete/index/'.$uye_id.'" style="text-decoration:none">';
    echo '<img border="0" src=/eticaret/images/complete.jpg style="height:50%;width:auto;margin-top:25px">';
    echo '</a>';
    echo '<p style="text-align:center;font-size:17px"><a href="http://localhost/eticaret/complete/index/'.$uye_id.'" style="text-decoration:none">ALIŞVERİŞİ TAMAMLA</p>';
    echo '</div>';

include './auxilliary/footer.php';
?>