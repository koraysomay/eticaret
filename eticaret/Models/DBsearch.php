<<?php
function selectSearchProduct($query){
 try{
 $db = new PDO('mysql:host=localhost;dbname=eticaret;charset=utf8','root','');
 }catch(PDOException $e){
 echo 'Hata: '.$e->getMessage();
 }   

$sth = $db->prepare("SELECT urun_ad,urun_fiyat,kategori_ad,resim_path,urun_ozet,urun_studyo,urun_rating,urun_kod FROM urun WHERE (urun_ad LIKE :keyword)");
$query='%'.$query.'%';
$sth->bindParam('keyword',$query, PDO::PARAM_STR);
$sth->execute();

$result = $sth->fetchAll(\PDO::FETCH_ASSOC);
 return $result;
}