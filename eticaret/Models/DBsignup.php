<?php

function insert($uyeadi,$uyesoyadi,$email,$password){
 try{
 $db = new PDO('mysql:host=localhost;dbname=eticaret;charset=utf8','root','');
 }catch(PDOException $e){
 echo 'Hata: '.$e->getMessage();
 }   

 $query = $db->prepare("INSERT INTO musteri SET musteri_ad=?,musteri_soyad=?,musteri_email=?,musteri_password=?");
 $result=$query->execute(array($uyeadi,$uyesoyadi,$email,$password));
 echo "Kayıt başarıyla girildi.";
}

function emailcontroller($email){
 try{
 $db = new PDO('mysql:host=localhost;dbname=eticaret;charset=utf8','root','');
 }catch(PDOException $e){
 echo 'Hata: '.$e->getMessage();
 }   
$kontrol=true;
$sql= "SELECT musteri_email from musteri";
foreach($db->query($sql) as $row)
{
 

if ($row['musteri_email']==$email){
    $kontrol=false;
    break;
}
}
return $kontrol;
}