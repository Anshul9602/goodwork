
<?php echo $header; ?>

 

<div style="padding:0px; max-width:1200px; min-height:70vh; margin:auto" class="container">
  
    <div class="row justify-content-center mb-3 pb-3 inner-heading">
<div class="col-md-12 heading-section text-center ftco-animate fadeInUp ftco-animated">
<h1 class="big">Contact</h1>
<h2 style="letter-spacing:6px" class="mb-4">CONTACT</h2>
</div>
</div>
 
    
 		  <div style="padding:0px" id="top_slider" class="row">
   
   
   <div class="col-sm-6">
   <form>
     <div class="row">
   <div class="form-group required">
   <p style=" font-size:20px; padding-left:20px">How can we help you?</p>
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
            <div class="col-sm-12">
              <textarea rows="6" placeholder="Message" id="message" class="form-control"></textarea>
            </div>
          
         
          </div> 
          </div><br />
          <div style="text-align:right; padding-right:10px" class="row">
          <button id="send_con" class="btn btn-primary">Send</button>
          </div>
          </form>
   </div>
    <div style="padding:0px;" class="col-sm-6">
    	


<p style="margin-top:45px">For any queries, fill in the contact form and we will get back to you as quickly as possible!
<br /><br />
For anything else, you can always Whatsapp us or give a call on 
		<br /><b>Phone Number: 0141-4107341</b><br />
		Mon-Sat 11 AM to 7 PM <br /><br />
You can also directly email us at
		<b>info@goodworkdaily.com</b></p>
<br /><br />
        </div>

       
       
        </div>
    
 </div> 
   
   <script>
$(document).ready(function(e) {
    $("#send_con").click(function(e){
		e.preventDefault();
		if($("#email").val()!="" && $("#name").val()!="" && $("#message").val() !="" ){
			$.ajax({
			url:'index.php?route=common/contact/send_email',
			method:'POST',
			data:{"email":$("#email").val(),"name":$("#name").val(),"message":$("#message").val(),"subject":$("#subject").val()},
			beforeSend: function(){
				$("#send-load").fadeIn();
				},
				success: function(data){
						$("#send-load").fadeOut();
			
					alert("Thank you for your Message, we will be in touch!");
					$("#email").val("");
					$("#name").val("");
				   $("#message").val("");
					}
		
			})
			}else{
				alert("Please fill the form completely");
				}
		
		
		})
});
</script> 
<?php echo $footer; ?>