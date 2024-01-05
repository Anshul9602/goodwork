<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8]>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8">
   <![endif]-->
<!--[if IE 9]>
   <html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9">
      <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <title><?php echo $title; ?></title>
  <base href="<?php echo $base; ?>" />
  <?php if ($description) { ?>
    <meta name="description" content="<?php echo $description; ?>" />
  <?php } ?>
  <?php if ($keywords) { ?>
    <meta name="keywords" content="<?php echo $keywords; ?>" />
  <?php } ?>

  <link href="https://fonts.googleapis.com/css?family=Asap:400,500,600&display=swap" rel="stylesheet" />
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Anton&display=swap" rel="stylesheet">

  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@200;300;400;500;600&display=swap" rel="stylesheet">

  <script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>

  <link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
  <script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
  <link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />

  <link href="catalog/view/theme/default/stylesheet/stylesheet.css?v1.15" rel="stylesheet" />
  <?php foreach ($styles as $style) { ?>
    <link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
  <?php } ?>
  <script src="catalog/view/javascript/common.js?v1.1217" type="text/javascript"></script>
  <?php foreach ($links as $link) { ?>
    <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
  <?php } ?>
  <?php foreach ($scripts as $script) { ?>
    <script src="<?php echo $script; ?>" type="text/javascript"></script>
  <?php } ?>
  <?php foreach ($analytics as $analytic) { ?>
    <?php echo $analytic; ?>
  <?php } ?>
</head>

<body class="<?php echo $class; ?>">
  <header id="desktop_menu" class="sticky-header" style="background:#fff;">
    <div style="margin-top: 5px; margin-bottom: 5px" class="row">
      <div class="col-sm-3 text-center">
        <a href="index.php?route=common/home">
          <img style="width: 150px; margin: auto" src="<?php echo $logo; ?>" class="main_logo" />
        </a>
      </div>
      <!-- <div id="navigation" class="col-sm-12 text-center">
            <?php foreach ($categories as $category) { ?>
            <div class="menu-item">
              <a href="<?php echo $category['href']; ?>">
                <?php echo $category['name']; ?>
              </a>
            </div>
            <?php  } ?>
          </div> -->
      <style>
        input,
        textarea {
          outline: none !important;
          box-shadow: none !important;
        }

        .dropdown-content {
          display: none;
          position: absolute;
          background-color: #f1f1f1;
          min-width: 160px;
          box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
          z-index: 1;
        }
.sticky-header #navigation .menu-item {
    display: inline-block;
    margin-bottom: 0px;
    text-align: left;
    margin: 10px 25px;
}
        .dropdown-content a {
          color: black;
          padding: 12px 16px;
          text-decoration: none;
          display: block;
        }

        .dropdown-content a:hover {
          background-color: #ddd;
        }

        .dropdown:hover .dropdown-content {
          display: block;
        }

        .dropdown:hover .dropbtn {
          color: red;
        }
        #navigation{
          text-align: center;
        }
        .sticky-header #navigation a, #top_right a {
    color: #333;
    font-size: 18px;
    letter-spacing: 1.2px;
    text-decoration: none !important;
    transition-duration: 100ms;
    -webkit-transition-duration: 600ms;
    font-weight: lighter;
}
      </style>
      <div id="navigation" class="col-sm-6">
        
        <div class="menu-item">
          <a href="index.php?route=common/about">ABOUT</a>
        </div>
        <div class="menu-item dropdown">
          <a class="dropbtn" href="#">SHOP</a>
          <div class="dropdown-content "style="width: 1000px;margin-left:-350px;padding:30px;">
            <div class="row " style="padding:2%;">
              <div class="col-md-4">
                <?php foreach ($categories as $category) { ?>

                  <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
    
                <?php  } ?>
              </div>
              <div class="col-md-4">
                <img src="image/new/b1.jpg" alt="" width="100%">
              </div>
              <div class="col-md-4">
                <img src="image/new/b2.jpg" alt="" width="100%">
              </div>
            </div>
           
          </div>
        </div>
        <div class="menu-item dropdown">
          <a class="dropbtn" href="#">COLLECTION</a>
          <div class="dropdown-content "style="width: 1000px;margin-left:-350px;padding:30px;">
            <div class="row " style="padding:2%;">
              <div class="col-md-4">
                
                  <a href="index.php?route=product/category&path=64">RECYCLED PAPER PENCILS</a>
                  <a href="index.php?route=product/category&path=59">RULER DIARY</a>
                  <a href="index.php?route=product/category&path=63">WRITE & SKETCH</a>
                  <a href="index.php?route=product/category&path=64">BESTSELLERS</a>
              </div>
              <div class="col-md-4">
                <img src="image/new/b1.jpg" alt="" width="100%">
              </div>
              <div class="col-md-4">
                <img src="image/new/b2.jpg" alt="" width="100%">
              </div>
            </div>
           
          </div>
          
        </div>
        <div class="menu-item">
          <a href="index.php?route=information/contact">CONTACT US</a>
        </div>
        
      </div>

      <script>
        // Add active class to the current button (highlight it)
        var header = document.getElementById("navigation");
        var btns = header.getElementsByClassName("menu-item");
        for (var i = 0; i < btns.length; i++) {
          btns[i].addEventListener("click", function() {
            var current = document.getElementsByClassName("active");
            current[0].className = current[0].className.replace(" active", "");
            this.className += " active";
          });
        }
      </script>
      <div>

        <div id="icons" class="col-sm-3" style="display: flex;    justify-content: center;">
          <div class="menu-item">
            <div class="menu-item">
              <?php echo $search; ?>
            </div>
          </div>
          <div class="menu-item">
            <a style="color: #666" href="index.php?route=account/account">
              <svg data-icon="user" viewBox="0 0 1024 1024" width="100%" height="100%">
                <path class="fil0" d="M486.4 563.2c-155.275 0-281.6-126.325-281.6-281.6s126.325-281.6 281.6-281.6 281.6 126.325 281.6 281.6-126.325 281.6-281.6 281.6zM486.4 51.2c-127.043 0-230.4 103.357-230.4 230.4s103.357 230.4 230.4 230.4c127.042 0 230.4-103.357 230.4-230.4s-103.358-230.4-230.4-230.4z">
                </path>
                <path class="fil0" d="M896 1024h-819.2c-42.347 0-76.8-34.451-76.8-76.8 0-3.485 0.712-86.285 62.72-168.96 36.094-48.126 85.514-86.36 146.883-113.634 74.957-33.314 168.085-50.206 276.797-50.206 108.71 0 201.838 16.893 276.797 50.206 61.37 27.275 110.789 65.507 146.883 113.634 62.008 82.675 62.72 165.475 62.72 168.96 0 42.349-34.451 76.8-76.8 76.8zM486.4 665.6c-178.52 0-310.267 48.789-381 141.093-53.011 69.174-54.195 139.904-54.2 140.61 0 14.013 11.485 25.498 25.6 25.498h819.2c14.115 0 25.6-11.485 25.6-25.6-0.006-0.603-1.189-71.333-54.198-140.507-70.734-92.304-202.483-141.093-381.002-141.093z">
                </path>
              </svg>
            </a>
          </div>
          <div class="menu-item" style="    align-items: center;
          display: flex;
          padding:0 8px;">
            <a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>" style="align-items: center;
              display: flex;
              color: black;">
              <i class="fa fa-heart-o" aria-hidden="true" style="font-size: 22px;"></i>
          </a>
          </div>
          <div class="menu-item cart_icon">
            <a style="color: #666" href="index.php?route=checkout/cart">
              <svg width="100%" height="100%" viewBox="0 0 1400 1400" data-icon="cart">
                <path class="fil0" stroke-width="3px" d="M748.62 107.99c116.8,0 212.3,95.5 212.3,212.3l0 127.38 185.12 0c15.68,0 29.09,6.24 39.15,16.31 10.09,10.09 16.63,24.08 18.36,39.24l93.96 822.21c0.24,2.04 0.35,3.92 0.35,5.63 0,14.37 -6.25,27.27 -16.04,36.9 -9.27,9.11 -21.86,15.29 -35.22,16.81 -2.32,0.27 -4.52,0.41 -6.59,0.41l-982.73 0c-2.11,0 -4.58,-0.19 -7.36,-0.54 -13.16,-1.69 -25.55,-7.82 -34.64,-16.76 -9.7,-9.54 -15.9,-22.28 -15.9,-36.49 0,-1.68 0.15,-3.73 0.46,-6.18l105.25 -822.2c1.93,-15.15 8.45,-29.1 18.46,-39.11 10.02,-10.02 23.32,-16.23 38.97,-16.23l173.8 0 0 -127.38c0,-116.8 95.5,-212.3 212.3,-212.3zm212.3 376.67l0 101.82c19.84,6.95 34.07,25.83 34.07,48.04 0,28.11 -22.79,50.9 -50.9,50.9 -28.11,0 -50.9,-22.79 -50.9,-50.9 0,-20.94 12.66,-38.93 30.74,-46.74l0 -103.12 -350.62 0 0 102.46c18.94,7.41 32.34,25.84 32.34,47.4 0,28.11 -22.78,50.9 -50.89,50.9 -28.11,0 -50.9,-22.79 -50.9,-50.9 0,-21.6 13.46,-40.06 32.46,-47.45l0 -102.41 -173.8 0c-5.11,0 -9.48,2.07 -12.81,5.39 -4.32,4.33 -7.17,10.6 -8.06,17.58l-105.25 822.21c-0.02,0.16 -0.03,0.68 -0.03,1.55 0,3.74 1.87,7.33 4.78,10.19 3.52,3.47 8.31,5.84 13.39,6.49 0.55,0.07 1.46,0.11 2.74,0.11l982.73 0c0.95,0 1.75,-0.04 2.4,-0.11 5.18,-0.59 10.02,-2.95 13.54,-6.41 3,-2.95 4.92,-6.68 4.92,-10.6 0,-0.61 -0.02,-1.1 -0.06,-1.44l-93.97 -822.2c-0.78,-6.88 -3.56,-13.04 -7.81,-17.29 -3.37,-3.37 -7.83,-5.47 -12.99,-5.47l-185.12 0zm-36.99 -36.99l0 -127.38c0,-96.38 -78.93,-175.31 -175.31,-175.31 -96.38,0 -175.31,78.93 -175.31,175.31l0 127.38 350.62 0z">
                </path>
              </svg>
              <span id="cart_text1"><?php echo $text_items; ?></span>
            </a>
          </div>
         
          <div class="cart_icon">
            <?php echo $cart; ?>
          </div>
          
          
        </div>
      </div>
    </div>


  </header>

  <header class="sticky-header mobile_navigation">
    <div class="row text-center">
      <div class="col-sm-12">
        <a style="margin: auto" href="index.php?route=common/home">
          <img src="<?php echo $logo; ?>" style="width: 150px" class="main_logo" />
        </a>
        <a style="
                cursor: pointer;
                position: absolute;
                left: 15px;
                margin-top: 10px;
              " title="menu" id="mob_menu_opener">
          <img src="image/menu_icon.png" width="22" />
        </a>
        <a style="
                cursor: pointer;
                position: absolute;
                right: 15px;
                margin-top: 10px;
                color: #333;
              " href="index.php?route=checkout/cart">
          <li class="fa fa-shopping-cart"></li>
          0
        </a>
      </div>
      <br />
    </div>

    <div style="
            display: none;
            position: absolute;
            background-color: #fff;
            top: 150px;
            z-index: 999999;
            width: 100%;
          " class="row search_opened">
      <div class="col-xs-10 col-xs-offset-1" style="padding: 10px">
        <div class="col-xs-10">
          <input style="
                  border: none;
                  border-bottom: thin solid #ccc;
                  width: 100%;
                " type="text" id="mob_search_term" />
        </div>
        <div class="col-xs-2">
          <i style="cursor: pointer" id="mob_search_bt" class="fa fa-search"></i>
        </div>
      </div>
    </div>
    <div style="
            position: fixed;
            background-color: #fff;
            top: 0px;
            left: -250px;
            height: 100vh;
            z-index: 999999;
            width: 250px;
          " class="row mob_menu_opened">
      <div class="col-xs-12">
        <div class="col-xs-12">
            <br />
            <?php foreach ($categories as $category) { ?>
            <div class="row">
              <a style="color: #696969" href="<?php echo $category['href']; ?>">
                <div style="text-transform: uppercase" class="col-xs-10">
                  <?php echo $category['name']; ?>
                </div>
                <div style="text-align: right" class="col-xs-1">
                  <i class="fa fa-arrow-circle-right" aria-hidden="true"></i>
                </div>
              </a>
            </div>
            <hr />
            <?php } ?>
          </div> 
     
        <hr />
      </div>
    </div>
    <div id="overlay_mob" class="overly" style="
            width: 100%;
            height: 100vh;
            display: none;
            z-index: 99;
            background-color: #000;
            opacity: 0.7;
            position: fixed;
            top: 0px;
            left: 0px;
          "></div>

    <div id="overlay_mob1" class="overly" style="
            width: 100%;
            height: 100vh;
            display: none;
            z-index: 99;
            background-color: #000;
            opacity: 0.7;
            position: fixed;
            top: 0px;
            left: 0px;
          "></div>
  </header>
  <script>
    $(document).ready(function(e) {
      $("#shop").mouseenter(function() {
        $(".shop_drop").stop().fadeIn();
      });

      $("#shop").mouseleave(function() {
        $(".shop_drop").stop().fadeOut();
      });

      $("#currency").mouseenter(function() {
        $(".currency_drop").stop().fadeIn();
      });

      $("#currency").mouseleave(function() {
        $(".currency_drop").stop().fadeOut();
      });

      $("#usd").click(function() {
        $("button[name='USD']").click();
      });
      $("#inr").click(function() {
        $("button[name='INR']").click();
      });
      $("#eur").click(function() {
        $("button[name='EUR']").click();
      });

      $("#currency1").click(function() {
        $(".currency_drop1").stop().fadeToggle();
      });

      $("#usd1").click(function() {
        $("button[name='USD']").click();
      });
      $("#inr1").click(function() {
        $("button[name='INR']").click();
      });
      $("#eur1").click(function() {
        $("button[name='EUR']").click();
      });

      $(".cart_icon").mouseenter(function() {
        $("#search_drop").fadeOut();
        $("#cart").stop().slideDown();
      });

      $(".cart_icon").mouseleave(function() {
        $("#cart").stop().slideUp();
      });

      $("#login").mouseenter(function() {
        $(".login_drop").stop().slideDown();
      });

      $("#login").mouseleave(function() {
        $(".login_drop").stop().slideUp();
      });

      $("#mobile_bar").click(function() {
        $(".menu_overlay").fadeIn();
        $("#sliding_menu").animate({
          right: "0px"
        });
      });

      $(".fa-search").click(function() {
        $("#search_drop").slideToggle();
      });
      $(".menu_overlay").click(function() {
        $(".menu_overlay").fadeOut();
        $("#sliding_menu").animate({
          right: "-300px"
        });
      });

      $("#homed").click(function() {
        $(".child_mobile").fadeToggle();
      });

      $("#mobile_shop1").click(function() {
        $(".shop_drop_mobile").animate("left", "0px");
      });

      $(".menu-item-wrapper").mouseenter(function() {
        $(this).find(".sub_menu").stop().fadeIn();
      });

      $(".menu-item-wrapper").mouseleave(function() {
        $(this).find(".sub_menu").stop().fadeOut();
      });

      //$('a').bind("click.myDisable", function() { return false; });
    });
  </script>
</body>

</html>