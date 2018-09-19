<?php          
    include_once ('./Models/DBhome.php');   
    $result= selectHomeRowTitles($kategori_ad); 
    $urun_ad=$result[0]["urun_ad"];
    $urun_fiyat=$result[0]["urun_fiyat"];
    $kategori_ad=$result[0]["kategori_ad"];
    $resim_path=$result[0]["resim_path"];
    $urun_ozet=$result[0]["urun_ozet"];
    $urun_studyo=$result[0]["urun_studyo"];
    $urun_rating=$result[0]["urun_rating"];
    $urun_kod=$result[0]["urun_kod"];    
    echo '<div style="float:left;width:24%;height:250px;margin:3px;border:3px solid #ccc;">';
    echo '<h2 style="font-size:16px">'.$kategori_ad.'</h2>';
    echo '<div style="float:left;width:16%;height:250px;margin:3px">';
    echo '<a href="http://localhost/eticaret/product/index/'.$urun_kod.'" style="text-decoration:none">';
    echo '<img border="0" title='.$urun_ad.' src='.$resim_path.' style="height:65%;width:auto">';
    echo '</a>';
    echo '</div>';
    echo '<div style="float:right;width:50%;height:250px;margin:3px">';
    echo '<p style="font-size:12px;text-align: center"><a href="http://localhost/eticaret/product/index/'.$urun_kod.'" style="text-decoration:none">'.$urun_ad.'</a></p>';
    echo '<p style="font-size:12px;text-align: center"><a href="http://localhost/eticaret/product/index/'.$urun_kod.'" style="text-decoration:none">'.$kategori_ad.'   -   '.$urun_rating.'</a></p>'; 
    echo '<p style="font-size:12px;text-align: center"><a href="http://localhost/eticaret/product/index/'.$urun_kod.'" style="text-decoration:none">'.$urun_studyo.'   -   '.$urun_fiyat.' TL</a></p>';
    if(isset($_SESSION["ad"]))
        {
    echo '<a href="http://localhost/eticaret/basket/index/'.$urun_kod.'" style="text-decoration:none">';
    echo '<img border="0" src=/eticaret/images/basket.png alt="Sepete Ekle" style="height:20%;width:auto;margin-top:1px";>';
    echo '</a>';
        }
    echo '</div>';
    echo '</div>';
        
?>