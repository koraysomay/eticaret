<<?php
function selectproduct($urun_kod){
 try{
 $db = new PDO('mysql:host=localhost;dbname=eticaret;charset=utf8','root','');
 }catch(PDOException $e){
 echo 'Hata: '.$e->getMessage();
 }   

$sth = $db->prepare("SELECT urun_id,urun_ad,urun_fiyat,kategori_ad,resim_path,urun_ozet,urun_studyo,urun_rating,urun_kod FROM urun WHERE urun_kod=?");
$sth->execute(array($urun_kod));

$result = $sth->fetchAll(\PDO::FETCH_ASSOC);
 return $result;
}

function selectcustomer($musteri_ad){
 try{
 $db = new PDO('mysql:host=localhost;dbname=eticaret;charset=utf8','root','');
 }catch(PDOException $e){
 echo 'Hata: '.$e->getMessage();
 }   

$sth = $db->prepare("SELECT musteri_id,musteri_ad,musteri_soyad FROM musteri WHERE musteri_ad=?");
$sth->execute(array($musteri_ad));

$result = $sth->fetchAll(\PDO::FETCH_ASSOC);
 return $result;
}

function insertbasket($urun_id,$urun_ad,$urun_fiyat,$urun_kod,$resim_path,$musteri_id,$musteri_ad,$musteri_soyad){
 try{
 $db = new PDO('mysql:host=localhost;dbname=eticaret;charset=utf8','root','');
 }catch(PDOException $e){
 echo 'Hata: '.$e->getMessage();
 }   

 $query = $db->prepare("INSERT INTO basket SET urun_id=?,urun_ad=?,urun_fiyat=?,urun_kod=?,resim_path=?,musteri_id=?,musteri_ad=?,musteri_soyad=?");
 $result=$query->execute(array($urun_id,$urun_ad,$urun_fiyat,$urun_kod,$resim_path,$musteri_id,$musteri_ad,$musteri_soyad));

}


function selectbasket($musteri_ad){
 try{
 $db = new PDO('mysql:host=localhost;dbname=eticaret;charset=utf8','root','');
 }catch(PDOException $e){
 echo 'Hata: '.$e->getMessage();
 }   

$sth = $db->prepare("SELECT urun_ad,urun_fiyat,urun_kod,resim_path,musteri_ad,musteri_soyad FROM basket WHERE musteri_ad=? AND basket_status=1");
$sth->execute(array($musteri_ad));

$result = $sth->fetchAll(\PDO::FETCH_ASSOC);
 return $result;
}

function deletebasket($urun_kod){
 try{
 $db = new PDO('mysql:host=localhost;dbname=eticaret;charset=utf8','root','');
 }catch(PDOException $e){
 echo 'Hata: '.$e->getMessage();
 }   

 $query = $db->prepare("DELETE from basket WHERE urun_kod=?");
 $result=$query->execute(array($urun_kod));

}

function selectId($email){
 try{
 $db = new PDO('mysql:host=localhost;dbname=eticaret;charset=utf8','root','');
 }catch(PDOException $e){
 echo 'Hata: '.$e->getMessage();
 }   

$sth = $db->prepare("SELECT musteri_id FROM musteri WHERE musteri_email=?");
$sth->execute(array($email));

$result = $sth->fetchAll(\PDO::FETCH_ASSOC);
 return $result;
}