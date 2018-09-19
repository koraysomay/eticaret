<?php
include './auxilliary/header.php';
?>

   <?php
   
     $url = $_GET['_url'];
        $route = explode('/',$url);
        $urun_kod=$route[2];
    
        
     include './Models/DBproduct.php';   
    $result= selectproduct($urun_kod);   

for($i=0;$i<count($result);$i++){
    $urun_ad=$result[$i]["urun_ad"];
    $urun_fiyat=$result[$i]["urun_fiyat"];
    $kategori_ad=$result[$i]["kategori_ad"];
    $resim_path=$result[$i]["resim_path"];
    $urun_ozet=$result[$i]["urun_ozet"];
    $urun_studyo=$result[$i]["urun_studyo"];
    $urun_rating=$result[$i]["urun_rating"];
    $urun_kod=$result[$i]["urun_kod"];
    echo '<div style="float:left;width:40%;height:500px;margin:5px;border:2px solid #ccc;margin-left:80px">';
    echo '<a href="http://localhost/eticaret/product/index/'.$urun_kod.'" style="text-decoration:none">';
    echo '<img border="0" title='.$urun_ad.' src='.$resim_path.' style="height:90%;width:auto;margin-top:15px">';
    echo '</a>';
    echo '</div>';
    echo '<div style="float:left;width:40%;height:500px;margin:5px;border:2px solid #ccc;padding:20px;margin-right:80px">';
    echo '<p style="font-size:18px;text-align: center"><a href="http://localhost/eticaret/product/index/'.$urun_kod.'" style="text-decoration:none">'.$urun_ad.'</a></p>';
    echo '<p style="font-size:13px;text-align: center"><a href="http://localhost/eticaret/product/index/'.$urun_kod.'" style="text-decoration:none">'.$urun_kod.'</a></p>';
    echo '<p style="font-size:13px;text-align: center"><a href="http://localhost/eticaret/product/index/'.$urun_kod.'" style="text-decoration:none">'.$kategori_ad.'</a></p>'; 
    echo '<p style="font-size:13px;text-align: center"><a href="http://localhost/eticaret/product/index/'.$urun_kod.'" style="text-decoration:none">'.$urun_studyo.'</a></p>';
    echo '<p style="font-size:13px;text-align: center"><a href="http://localhost/eticaret/product/index/'.$urun_kod.'" style="text-decoration:none">'.$urun_rating.'</a></p>';
    echo '<p style="font-size:13px;text-align: center"><a href="http://localhost/eticaret/product/index/'.$urun_kod.'" style="text-decoration:none">'.$urun_ozet.'</a></p>';
    echo '</br>';
    echo '<p style="font-size:20px;text-align: center"><a href="http://localhost/eticaret/product/index/'.$urun_kod.'" style="text-decoration:none">'.$urun_fiyat.' TL</a></p>';   
   if(isset($_SESSION["ad"]))
        {
    echo '<a href="http://localhost/eticaret/basket/index/'.$urun_kod.'" style="text-decoration:none">';
    echo '<img border="0" src=/eticaret/images/basket.png style="height:25%;width:auto;margin-top:5px">';
    echo '</a>';
        }
    echo '</div>';
    
}
?>

 


<?php
include './auxilliary/footer.php';
?>

