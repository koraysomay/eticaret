<?php

function insertcategory($kategori_ad){
 try{
 $db = new PDO('mysql:host=localhost;dbname=eticaret;charset=utf8','root','');
 }catch(PDOException $e){
 echo 'Hata: '.$e->getMessage();
 }   

 $query = $db->prepare("INSERT INTO kategori SET kategori_ad=?");
 $result=$query->execute(array($kategori_ad));
 echo "Kayıt başarıyla girildi.";
}



function insertproduct($urun_kod,$urun_ad,$urun_fiyat,$kategori_ad,$resim_path,$urun_ozet,$urun_studyo,$urun_rating){
 try{
 $db = new PDO('mysql:host=localhost;dbname=eticaret;charset=utf8','root','');
 }catch(PDOException $e){
 echo 'Hata: '.$e->getMessage();
 }   

 $query = $db->prepare("INSERT INTO urun SET urun_kod=?,urun_ad=?,urun_fiyat=?,kategori_ad=?,resim_path=?,urun_ozet=?,urun_studyo=?,urun_rating=?");
 $result=$query->execute(array($urun_kod,$urun_ad,$urun_fiyat,$kategori_ad,$resim_path,$urun_ozet,$urun_studyo,$urun_rating));
 echo "Kayıt başarıyla girildi.";
}