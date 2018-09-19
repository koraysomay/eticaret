<style>
div {
    border: 3px solid black;
    padding:3px;
}
</style>

<div>
<form action="./admin" method="post">
 Yeni Kategori: <br/>
 <input type="text" name="categoryname"/><br/>
 <br/>
 
<input type="submit" value="Kategori Kaydet" name="categorysubmit" />
</form>
</div>
 <br/>

<div>
<form action="./admin" method="post">
    Ürün Kodu: <br/>
 <input type="text" name="urun_kod"/><br/>  
    Ürün Adı: <br/>
 <input type="text" name="urun_ad"/><br/>
    Ürün Fiyatı: <br/>
 <input type="number" step="any" name="urun_fiyat"/><br/>
    Kategori Seçiniz: <br/>
    <?php
include './Models/DBcategoryselector.php';
$categoryname="kategori_ad";
$result= selectCategory($categoryname);
echo '<select name="kategori">';
for($i=0;$i<count($result);$i++){
    echo '<option>'.$result[$i]["kategori_ad"].'</option>';
}
echo '</select>';
?>   
<br/>   
  Görsel Adresi: <br/>
 <input type="text" name="resim_path"/><br/>
    Ürün Özet: <br/>
    <textarea name="urun_ozet" rows="6" cols="50">
   Ürün Özetini Yazınız.
</textarea><br/>
    Ürün Stüdyo: <br/>
 <input type="text" name="urun_studyo"/><br/>
     Ürün Rating: <br/>
 <input type="text" name="urun_rating"/><br/>
 

<input type="submit" value="Ürünü Kaydet" name="submit" />
</form>
</div>
    
<a href="http://localhost/eticaret">Home Sayfasına Geri Dönünüz.</a>