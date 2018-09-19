<?php
include './auxilliary/header.php';
?>

</div>
<br/>
<br/>
<div class="signup">
  <h1>KAYIT OL</h1>
<br/>

<form action="./signup" method="post">
 İsim: <br/>
 <input type="text" name="uyeadi" /><br/><br/>
 Soyisim: <br/>
 <input type="text" name="uyesoyadi" /><br/><br/>
 E-mail: <br/>
 <input type="text" name="email" /><br/><br/>
 Passsword: <br/>
 <input type="password" name="password" /><br/><br/>
 <br/>
 <input type="submit" value="Gönder Ve Giriş Yap" name="submit" />
</form>
<br/>
</div>


<?php
include './auxilliary/footer.php';
?>
