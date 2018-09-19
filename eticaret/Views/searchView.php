<?php
include './auxilliary/header.php';
?>

   <?php
    $query=$_GET["search"];
     include './Models/DBsearch.php';   
    $result= selectSearchProduct($query);

for($i=0;$i<count($result);$i++){
    $urun_ad=$result[$i]["urun_ad"];
    $urun_fiyat=$result[$i]["urun_fiyat"];
    $kategori_ad=$result[$i]["kategori_ad"];
    $resim_path=$result[$i]["resim_path"];
    $urun_ozet=$result[$i]["urun_ozet"];
    $urun_studyo=$result[$i]["urun_studyo"];
    $urun_rating=$result[$i]["urun_rating"];
    $urun_kod=$result[$i]["urun_kod"];
    echo '<div style="float:left;width:32%;height:250px;margin:4px;border:2px solid #ccc;">';
    echo '<div style="float:left;width:16%;height:250px;margin:4px">';
    echo '<a href="http://localhost/eticaret/product/index/'.$urun_kod.'" style="text-decoration:none">';
    echo '<img border="0" title='.$urun_ad.' src='.$resim_path.' style="height:90%;width:auto;margin-top:8px">';
    echo '</div>';
    echo '<div style="float:right;width:50%;height:250px;margin-right:20px">';
    echo '<p style="font-size:13px;text-align: center"><a href="http://localhost/eticaret/product/index/'.$urun_kod.'" style="text-decoration:none">'.$urun_ad.'</a></p>';
    echo '<p style="font-size:13px;text-align: center"><a href="http://localhost/eticaret/product/index/'.$urun_kod.'" style="text-decoration:none">'.$kategori_ad.'</a></p>'; 
    echo '<p style="font-size:13px;text-align: center"><a href="http://localhost/eticaret/product/index/'.$urun_kod.'" style="text-decoration:none">'.$urun_rating.'</a></p>'; 
    echo '<p style="font-size:13px;text-align: center"><a href="http://localhost/eticaret/product/index/'.$urun_kod.'" style="text-decoration:none">'.$urun_studyo.'</a></p>';
    echo '<p style="font-size:13px;text-align: center"><a href="http://localhost/eticaret/product/index/'.$urun_kod.'" style="text-decoration:none">'.$urun_fiyat.'  TL</a></p>'; 
    if(isset($_SESSION["ad"]))
        {
    echo '<a href="http://localhost/eticaret/basket/index/'.$urun_kod.'" style="text-decoration:none">';
    echo '<img border="0" src=/eticaret/images/basket.png alt="Sepete Ekle" style="height:25%;width:auto;margin-top:1px";>';
    echo '</a>';
        }
    echo '</div>';
    echo '</div>';
}
?>




<?php
include './auxilliary/footer.php';
?>