<!DOCTYPE html>
<html>
<head>
<title>DVD Satış</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="/eticaret/Views/styles.css">
<meta charset="utf-8">
</head>
<body>
<div>
    <?php  
    if(isset($_SESSION["ad"]))
        {
        echo "Merhaba ".$_SESSION["ad"]." ". $_SESSION["soyad"];
        }
     ?>   
 </div>
<div class="topnav">
  <a class="active" href="http://localhost/eticaret/">ANA SAYFA</a>
  <a href="http://localhost/eticaret/newrelease">YENİ ÇIKANLAR</a>
   <div class="dropdown">
    <button class="dropbtn">KATEGORİ 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="http://localhost/eticaret/category/index/Animasyon" id="Animasyon">ANİMASYON</a>
      <a href="http://localhost/eticaret/category/index/Korku-Gerilim" id="Korku-Gerilim">KORKU/GERİLİM</a>
      <a href="http://localhost/eticaret/category/index/Komedi" id="Komedi">KOMEDİ</a>
      <a href="http://localhost/eticaret/category/index/Macera" id="Macera">MACERA</a>
      <a href="http://localhost/eticaret/category/index/Romantik-Dram" id="Romantik-Dram">ROMANTİK/DRAM</a>
      <a href="http://localhost/eticaret/category/index/Bilim-Kurgu" id="Bilim-Kurgu">BİLİM-KURGU</a>
      <a href="http://localhost/eticaret/category/index/Aile" id="Aile">AİLE</a>
    </div>
  </div>  
  <a href="http://localhost/eticaret/signin" <?php  
    if(isset($_SESSION["ad"]))
        {
        echo "style='visibility:hidden'";
       
        }
     ?>  >GİRİŞ YAP</a>
  <a href="http://localhost/eticaret/signup" <?php  
    if(isset($_SESSION["ad"]))
        {
        echo "style='visibility:hidden'";
       
        }
     ?>  >KAYIT OL</a>
   <a href="http://localhost/eticaret/basket" <?php  
    if(!isset($_SESSION["ad"]))
        {
        echo "style='visibility:hidden'";
       
        }
     ?> >SEPETİM</a>
   <a href="http://localhost/eticaret/about">BİZE ULAŞIN</a>
    <a href="http://localhost/eticaret/sessionclose" <?php  
    if(!isset($_SESSION["ad"]))
        {
        echo "style='visibility:hidden'";
       
        }
     ?> >OTURUMU KAPAT</a>
  <div class="search-container">
    <form action="http://localhost/eticaret/search/index/" method="GET">
      <input type="text" placeholder="Search.." name="search">
      <button type="submit"><i class="fa fa-search"></i></button>
    </form>
  </div>
</div>
