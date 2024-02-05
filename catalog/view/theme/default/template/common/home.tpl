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
  #catt .row {
    display: flex;
    /* Use flexbox to create a flexible container */
    flex-wrap: wrap;
    /* Allow the content to wrap to the next line if it exceeds the container width */
    margin: -15px;
    /* Add negative margin to counteract the padding on the columns (adjust as needed) */
  }

  @media only screen and (max-width: 400px) {
    .ttb button {
      font-size: 13px !important;
      padding: 10px !important;
    }
     #splide01 {
        width: 100%;
    }
    .splide__slide {
        width: 100% !important;
    }

    #clockdiv {
      font-size: 15px;
    }

    p {
      font-size: 14px !important;
    }

    h1,
    h2,
    h3 {
      font-size: 22px !important;
    }

    h4,
    h5,
    h6 {
      font-size: 19px !important;
    }

    #clockdiv div>span {
      padding: 13px;
    }

    .smalltext {
      font-size: 10px;
    }


    section {
      padding-top: 20px !important;
      padding-bottom: 0px;
    }

    .rws {
      padding: 0px !important;
    }

    .collection-div-left .img-responsive {
      padding: 0px !important;
    }

    .collection-last-div {
      padding: 0 1em !important;
    }

    .col-6 {
      max-width: 50% !important;
      width: 100%;
    }

    .col-8 {
      max-width: 66% !important;
      width: 100%;
    }

    .col-4 {
      max-width: 33% !important;
      width: 100%;
    }

    .stay-div img {
      width: 50px !important;
    }

    .ovd {

      bottom: 0 !important;
    }

    .slick-prev {
      left: 15px !important;
    }

    .slick-next {
      right: 15px !important;
    }

    .mp0 {
      padding: 1em 0em !important;
    }

    .mobp {
      margin-top: 30px;
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

  }

  .slick-prev:before,
  .slick-next:before {
    font-family: system-ui;
    font-size: 45px;
    line-height: 1;
    opacity: 1;
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
</style>


<div id="top-banner" style="padding-top: 0px;">
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
</div>


<section>
  <div class="container">

    <div class="tab ttb">
      <button class="tablinks active" onclick="openCity(event, 'London')"
        style="border-right: 2px solid #E58558;    text-align: end;  padding-right: 5%;">New Arrival</button>
      <button class="tablinks" onclick="openCity(event, 'Paris')" style="text-align: start;  padding-left: 5%;">Best
        Seller</button>

    </div>

    <div id="London" class="tabcontent" style="    margin-top: 7%;">
   
      <div class="splide sp1 is-overflow">
        <div class="splide__track">
          <ul class="splide__list">
            <?php for($j=0; $j< sizeof($newcat);$j++){?>
            <li class="splide__slide">


              <div class="" style="padding: 1em;">
                <div class="image-div" style="position: relative;">
                  <a href="<?php echo $newcat[$j]['href']?>"><img class="img-responsive"
                      src="<?php echo $newcat[$j]['thumb']?>" alt=""></a>

                </div>

                <a href="<?php echo $newcat[$j]['href']?>">
                  <h4>
                    <?php echo $newcat[$j]['name']?>
                  </h4>
                  <p>
                    <?php echo $newcat[$j]['price']?>
                  </p>
                  <!-- <p><?php echo $products1[$j]['rating']?></p> -->
                </a>
              </div>


            </li>
            <?php }?>
          </ul>
        </div>
      </div>
    </div>

    <div id="Paris" class="tabcontent" style="display: none; margin-top: 7%;">
      <div class="splide sp2">
        <div class="splide__track">
          <ul class="splide__list">
            <?php for($j=0; $j< sizeof($bestcat);$j++){?>
            <li class="splide__slide">


              <div class="" style="padding: 1em;">
                <div class="image-div" style="position: relative;">
                  <a href="<?php echo $bestcat[$j]['href']?>"><img class="img-responsive"
                      src="<?php echo $bestcat[$j]['thumb']?>" alt=""></a>

                </div>

                <a href="<?php echo $bestcat[$j]['href']?>">
                  <h4>
                    <?php echo $bestcat[$j]['name']?>
                  </h4>
                  <p>
                    <?php echo $bestcat[$j]['price']?>
                  </p>
                  <!-- <p><?php echo $products1[$j]['rating']?></p> -->
                </a>
              </div>


            </li>
            <?php }?>
          </ul>
        </div>
      </div>
    </div>




  </div>
</section>

<script>
  function openCity(evt, cityName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
      tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
      tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
  }
</script>

<section id="banner-2">
  <div class="container">

    <div class="row">
      <div class="col-lg-6 col-md-6 col-sm-12" style="padding: 0px">
        <div class="collection-div-left">
          <h4 class="mb-5 cursive-font">News Collection</h4>
          <h1 style="color: #333;" class="kepler">
            THE LATEST TRENDS <br />
            ABSTRACT COLLECTION 2024
          </h1>
          <a href="index.php?route=product/category&path=62"><img src="image/new/b1.jpg" class="img-responsive rws"
              style="padding: 6em 137px 0px 0px;" alt="">
            <div class="collection-inner-div">
              <h4 style=" color: #ff8429;font-weight: 100;">TREND 2024</h4>
              <h2 style="text-transform:uppercase">Recycled paper pencils </h2>
              <button>SHOP NOW
          </a></button>
        </div></a>
        <a href="index.php?route=product/category&path=62"><img src="image/new/b2.jpg" class="img-responsive"
            style="margin-left:65px;padding: 0em 0px 0px 60px;" alt="">
          <div class="overlay-div ovd">
            <h4 style="color: #ff8429;font-weight: 100;">TREND 2024</h4>
            <h2 style="padding: 0px 45px 10px 0px; text-transform:uppercase"> Ruler diary </h2>
            <button>SHOP NOW</button>
          </div>
        </a>
      </div>
    </div>
    <div class="col-lg-6 col-md-6 col-sm-12 mobp">
      <div class="collection-div">
        <a href="index.php?route=product/category&path=64"><img src="image/new/b3.jpg" class="img-responsive  rws"
            style="padding: 0px 0px 0px 70px;" alt="">
          <div class="overlay-div ovd">
            <h4 style="color: #ff8429;font-weight: 100;">TREND 2024</h4>
            <h2> 2024 <br />Bestsellers! </h2>
            <button>SHOP NOW</button>
          </div>
        </a>
      </div>
    </div>
    <div class="col-lg-6 col-md-6 col-sm-12 mobp">
      <a href="index.php?route=product/category&path=62"> <img src="image/new/b4.jpg" class="img-responsive  rws"
          style="padding: 7em 0em 0em 10em;" alt="">
        <div class="collection-last-div">
          <h4 style="color: #ff8429;font-weight: 100;">TREND 2024</h4>
          <h1>Write & Sketch </h1>
          <button>SHOP NOW</button>
        </div>
      </a>
    </div>
  </div>

  </div>
</section>


<section style="display:none" id="deal-of-days">
  <div class="container">
    <div class="row" style="background: #f3f2ee;">
      <div class="col-lg-6 col-md-6 col-sm-12">
        <div class="inner-div-deal">
          <h4 style="color: red;">DEAL OF THE DAYS</h4>
          <h2>BEE-UTIFUL NOTEBOOK</h2>

          <!-- ====================TIMER==================== -->
          <div id="clockdiv">
            <div>
              <span class="days"></span>
              <div class="smalltext">Days</div>
            </div>
            <span>:</span>
            <div>
              <span class="hours"></span>
              <div class="smalltext">Hours</div>
            </div>
            <span>:</span>
            <div>
              <span class="minutes"></span>
              <div class="smalltext">Minutes</div>
            </div>
            <span>:</span>
            <div>
              <span class="seconds"></span>
              <div class="smalltext">Seconds</div>
            </div>
          </div>
          <!-- ====================TIMER==================== -->
          <div class="deal-btn-div">
            <a class="deal-btn" href="#">SHOP NOW</a>
          </div>
        </div>
      </div>
      <div class="col-lg-6 col-md-6 col-sm-12">
        <!-- IMAGE -->
        <img src="catalog/view/theme/default/image/goodwork_home/deal-of-the-day.png" class="img-responsive"
          alt="DEAL-OF-THE-DAYS">
      </div>
    </div>
  </div>
</section>



<section id="catt">
  <div class="container">
    <div class="row">
      <div class="col-md-12 col-md-12 col-sm-12" style="padding: 40px 15px;">
        <h4 class="mb-5 cursive-font">Top sale on this week</h4>
        <h1 style="color: #333;" class="kepler">
          NEW SUMMER COLLECTION
        </h1>
      </div>
      <div class="col-md-12 row">
        <?php for($j=0; $j< sizeof($products1);$j++){?>

        <div class="col-md-3 col-6" style="padding: 1em;">
          <div class="image-div" style="position: relative;">
            <a href="<?php echo $products1[$j]['href']?>"><img class="img-responsive"
                src="<?php echo $products1[$j]['thumb']?>" alt=""></a>

          </div>

          <a href="<?php echo $products1[$j]['href']?>">
            <h4>
              <?php echo $products1[$j]['name']?>
            </h4>
            <p>
              <?php echo $products1[$j]['price']?>
            </p>

          </a>
        </div>

        <?php }?>
      </div>
    </div>

  </div>
</section>

<section style="padding-top: 20px;">
  <div class="container" style="background: #f8f8f8;">
    <div class="row">
      <div class="col-lg-6 col-md-6 ">
        <div class="stay-div">
          <img src="catalog/view/theme/default/image/goodwork_home/stay.png" alt="Stay">
          <div class="stay-text-div">
            <h2>Stay in the know !</h2>
            <p>Be the first to know about New Arrivals, Look Books, Sales & Promos!</p>
          </div>
        </div>
      </div>
      <div class="col-lg-6 col-md-6  mp0" style="display: flex;padding: 3em 11em;">
        <input type="text" placeholder="Email" class="form-control"> <button class="form-button"> SUBSCRIBE</button>
      </div>
    </div>
  </div>
</section>


<script>
  var splide = new Splide('.sp1', {
    type: 'loop',
    perPage: 4,
    autoplay: true,
    pagination: false,
    breakpoints: {
      1440: {
        perPage: 4,

      },
      650: {
        perPage: 2,
      }
    }
  });

  splide.mount();

  var splide = new Splide('.sp2', {
    type: 'loop',
    perPage: 4,
    autoplay: true,
    pagination: false,
    breakpoints: {
      1440: {
        perPage: 4,

      },
      650: {
        perPage: 2,
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


</script>
<?php echo $footer; ?>