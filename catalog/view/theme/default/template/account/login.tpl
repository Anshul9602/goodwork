<?php echo $header; ?>

<div style="width: 100%" class="container">
  <?php if ($error_warning) { ?>
<style>
.error_hand{border:thin solid #B15153}
</style>
  <?php } ?>
<div style="margin-top:200px" class="row justify-content-center mb-3 pb-3">
<div class="col-md-12 heading-section text-center ftco-animate fadeInUp ftco-animated">
<h1 class="big">Login</h1>
<h2 style="letter-spacing:6px" class="mb-4">LOGIN</h2>
</div>
</div>

  <div style="margin-top: 40px;" class="row">
 	<div class="col-sm-12">

   
        <div style="text-align: center" class="col-sm-4 col-sm-offset-4">

          <div class="well">

            
			  <h2 style=" padding-bottom:7.5px; font-family:play; letter-spacing:2px; border-bottom:1px solid #f1f1f1">Sign in to your account</h2>
           
<br />
            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">

              <div class="form-group">
<div class="row">
<div class="col-sm-10 col-sm-offset-1">
		 <input type="text" name="email" value="<?php echo $email; ?>" placeholder="Email *" id="input-email" class="form-control error_hand" />
	</div>
</div>
               </div>

              <div class="form-group">
<div class="row">
<div class="col-sm-10 col-sm-offset-1">
		    <input type="password" name="password" value="<?php echo $password; ?>" placeholder="Password *" id="input-password" class="form-control error_hand" />
             
	</div>
</div>
               
             
               

                </div>
                <div class="row">
                <div class="col-sm-10 col-sm-offset-1">
              <button style="margin-top:5px; width:100%" class="btn btn-primary" type="submit" >&nbsp;&nbsp;&nbsp;&nbsp;LOGIN&nbsp;&nbsp;&nbsp;&nbsp;</button>   
                </div>
                </div>
             
<br /><a style="color:#333" href="<?php echo $forgotten; ?>"><u>FORGOTTEN YOUR PASSWORD ?</u></a>

              <?php if ($redirect) { ?>

              <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />

              <?php } ?>

            </form>

          </div>

        </div>
         </div>
         <?php if ($error_warning) { ?>
         <div style="text-align:center" class="row">
         <div class="col-sm-6 col-sm-offset-3">
          <p style="color:#A44446">Your Email address or password is incorrect or not registered at être.in</p>
        
         </div>
         </div>
         <?php }?>
          <div style="text-align: center" class="row">
         	  <div class="col-sm-6 col-sm-offset-3">



            <p style="text-transform:uppercase; letter-spacing:2px">Don't have an account?  <a style="margin-top: 10px; text-decoration:underline; color:#4A4A4A" href="<?php echo $register; ?>">Register Here</a> </p>

            

           
           
            </div>

       

      <?php echo $content_bottom; ?></div>

   </div>
	</div>
</div>

<?php echo $footer; ?>