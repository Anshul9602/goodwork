<?php echo $header; ?>
<div style="margin-top:100px; min-height:70vh" class="container">

<style>
label{font-size:12px; text-transform:uppercase}
select{
  -webkit-border-radius: 0px;}
select option {border-radius:0px}

@media screen and (max-width:600px){
	#address_col, #pin_box{margin-top:15px}
	}
    p{color:#333 !important}

</style>
<style>
      .number{ text-align:center; }
      .number span{width:25px; height:25px; padding-top: 2px; display:block; text-align: center; margin: auto; border-radius:50%; background-color:#333; color:#fff}
      td h3{font-size:14px; text-transform:uppercase}
      .size_list{list-style:none; float:left; margin-left:0px; padding-left:0px; margin-top:20px}
      .size_list li{float:left; border:thin solid #ccc; width:40px; height:40px; padding-top:10px; text-align:center}
      table tr td{letter-spacing:1.5px  !important}
      @media screen and (max-width:600px){
      .size_list{list-style:none; float:left; margin-left:0px; padding-left:0px; margin-top:5px}
      }
      @media screen and (min-width:601px){
      .size_list{list-style:none; float:left; margin-left:0px; padding-left:0px; margin-top:20px}
      }
   </style>


<div id="status_check" style="margin-top:-30px" class="row">
      <div style="width: 100%; border-top: thin solid #e6e6e6" class="col-sm-12">
      </div>
      <div style="margin-top: -42.5px" class="col-sm-4 col-xs-4 number">
         <p>BAG DETAILS</p>
         <span style="background-color: #888">
         1
         </span>	
      </div>
      <div style="margin-top: -42.5px" class="col-sm-4 col-xs-4 number">
         <p>SHIPPING</p>
         <span style="background-color: #888">
         2
         </span>	
      </div>
      <div style="margin-top: -42.5px" class="col-sm-4  col-xs-4 number">
         <P>PAYMENT</P>
         <span>
         3
         </span>	
      </div>
   </div>
   <div class="row">
 <div class="col-sm-10 col-sm-offset-1 col-xs-10 col-xs-offset-1">
 <div class="row">
  <div class="col-sm-12">
    <h3 style="text-align:center; margin-top: 60px; margin-bottom:40px">SECURE CHECKOUT</h3>
        <hr />
  </div>
 </div>
 
  
 
     
      <div class="row">
       <div style="margin-top:10px; padding-right:20px"  class="col-sm-4">
        <div class="col-sm-12" style="background-color:#f1f1f1">
       <span style="padding:20px" id="payment_appen">

        </span>
       
        
<hr style="margin:0; border-color:#fff" />
       
<p style="padding:20px; font-szie:14px">
SHIPPING & FULFILLMENT</p>
<p style="padding:20px; margin-top:-35px">Expected delivery time is 7-8 working days for more information please read our
<a href="index.php?route=common/shipping">SHIPPING POLICY</a></p>
<hr style="margin:0; border-color:#fff" />

<p style="padding:20px">For anything else, you can always Whatsapp us or give us a call on <br />
Phone Number: 0141-4107341<br />
Mon-Sat 11 AM to 7 PM 
<br />
You can also directly email us at info@goodworkdaily.com</p>
        </div>
       </div>
       <div style="margin-top:10px; background-color:#fff; padding:10px" class="col-sm-8">
        <span id="confirm_box">

         </span>
       </div>
      </div>
     
   <div class="row">
    
    
    <div class="col-sm-4">
    <textarea style="display:none" name="comment"></textarea>
      <div style="display:none" class="row">
       <div class="col-sm-12">
       <?php if ($shipping_methods) { ?>
         <?php foreach ($shipping_methods as $shipping_method) { ?>
          <p>Shipping Charges</p>
          <?php if (!$shipping_method['error']) { ?>
           <?php foreach ($shipping_method['quote'] as $quote) { ?>
<div class="radio">
  <label>
    <?php if ($quote['code'] == $code || !$code) { ?>
    <?php $code = $quote['code']; ?>
    <input type="radio" name="shipping_method" value="<?php echo $quote['code']; ?>" checked="checked" />
    <?php } else { ?>
    <input type="radio" name="shipping_method" value="<?php echo $quote['code']; ?>" />
    <?php } ?>
    <?php echo $quote['title']; ?> - <?php echo $quote['text']; ?></label>
</div>
<?php } ?>
<?php } ?>
<?php } ?> 
<?php }?>
       </div>
      </div>
  
   </div>
 </div>
</div>

</div>
</div>

<script>
			
$(document).ready(function(e) {
     $.ajax({
        url: 'index.php?route=checkout/shipping_method/save',
        type: 'post',
        data: $('input[name=\'shipping_method\']:checked, textarea'),
        dataType: 'json',
		success: function(data){
			console.log("api1");
			console.log(data);
			$.ajax({
                    url: 'index.php?route=checkout/payment_method',
                    dataType: 'html',
                    complete: function() {
                        $('#button-shipping-method').button('reset');
                    },
                    success: function(html) {
						console.log(html);
                        $('#payment_appen').html(html);
						
						$.ajax({
                         url: 'index.php?route=checkout/payment_method/save',
                         type: 'post',
                         data: $('input[name=\'payment_method\']:checked, textarea'),
                         dataType: 'json',
                         beforeSend: function() {
                       	$('#button-payment-method').button('loading');
		                 },
                        success: function(json) {
			              $.ajax({
                    url: 'index.php?route=checkout/confirm',
                    dataType: 'html',
                    complete: function() {
                        $('#button-payment-method').button('reset');
                    },
                    success: function(html) {
                        $('#confirm_box').html(html);
					},error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
						   })
						   console.log(json);
		            	} ,
						error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
			
						})
						
						
					}
			})
			},
			error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
			
     })
});			

$("body").on("change","input[name=\'payment_method\']", function(){
	$.ajax({
                         url: 'index.php?route=checkout/payment_method/save',
                         type: 'post',
                         data: $('input[name=\'payment_method\']:checked, textarea'),
                         dataType: 'json',
                         beforeSend: function() {
                       	$('#button-payment-method').button('loading');
		                 },
                        success: function(json) {
			              $.ajax({
                    url: 'index.php?route=checkout/confirm',
                    dataType: 'html',
                    complete: function() {
                        $('#button-payment-method').button('reset');
                    },
                    success: function(html) {
                        $('#confirm_box').html(html);
					},error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
						   })
						   console.log(json);
		            	} ,
						error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
			
						})
		
	})

</script>
<?php echo $footer; ?>
