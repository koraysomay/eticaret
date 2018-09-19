<!-- Slideshow container -->
<div class="slideshow-container">

  <!-- Full-width images with number and caption text -->
  <div class="mySlides fade">
    <div class="numbertext">1 / 4</div>
    <a href="http://localhost/eticaret/product/index/1MO12">
    <img src="/eticaret/images/mother-banner.jpg" style="width:80%">
    </a>
    <div class="text"></div>
  </div>

  <div class="mySlides fade">
    <div class="numbertext">2 / 4</div>
   <a href="http://localhost/eticaret/product/index/1GE07">
    <img src="/eticaret/images/geostorm-banner.jpg" style="width:80%">
    </a>
    <div class="text"></div>
  </div>

  <div class="mySlides fade">
    <div class="numbertext">3 / 4</div>
    <a href="http://localhost/eticaret/product/index/1MO09">
    <img src="/eticaret/images/moana-banner.jpg" style="width:80%">
    </a>
    <div class="text"></div>
  </div>
  
   <div class="mySlides fade">
    <div class="numbertext">4 / 4</div>
   <a href="http://localhost/eticaret/product/index/1SN04">
    <img src="/eticaret/images/snowman-banner.jpg" style="width:80%">
    </a>
    <div class="text"></div>
  </div>

  <!-- Next and previous buttons -->
  <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
  <a class="next" onclick="plusSlides(1)">&#10095;</a>
</div>
<br>

<!-- The dots/circles -->
<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span> 
  <span class="dot" onclick="currentSlide(2)"></span> 
  <span class="dot" onclick="currentSlide(3)"></span> 
  <span class="dot" onclick="currentSlide(4)"></span> 
</div>

<script>
var slideIndex = 1;
showSlides(slideIndex);

// Next/previous controls
function plusSlides(n) {
  showSlides(slideIndex += n);
}

// Thumbnail image controls
function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1} 
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none"; 
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block"; 
  dots[slideIndex-1].className += " active";
}
</script>