<?php echo $header; ?>
<style>
footer{
  margin-top:0px;
  padding-top:0px;
}
</style>
<div style="height:100vh; background: url(image/suc.jpg) no-repeat; background-size:cover;" class="container">
<div style="width:100%; height:100vh; background-color:#000000; opacity:0.3; position:absolute;  left:0px">
</div>

  <div style="margin-top:30vh" class="row">
    <div id="content" style="text-align:center" class="col-sm-12">
      <h3 style="color:#fff"><?php echo $heading_title; ?></h3>
      <br />
      <a href="<?php echo $continue; ?>"><button class="btn btn-primary"><?php echo $button_continue; ?></button></a>
     
      </div>
    </div>
</div>
<?php echo $footer; ?>