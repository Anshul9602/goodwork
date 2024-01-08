<?php echo $header; ?>
<script type="text/javascript" src="catalog/view/javascript/slick.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/slick.css" />
<link rel="stylesheet" type="text/css" href="https://kenwheeler.github.io/slick/slick/slick-theme.css" />
<script src="
https://cdn.jsdelivr.net/npm/@splidejs/splide@4.1.4/dist/js/splide.min.js
"></script>
<link href="
https://cdn.jsdelivr.net/npm/@splidejs/splide@4.1.4/dist/css/splide.min.css
" rel="stylesheet">
<style>
  @media only screen and (max-width: 400px) {
    #clockdiv {
      font-size: 15px;
    }

    #clockdiv div>span {
      padding: 13px;
    }

    .smalltext {
      font-size: 10px;
    }
  }

  .slick-prev {
    left: 100px;
  }

  .slick-next {
    right: 100px;
  }

  .slick-prev,
  .slick-next {
    font-size: 0;
    line-height: 0;
    position: absolute;
    top: 50%;
    display: block;
    width: 50px;
    height: 50px;
    padding: 0;
    transform: translate(0, -50%);
    cursor: pointer;
    color: transparent;
    border: none;
    outline: none;
    background: white;
  }

  .slick-prev:before,
  .slick-next:before {
    font-family: system-ui;
    font-size: 23px;
    line-height: 1;
    opacity: 0.75;
    color: rgb(0, 0, 0);
  }

  /* Style the tab */

  /* Style the buttons inside the tab */
  .tab button {
    background-color: inherit;
    float: left;
    border: none;
    outline: none;
    cursor: pointer;
    padding: 14px 16px;
    transition: 0.3s;
    font-size: 25px;
    width: 100%;
    max-width: 50%;
    color: #000;
  }

  /* Change background color of buttons on hover */


  /* Create an active/current tablink class */
  .tab button.active {

    color: #E58558;
  }

  /* Style the tab content */
  .container {
    max-width: 80%;
    margin: auto;
  }
</style>


<section id="top-banner" style="padding-top: 0px;">
  <div class="row">
    <div class="slider-khatu">
      <?php foreach ($banners as $banner) { ?>
      <?php if ($banner['link']) { ?>
      <a href="<?php echo $banner['link']; ?>" style="position: relative;">
        <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" />
      </a>

      <?php } else { ?>
      <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" />
      <?php } ?>
      <?php } ?>
    </div>
  </div>
</section>

<section>
  <div class="container">
    <div class="row">
      <div class="col-md-6">
        <h1 style="font-size:70px;font-weight: 300;">About Us</h1>
      </div>
      <div class="col-md-6" style="text-align: end;">
        <h4 style="font-weight: 300;">Goodwork was founded in 2010 as a small design & printing company in Jaipur. With
          hard work and dedication from our dynamic team, we grew into one of the leading brands of its kind in just a
          few short years.
          High end quality of products, timely deliveries and long lasting relationships with our customers are our
          pillars of strength.
        </h4>

      </div>
    </div>
  </div>
</section>
<section>
  <div class="container">
    <div class="row" style="    
    display: flex;
    align-items: center;">
      <div class="col-md-6">
        <img src="image/new/ib/2.png" alt="" width="80%" style="margin: auto;">
      </div>
      <div class="col-md-6" style="text-align: center;">
        <div style="text-align: center; margin:10px 10px 20px;"><a
            href="index.php?route=product/category&path=59"><button class="button btn vibtn"
              style="background:#434142;color:#fff;font-size: 25px;border-radius: 50% !important;padding: 14px 18px;">VIEW<br>
              SHOP</button></a></div>
        <h4 style="margin: 20px 0;padding-top:20px;font-weight: 300;">Goodwork Daily is an outcome of the continued
          motivation & fondness we gathered for our designs from customers worldwide. We also felt the need of bringing
          in the market, the best of all worlds, when it came to products used in our daily life.
          Our Goodwork daily range is one of its kind and we make sure we keep launching new products to meet everyone's
          day to day needs in a package of contemporary designs blended with purposeful utility.
        </h4>

      </div>
    </div>
  </div>
</section>
<section>

  <div class="row">
    <div class="col-md-6" style="min-height: 100vh;background-color: #f6ebf1;align-items: center;display: flex;">
      <div class="row" style="height:65%;width:100%;">
        <div class="col-md-6 col-6 p-5 text-center">
          <img src="image/new/b1.jpg" alt="" style="width: 200px;">
          <h3 style="    letter-spacing: 1.2px;">ENVELOPES</h3>
        </div>
        <div class="col-md-6 col-6 p-5 text-center">
          <img src="image/new/b1.jpg" alt=""style="width: 200px;">
          <h3 style="    letter-spacing: 1.2px;">TRAYS</h3>
        </div>
        <div class="col-md-6 col-6 p-5 text-center " style="padding-top: 35px;">
          <img src="image/new/b1.jpg" alt=""style="width: 200px;">
          <h3 style="    letter-spacing: 1.2px;">HAMPER</h3>
        </div>
        <div class="col-md-6 col-6 p-5 text-center pt-4"style="padding-top: 35px;">
          <img src="image/new/b1.jpg" alt=""style="width: 200px;">
          <h3 style="    letter-spacing: 1.2px;">WRAPPING SHEETS</h3>
        </div>

      </div>

    </div>
    <div class="col-md-6"
      style="background: linear-gradient(to right, #f6ebf1 50%, #fff 50%);min-height:100vh;align-items: center;display: flex;">
      <div class="video" style="margin:auto;">

        <video id="myVideo" width="100%" muted autoplay loop preload="auto">
          <source src="image/new/clip.mp4" type="video/mp4">
          Your browser does not support the video tag.
        </video>
      </div>

    </div>
  </div>
  
</section>
<section>
  <div class="container">
    <div class="row" style="align-items: center; display:flex;">
      <div class="col-md-4">
        <img src="image/new/ib/3.jpg" alt="" width="100%" style="    border-radius: 46% 46% 0 0;">
      </div>
      <div class="col-md-4 " style="padding-top: 20%;">
        <img src="image/new/ib/4.jpg" alt="" width="100%">
      </div>
      <div class="col-md-4">
        <h1 class="fonth" style="font-size: 70px;padding-bottom:20px;    text-align: center;font-weight: 300;">EXPLORE
        </h1>
        <h1 style="padding-bottom: 10px;color:#000;    text-align: center;">Home Lists</h1>
        <div style="    text-align: center;">
          <a href="index.php?route=product/category&path=64"><button class="button btn exbtn"
              style="margin:auto;background:#434142;color:#fff;font-size: 20px;border-radius: 50% !important;padding: 20px 10px;">EXPLORE
              <br>HERE</button></a>

        </div>

      </div>
    </div>
  </div>
</section>
<section>
  <div class="">
    <div class="" style="max-width: 90%; margin:auto;">
      <h1 style="padding-bottom: 20px;">Shop by Category</h1>
    </div>

    <div class="splide sp1" role="group" aria-label="Splide Basic HTML Example">
      <div class="splide__track">
        <ul class="splide__list">
          <?php for($j=0; $j< sizeof($bestcat);$j++){?>
          <li class="splide__slide">


            <div class="" style="padding: 1em 0;    text-align: center;">
              <div class="image-div" style="position: relative;">
                <a href="<?php echo $bestcat[$j]['href']?>"><img class="img-responsive"
                    src="<?php echo $bestcat[$j]['thumb']?>" alt=""></a>

              </div>

              <a href="<?php echo $bestcat[$j]['href']?>" style="display: flex;justify-content: center;
                  margin-top: -20px;z-index: 999;position: relative;">
                <button style="background-color: #fff;padding:10px 20px;color:black;border: 1px solid gray;">
                  <?php echo $bestcat[$j]['name']?>
                </button>

                <!-- <p><?php echo $products1[$j]['rating']?></p> -->
              </a>
            </div>


          </li>
          <?php }?>
        </ul>
      </div>
    </div>
  </div>
</section>

<br><br>


<script>
  var splide = new Splide('.sp1', {
    type: 'loop',
    perPage: 3,
    focus: 'center',
    pagination: false, // Hide pagination
    breakpoints: {
      1140: {
        perPage: 1,
      }
    }
  });

  splide.mount();

  function getTimeRemaining(endtime) {
    const total = Date.parse(endtime) - Date.parse(new Date());
    const seconds = Math.floor((total / 1000) % 60);
    const minutes = Math.floor((total / 1000 / 60) % 60);
    const hours = Math.floor((total / (1000 * 60 * 60)) % 24);
    const days = Math.floor(total / (1000 * 60 * 60 * 24));

    return {
      total,
      days,
      hours,
      minutes,
      seconds
    };
  }

  function initializeClock(id, endtime) {
    const clock = document.getElementById(id);
    const daysSpan = clock.querySelector('.days');
    const hoursSpan = clock.querySelector('.hours');
    const minutesSpan = clock.querySelector('.minutes');
    const secondsSpan = clock.querySelector('.seconds');

    function updateClock() {
      const t = getTimeRemaining(endtime);

      daysSpan.innerHTML = t.days;
      hoursSpan.innerHTML = ('0' + t.hours).slice(-2);
      minutesSpan.innerHTML = ('0' + t.minutes).slice(-2);
      secondsSpan.innerHTML = ('0' + t.seconds).slice(-2);

      if (t.total <= 0) {
        clearInterval(timeinterval);
      }
    }

    updateClock();
    const timeinterval = setInterval(updateClock, 1000);
  }

  const deadline = new Date(Date.parse(new Date()) + 15 * 24 * 60 * 60 * 1000);
  initializeClock('clockdiv', deadline);
</script>
<script type="text/javascript">
  $(".slider-khatu").slick({
    dots: true,
    infinite: true,
    arrow: true,
    speed: 1000,
    fade: true,
    cssEase: "ease-in-out",
    autoplay: true,
    autoplaySpeed: 4000,
  });
  $(".slider-khatu1").slick({
    dots: true,
    slidesToShow: 3, // Set the number of slides to show per page
    infinite: true,
    arrows: true, // Use "arrows" instead of "arrow" for correct property name
    speed: 1000,
    fade: true,
    cssEase: "ease-in-out",
    autoplay: true,
    autoplaySpeed: 4000,
  });




</script>
<script>
  document.addEventListener("DOMContentLoaded", function () {
    var video = document.getElementById('myVideo');

    // Play the video
    video.play();

    // Mute the video
    video.muted = true;
  });
</script>

<?php echo $footer; ?>