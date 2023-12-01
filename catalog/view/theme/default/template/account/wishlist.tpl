<?php echo $header; ?>
<script src="https://use.fontawesome.com/83948b91a4.js"></script>
<div style="width: 100%" class="container">
  
   
     <div style="margin-top:200px" class="row justify-content-center mb-3 pb-3">
<div class="col-md-12 heading-section text-center ftco-animate fadeInUp ftco-animated">
<h1 class="big">Wishlist</h1>
<h2 style="letter-spacing:6px" class="mb-4">WISHLIST</h2>
</div>
</div>

  
  <br /><br />
   
   <div class="row">
    <div id="content" class="col-sm-12">
     
      <?php if ($products) { ?>
       <div style="padding:30px;" class="row">
        <?php foreach ($products as $product) { ?>
        <div style="margin-bottom:20px" class="product-layout product-list col-sm-4">
          <div class="row">
            <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
            </div><br />
            <div class="row">
                <div class="col-sm-12">
                <?php if($logged){?>
                <button style="background:none !important; border:none; margin-left:10px; margin-top:-20px;  float:left; padding:0px;"><a style="margin-top:-20px" data-toggle="tooltip" title="Remove from lust list" href="<?php echo $product['remove']; ?>">
               <i class="fa fa-trash-o" style="font-size:16px"></i>
                 </a></button>
                <?php } else {?>
                <button onClick="removelust(<?php echo $product['product_id']; ?>)" style="background:none !important; border:none; margin-left:10px; margin-top:-20px;  float:left; padding:0px;"><a style="margin-top:-20px" data-toggle="tooltip" title="Remove from lust list">
               <i class="fa fa-trash-o" style="font-size:16px"></i>
                 </a></button>
                
                <?php }?>
                <button style="background:none !important; border:none; margin-right:10px; margin-top:-20px;  float:right; padding:0px;" type="button" data-toggle="tooltip" title="Add to My Bag" onclick="cart.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-shopping-bag" style="font-size:16px"></i>
                </button><hr style="margin-top:8px" />
              <div class="caption">
                <h3 style="text-transform:uppercase; font-size:16px; margin-top:-4px; color:#868686"><?php echo $product['name']; ?></h3>
                <p style="color:#A0A0A0;  font-size:14px; text-transform:capitalize; margin-top:-4px"><a style="color:#A0A0A0; font-weight:300;" href="<?php echo $product['href']; ?>"><?php echo $product['model']; ?></a></p>
                <?php if ($product['price']) { ?>
                <p style="margin-top:-8px" class="price">
                  <?php if (!$product['special']) { ?>
                  <?php echo $product['price']; ?>
                  <?php } else { ?>
                  <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                  <?php } ?>
                </p>
                <?php } ?>
                
              </div>
              
                </div>
                
            </div>
          
        </div>
        <?php } ?>
      </div>
      <?php } else { ?>
  <div style="margin-top:50px" class="row">
    <div style="text-align:center" id="content" class="col-sm-6 col-sm-offset-3">
     <?php if($first_name){?>
     
      <h2 style="text-align:center; "><font style="text-transform:capitalize"><?php echo $first_name;?></font>,your lust list is empty</h2>
      <?php }else {?>
     <h2 style="text-align:center; ">Your lust list is empty</h2>
      
      <?php }?>
   <br />
   <p style="letter-spacing:2px">Save the items you like most so you don't lose sight of them. </p><br />
    
   
      
      </div>
      </div>     <?php } ?>
      <?php echo $content_bottom; ?></div>
    </div>
</div>


<?php if(!$logged){?>

<form method="post" action="index.php?route=common/lustlist/remove" id="rf">
	<input type="hidden" value="" name="pid" id="pid">
</form>
<script>
function removelust(pid){
	$("#pid").val(pid);
	$("#rf").submit();
}
</script>
<?php }?>

<?php echo $footer; ?>