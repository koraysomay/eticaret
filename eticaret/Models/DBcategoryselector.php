<?php
function selectCategory($categoryname){
 try{
 $db = new PDO('mysql:host=localhost;dbname=eticaret;charset=utf8','root','');
 }catch(PDOException $e){
 echo 'Hata: '.$e->getMessage();
 }   

$sth = $db->prepare("SELECT kategori_ad FROM kategori");
$sth->execute();

$result = $sth->fetchAll(\PDO::FETCH_ASSOC);
 return $result;
}