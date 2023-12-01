<style>
#cart font{font-size:12px; }
</style>
<div id="cart" class="row" style=" padding:0px;  width:400px; top: 55px; z-index:9999; position:absolute; right:0px;">
  <div id="product_mark">
  <?php if(sizeof($products)){?>
  <div style="background-color:#fff; padding:30px;  border: thin solid #DDDDDD" class="col-sm-12">
   
   
   <div style="border-bottom:thin solid #333; padding-bottom:20px" class="row">
   <p style="text-align:left; "> <b>BAG (<?php echo sizeof($products);?>)</b></p>
   </div>
   
   
 <div style="max-height:260px; overflow:auto">
   <?php foreach ($products as $product) { ?>
           <div style="border-bottom:thin solid #f1f1f1; padding-bottom:7.5px; padding-top: 7.5px" class="row product_row">
           <div style="text-align:left; padding-left:0px" class="col-sm-3">
         <?php if ($product['thumb']) { ?>
            <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
            <?php } ?> 
          </div>
          
          <div style="text-align:left" class="col-sm-6">
           <a style="font-size:13px; color:#333; text-transform:uppercase" href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
         <br />
          <?php if ($product['option']) { ?>
            <?php foreach ($product['option'] as $option) { ?>
           <font style="text-transform:uppercase; font-size:12px"><?php echo $option['name']; ?></font> : <font><?php echo $option['value']; ?></font>
            <?php } ?>
            <?php } ?>
          <br />
         <font>QTY : <?php echo $product['quantity']; ?></font><br />
          </div>
          
          <div style="text-align:right; padding-right:0px" class="col-sm-3">
           <font style="color:#333"><?php echo $product['total']; ?></font>
           <br /><br /><br /><br />
           <a onclick="cart.remove('<?php echo $product['cart_id']; ?>');" style="cursor:pointer" ><font><u>Remove</u></font></a>
        
          </div>
            </div>     
        <?php } ?>
 </div>
         <div style=" padding-top: 20px; padding-bottom: 20px" class="row">
       
       <div style="text-align:left" class="col-sm-6">
       <h4>Total :</h4>
       </div> 
       
     
       <div class="col-sm-6" style="text-align:right">
       <h4> <?php echo($totals[1]['text']);?></h4>
       </div>
        
        <div style="text-align:left" class="col-sm-6">
       <p>Delivery:</p>
       </div> 
       
       <div class="col-sm-6" style="text-align:right">
       <p>Free</p>
       </div>
       
        
        </div>
       
       
       <div style="text-align: center; padding-top: 10px;" class="row">
           <a style="text-align: center" href="<?php echo $cart; ?>"><button style="display:inherit; width:100%" class="btn btn-primary">View bag & Checkout</button></a>
  
       </div>
       	
        
       
  </div>
  
 <?php } else{?>
 <div style="background-color:#fff; padding:30px; text-align:left;  border: thin solid #ddd;" class="col-sm-12 cart_up">
 <h4>Your shopping bag is empty</h4>
 
 </div>
 </div>
 <?php }?>
</div>
