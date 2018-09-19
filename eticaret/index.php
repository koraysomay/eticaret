  <?php

  ob_start();
  
  
include 'route.php';
function autoload_helper($className){
 
if (substr($className, -10)==='Controller' && file_exists('./Controllers/'.$className.'.php')){ 
   include('./Controllers/'.$className.'.php');
   }elseif (substr($className, -5)==='Model' && file_exists('./models/'.$className.'.php')){ 
   include('./models/'.$className.'.php');
   }
   elseif(substr($className, -4)==='View' && file_exists('./Views/'.$className.'.php')){ 
   include('./Views/'.$className.'.php');
   }else{
      echo 'HATA: '.$className.' bulunamadı.';
   }   
}
spl_autoload_register('autoload_helper');

$tanim=$route[0].'Controller';

if (class_exists($tanim)){
   $myclass=new $tanim();
   $mymethod=$route[1];
   
   if(method_exists($myclass, $mymethod)){
       $sonuc=$myclass->$mymethod();
       
       switch ($sonuc) {
       case "stay":break;        
       case "home":header("Location:http://localhost/eticaret/");break;
       default:header("Location:http://localhost/eticaret");                    
       }
       }else{echo "HATA: Metod ".$mymethod." bulunamadı";}        
    }



