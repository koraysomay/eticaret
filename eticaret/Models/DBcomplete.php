<?php

function updatebasketstatus($uye_id){
 try{
 $db = new PDO('mysql:host=localhost;dbname=eticaret;charset=utf8','root','');
 }catch(PDOException $e){
 echo 'Hata: '.$e->getMessage();
 }   

 $query = $db->prepare("UPDATE basket SET basket_status=2 WHERE musteri_id=?");
 $result=$query->execute(array($uye_id));
}

function inserttransaction($uye_id,$toplam_tutar){
 try{
 $db = new PDO('mysql:host=localhost;dbname=eticaret;charset=utf8','root','');
 }catch(PDOException $e){
 echo 'Hata: '.$e->getMessage();
 }   

 $query = $db->prepare("INSERT INTO siparis SET musteri_id=?,toplam_tutar=?");
 $result=$query->execute(array($uye_id,$toplam_tutar));
}


function selectbasketUrunFiyat($musteri_id){
 try{
 $db = new PDO('mysql:host=localhost;dbname=eticaret;charset=utf8','root','');
 }catch(PDOException $e){
 echo 'Hata: '.$e->getMessage();
 }   

$sth = $db->prepare("SELECT urun_fiyat FROM basket WHERE musteri_id=? AND basket_status=1");
$sth->execute(array($musteri_id));

$result = $sth->fetchAll(\PDO::FETCH_ASSOC);
 return $result;
}

function selectsiparis($uye_id){
 try{
 $db = new PDO('mysql:host=localhost;dbname=eticaret;charset=utf8','root','');
 }catch(PDOException $e){
 echo 'Hata: '.$e->getMessage();
 }   

$sth = $db->prepare("SELECT siparis_id,musteri_id,toplam_tutar,created_at FROM siparis WHERE musteri_id=?");
$sth->execute(array($uye_id));

$result = $sth->fetchAll(\PDO::FETCH_ASSOC);
 return $result;
}