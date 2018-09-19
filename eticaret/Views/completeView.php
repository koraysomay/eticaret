<?php
include './auxilliary/header.php';

$url = $_GET['_url'];
        $route = explode('/',$url);
        $uye_id=$route[2];
      
     include './Models/DBcomplete.php';
   
     $result=selectbasketUrunFiyat($uye_id);
     $toplam_tutar=0;
     for($i=0;$i<count($result);$i++){
      $basketurun_fiyat=$result[$i]["urun_fiyat"];
      $toplam_tutar=$basketurun_fiyat+$toplam_tutar;
     }
     updatebasketstatus($uye_id);
     $resultinserttransaction=inserttransaction($uye_id, $toplam_tutar);
    echo '<h2 style="font-size:20px;text-align: center">SİPARİŞİNİZ BAŞARIYLA ALINDI.</h2>';
     $resultsiparis= selectsiparis($uye_id);
     
     for($i=0;$i<count($resultsiparis);$i++){
    $siparis_id=$resultsiparis[$i]["siparis_id"];
    $musteri_id=$resultsiparis[$i]["musteri_id"];
    $toplam_tutar=$resultsiparis[$i]["toplam_tutar"];
    $created_at=$resultsiparis[$i]["created_at"];
    
    echo '<div style="float:left;width:32%;height:200px;margin:4px;border:2px solid #ccc;">';
    echo '<p style="font-size:13px;text-align: center"> SİPARİŞ ID:  '.$siparis_id.'</p>';
    echo '<p style="font-size:13px;text-align: center"> ÜYE ID:  '.$musteri_id.'</p>';
    echo '<p style="font-size:13px;text-align: center"> TOPLAM TUTAR:  '.$toplam_tutar.'  TL</p>';
    echo '<p style="font-size:13px;text-align: center"> SİPARİŞ TARİHİ:  '.$created_at.'</p>';  
    echo '</div>';
    }

include './auxilliary/footer.php';
?>