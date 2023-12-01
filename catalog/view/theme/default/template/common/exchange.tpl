
<?php echo $header; ?>

 

<div style="padding:0px; width:100%" class="container">
  
 <div style="padding-top:0px" class="row">
 	<div style="padding:0px" class="col-sm-12">
    
   <div style="padding:60px; font-family:play; margin-bottom:30px; background:url(image/bacground/1.png) center no-repeat; background-size:cover" class="row">
    	
       <h1 style="text-align:center; font-size:40px">Returns & Exchanges</h1>

   </div>
    
 		  <div style="padding:0px" id="top_slider" class="row">
   <div class="col-sm-6">
   <form>
     <div class="row">
   <div class="form-group required">
   <p style="font-family:Josefin Sans; font-size:20px; padding-left:20px">Return form</p>
  <br />       
   
            <div class="col-sm-6">
              <input type="text" name="firstname" value="" placeholder="Your Name" id="name" class="form-control" />
            </div>
          <div class="col-sm-6">
              <input type="text" name="email" value="" placeholder="Your Email" id="email" class="form-control" />
            </div>
         </div>
         
         
         
         
          </div> <br />
          
          <div class="row">
          <div class="form-group required">
   
            <div class="col-sm-6">
              <input type="text" name="order" value="" placeholder="Order #" id="order" class="form-control" />
            </div>
          <div class="col-sm-6">
              <input type="text" name="number" value="" placeholder="Phone Number" id="number" class="form-control" />
            </div>
         </div>
         
          </div><br />
          <div class="row">
          <div class="form-group required">
            <div class="col-sm-12">
              <textarea rows="6" placeholder="Reason for return" id="message" class="form-control"></textarea>
            </div>
          
         
          </div> 
          </div><br />
          <div style="text-align:right; padding-right:10px" class="row">
          <button id="send_con" class="btn btn-primary">Send</button>
          </div>
          </form>
   </div>
   
    <div style=" height: 100vh" class="col-sm-6">
   
<p>For online orders, we accept goods which are unused, unworn, unwashed and undamaged by you. The goods must be with original tags and packaging for an exchange or a return. You need to fill out an easy return form for us to exchange or return the product.
<br /><br />
There’s no cash refund on any être product. In case of a return, the product will be checked for its original packaging and condition. The money shall be refunded to you in form of a credit note on your registered email address.
<br /><br />
You have 14 calendar days from the delivery date to postmark your items for return. The goods bought from any of our partner stores must be returned to the respective store only.
<br /><br />
We shall check the shipping date from your end. If the shipping date exceeds the 14 day return period, the product is not eligible for a return or an exchange.
<br /><br />
We are unable to process immediate exchanges. If you would like to exchange something for a different size or color, please return the original item(s) for a full credit and place a new order. Etre monitors returns to identify potential misuse or abuse of our return policies.<br /><br /> We reserve the right to refuse service to anyone.</p>
        </div>
    
    </div>
  </div>
	</div>
</div> 
     <script>
$(document).ready(function(e) {
    $("#send_con").click(function(e){
		e.preventDefault();
		if($("#email").val()!="" && $("#name").val()!="" && $("#message").val() !="" && $("#phone").val() !="" && $("#order").val() !="" ){
			$.ajax({
			url:'index.php?route=common/exchange/send_email',
			method:'POST',
			data:{"email":$("#email").val(),"name":$("#name").val(),"reason":$("#message").val(),"number":$("#number").val(),"order":$("#order").val()},
			beforeSend: function(){
				$("#send-load").fadeIn();
				},
				success: function(data){
						$("#send-load").fadeOut();
			
					alert("Thank you for your Message, we will be in touch!");
					$("#email").val("");
					$("#name").val("");
				   $("#message").val("");
				
        	$("#number").val("");
				   $("#order").val("");
				
        	}
		
			})
			}else{
				alert("Please fill the form completely");
				}
		
		
		})
});
</script> 
   
<?php echo $footer; ?>