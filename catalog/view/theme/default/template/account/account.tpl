<?php echo $header; ?>

<style>
	.ac_menu .col-sm-10 .col-sm-4{ padding: 20px; margin: 0px; text-align: center; }
		.ac_menu .col-sm-10 .col-sm-4 .col-sm-12{ border:thin solid #ccc; padding:10px; height:228px }
		.col-sm-12 a{font-size:18px; color:#525252}
	.ac_description{margin-top:12px; font-weight:300 !important; color:#333}
</style>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

<div style=" width:100%" id="content" class="container">
 
 
  <div class="row">
 <div style="margin-top:100px" class="row justify-content-center mb-3 pb-3">
<div class="col-md-12 heading-section text-center ftco-animate fadeInUp ftco-animated">
<h1 class="big">My Account</h1>
<h2 style="letter-spacing:6px" class="mb-4">My Account</h2>
</div>
</div>
 </div>

  
  <div class="row">
   <div class="col-sm-10 col-sm-offset-1">
   	<div class="row text-center">
   		<div class="col-sm-12">
     
     <?php echo $content_top; ?>
   
     
     
        <div class="row ac_menu">
        
        <div class="col-sm-10 col-sm-offset-1">
         
        
        	<div class="col-sm-4">
				<div class="col-sm-12">
                 <img width="120" src="image/icons/Icon1.png" /><br />
                <a href="index.php?route=account/address/edit&address_id=<?php echo $address_id;?>">Account Details</a> 
                <p class="ac_description">Review your personal information.</p> <br /> 
                </div>
           </div>
            
            
        	<div class="col-sm-4">
				<div class="col-sm-12">
                <img width="120" src="image/icons/Icon3.png" /><br />
                <a href="<?php echo $wishlist; ?>">Wishlist</a>
                <p class="ac_description">Don't lose sight of the articles you like most, access your wishlist here.</p>
                </div>
          </div>
            
            
        <div class="col-sm-4">
          <div class="col-sm-12">
    <img width="120" src="image/icons/Icon2.png" /><br />
       	<a href="<?php echo $order; ?>">Order History</a>   
         <p class="ac_description">Check the history and current status of your orders.</p>
         
          </div>
          
        	</div>
            
        		
        
        
      	   
        </div>
        	
		</div>	
       
       	 
       
     
   
   
</div>
  <a href="index.php?route=account/logout">
  <button class="btn btn-primary text-center">Logout</button>
</a>
   	</div>
   </div>
  
    </div>
    
   
    </div>
<?php echo $footer; ?> 