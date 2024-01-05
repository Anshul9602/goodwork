<?php echo $header; ?>
<div class="container">

  <div class="row">

    <div id="content" class="col-sm-12">
      <h1><?php echo $heading_title; ?></h1>
      <hr />

      <div class="row">
        <div class="col-sm-4">
         
          <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3557.72339580343!2d75.80098317602351!3d26.912272276647276!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x396db401cf6c4637%3A0xdfb356591e8c9020!2sGoodWork!5e0!3m2!1sen!2sin!4v1701434784250!5m2!1sen!2sin" style="border:0; width:100%; height:300px" allowfullscreen="" loading="lazy"></iframe>
          <br />
          <h5> <i class="fa fa-map-marker"></i>&nbsp;&nbsp;  D-4 Malviya Marg, C-Scheme 
            Opposite westside store, Jaipur 302002</h5><br />
          <a href="tel:+919799999204"><h5><i class="fa fa-phone"></i> &nbsp;&nbsp;+91 97999 99204</h5></a><br />
          <a href="mailto:info@goodworkdaily.com"><h5><i class="fa fa-envelope"></i> &nbsp;&nbsp;info@goodworkdaily.com</h5></a>

        </div>
        <div class="col-sm-8">
          <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
            <fieldset>

              <div class="form-group required">
                <label style="text-align: left;" class="col-sm-12 control-label" for="input-name"><?php echo $entry_name; ?></label>
                <div class="col-sm-12">
                  <input type="text" name="name" value="<?php echo $name; ?>" id="input-name" class="form-control" />
                  <?php if ($error_name) { ?>
                    <div class="text-danger"><?php echo $error_name; ?></div>
                  <?php } ?>
                </div>
              </div>
              <div class="form-group required">
                <label style="text-align: left;" class="col-sm-12 control-label" for="input-email"><?php echo $entry_email; ?></label>
                <div class="col-sm-12">
                  <input type="text" name="email" value="<?php echo $email; ?>" id="input-email" class="form-control" />
                  <?php if ($error_email) { ?>
                    <div class="text-danger"><?php echo $error_email; ?></div>
                  <?php } ?>
                </div>
              </div>
              <div class="form-group required">
                <label style="text-align: left;" class="col-sm-12 control-label" for="input-enquiry">
                  <?php echo $entry_enquiry; ?></label>
                <div class="col-sm-12">
                  <textarea name="enquiry" rows="3" id="input-enquiry" class="form-control"><?php echo $enquiry; ?></textarea>
                  <?php if ($error_enquiry) { ?>
                    <div class="text-danger"><?php echo $error_enquiry; ?></div>
                  <?php } ?>
                </div>
              </div>
              <?php echo $captcha; ?>
            </fieldset>
            <div class="buttons">
              <div class="pull-right">
                <input class="btn btn-primary" type="submit" value="<?php echo $button_submit; ?>" />
              </div>
            </div>
          </form>
        </div>
      </div>


    </div>

  </div>
</div>
<?php echo $footer; ?>