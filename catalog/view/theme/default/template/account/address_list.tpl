<?php echo $header; ?>
<div style=" width: 100%" class="container">
  <?php if ($success) { ?>
  <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?></div>
  <?php } ?>
  <?php if ($error_warning) { ?>
  <div class="alert alert-warning"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
  <?php } ?>
 <div class="row">
 <div class="col-sm-12" style="background-color:#F2F2F2; padding-top:30px; padding-bottom: 30px;">
    
    <div class="col-sm-10 col-sm-offset-1 col-md-10 col-md-offset-1 col-lg-8 col-lg-offset-2">
      
    
    <h2 style="text-align:center"><?php echo $text_address_book; ?></h2>
	 </div>
   </div>
  </div>
  
  <div class="row">
   <div class="col-sm-10 col-sm-offset-1 col-md-10 col-md-offset-1 col-lg-8 col-lg-offset-2">
   	<div class="row">
   		<div id="content" class="col-sm-12">
        <div class="col-sm-8 col-sm-offset-2">
      <h2></h2>
      <?php if ($addresses) { ?>
      <div class="table-responsive">
        <table class="table table-bordered table-hover">
          <?php foreach ($addresses as $result) { ?>
          <tr>
            <td class="text-left"><?php echo $result['address']; ?></td>
            <td class="text-right"><a href="<?php echo $result['update']; ?>" class="btn btn-info"><?php echo $button_edit; ?></a> &nbsp; <a href="<?php echo $result['delete']; ?>" class="btn btn-danger"><?php echo $button_delete; ?></a></td>
          </tr>
          <?php } ?>
        </table>
      </div>
      <?php } else { ?>
      <p><?php echo $text_empty; ?></p>
      <?php } ?>
      <div class="buttons clearfix">
        <div class="pull-left"><a href="<?php echo $back; ?>" class="btn btn-default"><?php echo $button_back; ?></a></div>
        <a href="<?php echo $add; ?>"><button class="pull-right btn btn-primary"><?php echo $button_new_address; ?></button></a>
      </div>
      <?php echo $content_bottom; ?></div></div>
   </div>
</div></div></div>
<?php echo $footer; ?>