<?php echo $header; ?>
<div style="width: 100%; font-family:Josefin Sans" class="container">
    <div style="margin-top:200px" class="row justify-content-center mb-3 pb-3">
<div class="col-md-12 heading-section text-center ftco-animate fadeInUp ftco-animated">
<h1 class="big">Password</h1>
<h2 style="letter-spacing:6px" class="mb-4">Password</h2>
</div>
</div>

  <br /><br />
  
  <div class="row">
    <div id="content" class="col-sm-10 col-sm-offset-1 col-md-10 col-md-offset-1 col-lg-8 col-lg-offset-2"><?php echo $content_top; ?>
     
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
        <fieldset>
          <div style="text-align:center" class="form-group required">
            <div class="col-sm-2"></div>
            <label class="col-sm-2 control-label" for="input-password"><?php echo $entry_password; ?></label>
            <div class="col-sm-4">
              <input type="password" name="password" value="<?php echo $password; ?>" placeholder="<?php echo $entry_password; ?>" id="input-password" class="form-control" />
              <?php if ($error_password) { ?>
              <div class="text-danger"><?php echo $error_password; ?></div>
              <?php } ?>
            </div>
          </div>
          <div class="form-group required">
              <div class="col-sm-2"></div>
          
            <label class="col-sm-2 control-label" for="input-confirm">Confirm</label>
            <div class="col-sm-4">
              <input type="password" name="confirm" value="<?php echo $confirm; ?>" placeholder="<?php echo $entry_confirm; ?>" id="input-confirm" class="form-control" />
              <?php if ($error_confirm) { ?>
              <div class="text-danger"><?php echo $error_confirm; ?></div>
              <?php } ?>
            </div>
          </div>
        </fieldset>
        <div class="buttons clearfix">
          <div style="text-align:center">
            <input type="submit" value="<?php echo $button_continue; ?>" class="btn btn-primary" />
          </div>
        </div>
      </form>
      </div>
    </div>
</div>
<?php echo $footer; ?> 