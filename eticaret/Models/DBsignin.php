<?php
function selectsigninEmail($email){
 try{
 $db = new PDO('mysql:host=localhost;dbname=eticaret;charset=utf8','root','');
 }catch(PDOException $e){
 echo 'Hata: '.$e->getMessage();
 }   
$kontrol=false;
$sql= "SELECT musteri_email from musteri";
foreach($db->query($sql) as $row)
{
 

if ($row['musteri_email']==$email){
    $kontrol=true;
    break;
}
}
return $kontrol;
}

function selectsigninPassword($password){
 try{
 $db = new PDO('mysql:host=localhost;dbname=eticaret;charset=utf8','root','');
 }catch(PDOException $e){
 echo 'Hata: '.$e->getMessage();
 }   
$kontrol=false;
$sql= "SELECT musteri_password from musteri";
foreach($db->query($sql) as $row)
{
 

if ($row['musteri_password']==$password){
    $kontrol=true;
    break;
}
}
return $kontrol;
}
function selectAdSoyad($email){
 try{
 $db = new PDO('mysql:host=localhost;dbname=eticaret;charset=utf8','root','');
 }catch(PDOException $e){
 echo 'Hata: '.$e->getMessage();
 }   

$sth = $db->prepare("SELECT musteri_ad,musteri_soyad,musteri_email FROM musteri WHERE musteri_email=?");
$sth->execute(array($email));

$result = $sth->fetchAll(\PDO::FETCH_ASSOC);
 return $result;
}