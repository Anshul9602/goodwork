<?php echo $header; ?>
<div style="width: 100%; padding-top:80px; min-height:80vh; margin-bottom:120px"  class="container">
  <style>
	   .number{ text-align:center; }
	  .number span{width:25px; height:25px; padding-top: 2px; display:block; text-align: center; margin: auto; border-radius:50%; background-color:#333; color:#fff}
  td h3{font-size:14px; text-transform:uppercase}
  .size_list{list-style:none; float:left; margin-left:0px; padding-left:0px; margin-top:20px}
  .size_list li{float:left; border:thin solid #ccc; width:40px; height:40px; padding-top:10px; text-align:center}
  table tr td{letter-spacing:1.5px  !important}
  
  @media screen and (max-width:600px){
	  .size_list{list-style:none; float:left; margin-left:0px; padding-left:0px; margin-top:5px}
       #desktop_table{display:none  !important}
	  }
 
  @media screen and (min-width:601px){
	  .size_list{list-style:none; float:left; margin-left:0px; padding-left:0px; margin-top:20px}
#mobile_table{display:none !important}
	  
	  }
  
  @media all and (device-width: 768px) and (device-height: 1024px) and (orientation:portrait) {
  		#gck{ margin-top:40px;}
		}
	
  thead tr td p{ letter-spacing:3px; font-size:11px; text-transform:uppercase}
  p{color:#333 !important}
  </style>
 
  <div class="row">
    <div style="margin-top:30px; " id="content" class="col-sm-10 col-sm-offset-1 col-xs-12"><?php echo $content_top; ?>

<div class="row">
 <div class="col-sm-12">
       <form style="margin-top: 20px" id="cf" action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <div id="desktop_table" class="table-responsive">
          <table class="table table-stripped">
            <thead>
              <tr>
                <td  class="text-center"><p>Image</p></td>
                <td  class="text-center"><p>Name</p></td>
             
                <td  class="text-center"><p><?php echo $column_quantity; ?></p></td>
                <td  class="text-center"><p >Price</p></td>
                <td class="text-center"><p >Total</p></td>
               <td class="text-center"><p>Remove</p></td>
              
              </tr>
            </thead>
            <tbody>
              <?php $size_x=1; foreach ($products as $product) { ?>
              <tr>
                
                <td class="text-center">
                 <?php if ($product['thumb']) { ?>
                  <a href="<?php echo $product['href']; ?>">
                  <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>"  />
                  </a>
                  <?php } ?>
                
                </td>
                
                <td class="text-center">
                <a href="<?php echo $product['href']; ?>"><h3><?php echo $product['name']; ?></h3>
                 <?php if (!$product['stock']) { ?>
                  <span class="text-danger">*<i>(Out of stock)</i></span>
                  <?php } ?>
                   <?php if ($product['option']) { ?>
            <?php foreach ($product['option'] as $option) { ?>
           
           <font style="font-size:10px; color:#3c3c3c; margin-top:-10px; margin-left:-10px">
           <?php echo $option['name']; ?> : <?php echo $option['value']; ?>
           </font>
           <br />
            <?php } ?>
            <?php } ?>
        
                
                 
                 </a>
                  
                  
                   
                </td>
                  
                  
                  
                <td class="text-center">
                  
   <div style="width:120px; margin:auto; margin-top:20px; " class="row">
   <div style="cursor: pointer; text-align:center; padding-left:0px; padding-right:0px; height:34px; border:thin solid #ccc" class="col-sm-4"><li style=" font-size:12px; margin:auto; text-align:center;" class="fa fa-minus less_quantity"></li></div>
   <div style=" padding-left:0px; padding-right:0px;" class="col-sm-4"><input style="box-shadow:none; height:34px; text-align:center; border-radius:0px; width:100%; cursor:default" class="input-quantity" readonly name="quantity[<?php echo $product['cart_id']; ?>]" value="<?php echo $product['quantity']; ?>" class="form-control" />
   </div>
      <div style=" cursor: pointer; padding-left:0px; padding-right:0px; height:34px; text-align:center; border:thin solid #ccc" class="col-sm-4"><li style="font-size:12px; text-align:center;" class="fa fa-plus add_quantity"></li></div>  
    </div>
   
                    

                </td>
                <td  class="text-center">
                <h4 style="margin-top: 20px"><?php echo $product['price']; ?>
                </h4>
                </td>
                <td  class="text-center">
                <h4 style="margin-top: 20px"><?php echo $product['total']; ?>
                </h4>
                </td>
                    <td style="text-align:center; padding-right:30px"><button style="background-color: transparent; outline:none; margin:auto; margin-top:15px; text-align:center; margin-left:10px; border:none; box-shadow:none " type="button" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn" onclick="cart.remove('<?php echo $product['cart_id']; ?>');">
                    <i style="color: #333" class="fa fa-times-circle"></i>
                    </button></td>
            
            
              </tr>
              <?php $size_x++; } ?>
              <?php foreach ($vouchers as $vouchers) { ?>
              <tr>
                <td></td>
                <td class="text-center"><?php echo $vouchers['description']; ?></td>
                <td class="text-center"></td>
                <td class="text-center"><div class="input-group btn-block">
                    <input type="text" name="" value="1" size="1" disabled="disabled" class="form-control" />
                    <span class="input-group-btn"><button type="button" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger" onclick="voucher.remove('<?php echo $vouchers['key']; ?>');"><i class="fa fa-times-circle"></i></button></span></div></td>
                <td class="text-right"><?php echo $vouchers['amount']; ?></td>
                <td class="text-right"><?php echo $vouchers['amount']; ?></td>
             
              </tr>
              <?php } ?>
            </tbody>
          </table>
        </div>
           </form>
     <form style="margin-top: 20px" id="cf1" action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
     
        <div class="row" id="mobile_table">
        <div class="col-xs-12">
             <?php foreach ($products as $product) { ?>
            
            <div class="row">
             <div class="col-xs-4">
                <?php if ($product['thumb']) { ?>
                  <a href="<?php echo $product['href']; ?>">
                  <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>"  />
                  </a>
                  <?php } ?>
                
             </div>
            <div style="margin-left:-20px" class="col-xs-8">
              <a href="<?php echo $product['href']; ?>"><h3><?php echo $product['name']; ?></h3>
                 <?php if (!$product['stock']) { ?>
                  <span class="text-danger">*<i>(Out of stock)</i></span>
                  <?php } ?>
                       <?php if ($product['option']) { ?>
            <?php foreach ($product['option'] as $option) { ?>
           
           <p style="margin-top:-10px; color:#ccc"><?php echo $option['name']; ?>:<?php echo $option['value']; ?></p>
           
            <?php } ?>
            <?php } ?>
         </a>
                
                 <p style="margin-top:-10px">
              
              Price:<?php echo $product['price']; ?> 
              
              </p>
           <p style="margin-left: -10px;margin-top: -15px;">
           <button style="background-color: transparent; outline:none; margin:auto;  text-align:center; border:none; box-shadow:none " type="button" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn" onclick="cart.remove('<?php echo $product['cart_id']; ?>');">
                    Remove
                    </button>
           </p>
            </div>
            </div>
            <div class="row">
              <div class="col-xs-7">
             <div style="width:120px; margin:auto; margin-top:20px; margin-left:0px " class="row">
   <div style="cursor: pointer; text-align:center; padding-left:0px; padding-right:0px; height:34px; border:thin solid #ccc" class="col-xs-4"><li style=" font-size:12px; margin:auto; text-align:center; margin-top:10px;" class="fa fa-minus less_quantity1"></li></div>
   <div style=" padding-left:0px; padding-right:0px;" class="col-xs-4">
   <input style="box-shadow:none; height:34px; text-align:center; border-radius:0px; width:100%; cursor:default" class="input-quantity1" readonly name="quantity[<?php echo $product['cart_id']; ?>]" value="<?php echo $product['quantity']; ?>" class="form-control" />
   </div>
      <div style=" cursor: pointer; padding-left:0px; padding-right:0px; height:34px; text-align:center; border:thin solid #ccc" class="col-xs-4"><li style="font-size:12px; text-align:center; margin-top:10px;" class="fa fa-plus add_quantity1"></li></div>  
    </div>
   
              </div>
              
              <div class="col-xs-5">
                <h4 style="margin-top: 30px; font-size:12px">Total : <?php echo $product['total']; ?>
                </h4>
              
              </div>
            </div>
            <hr />
               <?php } ?>
           </div>
        </div>
        
        </form>
     <hr />
      
         <div class="row">
        <div class="col-sm-5">
               <h4>FREE SHIPPING</h4>
               <br />
                <?php print_r($modules[0]);?><br /><br />
              
            </div>
       <div class="col-sm-2"></div>
       <div class="col-sm-5">
      <table style="width:100%" class="table">
            <?php for( $i=0; $i<sizeof($totals); $i++) { ?>
            <?php if($i==(sizeof($totals))-1){?>
             <tr style="border:none"> 
             <td style="border:none; text-transform:uppercase" class="text-center"><strong><?php echo $totals[$i]['title']; ?>:</strong></td>
              <td style="border:none; text-transform:uppercase" class="text-right"><?php echo $totals[$i]['text']; ?></td>
             </tr>
              <?php }else{ ?>
              <tr style="border:none">
              <td style="border:none; text-transform:uppercase" class="text-center"><strong><?php echo $totals[$i]['title']; ?>:</strong></td>
              <td style="border:none; text-transform:uppercase" class="text-right"><?php echo $totals[$i]['text']; ?></td>
              </tr>
              <?php }?>
            
            <?php } ?>
          </table>
          <br />
          
          
          <div class="row">
    
    <div class="col-sm-12">
    <?php if(!$logged){?>
      <div class="buttons clearfix">
        <div class="pull-right">
       <a style="margin-bottom:30px" href="index.php?route=account/login"> <button class="btn btn-empty">Login</button></a>&nbsp;&nbsp;
       <a id="gck" href="index.php?route=checkout/guest_new"> <button class="btn btn-primary">Guest Checkout</button></a></div>
      </div>
      <?php }else{?>
      <div class="buttons clearfix">
        <div class="pull-right">
       <a href="index.php?route=checkout/registered_payment"> <button class="btn btn-primary">Checkout</button></a></div>
      </div>
      
      <?php }?>
     </div>
   </div>
     
       
        
       </div>
      </div>
 </div>
 
 <form style="display:none" method="post" id="loginf">
 <input name="redirect" value="checkout/registered_payment">
 </form>
</div>

      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<script>
$(".add_quantity").click(function(){
	var	b= Number($(this).parent().siblings().find(".input-quantity").val())+1;
	$(this).parent().siblings().find(".input-quantity").val(b);	
	$("#cf").submit();
	})
	
	$(".less_quantity").click(function(){
		
	var	b= Number($(this).parent().siblings().find(".input-quantity").val())-1;
		if(b<=0){
			b=1;
		}
	$(this).parent().siblings().find(".input-quantity").val(b);	
	$("#cf").submit();
	})
	
	
$(".add_quantity1").click(function(){
	var	b= Number($(this).parent().siblings().find(".input-quantity1").val())+1;
	$(this).parent().siblings().find(".input-quantity1").val(b);	
	$("#cf1").submit();
	})
	
	$(".less_quantity1").click(function(){
		
	var	b= Number($(this).parent().siblings().find(".input-quantity1").val())-1;
		if(b<=0){
			b=1;
		}
	$(this).parent().siblings().find(".input-quantity1").val(b);	
	$("#cf1").submit();
	})
	
</script>
<?php echo $footer; ?> 