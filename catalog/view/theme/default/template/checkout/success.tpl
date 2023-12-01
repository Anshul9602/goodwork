<?php echo $header; ?>
<div style="margin-top:140px" class="container"><br /><br /><br />
  <div class="row">
    <div style="text-align:center" id="content" class="col-sm-8 col-sm-offset-2">
      <h1 style="font-family:raleway; letter-spacing:1.6px">Your order has been placed</h1>
      <p style="font-family:didot; letter-spacing:1.2px"><i>Thank you for choosing us <br />and supporting our artisans!</i></p>
      <div class="buttons">
        <a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a>
      </div>
      </div>
    </div>
</div>

<script>
	$(".sticky-header").addClass("header_disabled");
	$(".sticky-header").css("background-color",'#fff');
			$(".sticky-header").css("border-bottom",'#f1f1f1 thin solid');
			$(".sticky-header #navigation a").css("color","#181818");
		    $(".main_logo").attr("src","img/logo-blue.png");

</script>

<?php echo $footer; ?>