<?php if (!isset($redirect)) { ?>
  
  <style>
  @media screen and (max-width:600px){
	  #cssk{margin-left:-30px}
	  #cssk table{display:inherit}
	  }
  </style>
  
  <div style="padding:20px 10px 20px 10px" id="cssk" class="row">
  <table class="table table-responsive">
   <thead style="border-bottom:thin solid #ccc">
   <tr><td colspan="2"><b>Product Detail</b></td><td><b>Qty</b></td><td><b>Price</b></td><td><b>Total</b></td></tr>
   </thead>
  <tbody>
  
  
  <?php foreach ($products as $product) { ?>
    
  <tr>
  <td width="60"> <?php if ($product['thumb']) { ?>
                  <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>"  /></a>
                  <?php } ?></td>
                  
                  <td>
                  <a style="color:#333; font-size:12px" href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
   <?php foreach ($product['option'] as $option) { ?>
          <br />
          &nbsp;<small> - <?php echo $option['name']; ?>: <?php echo $option['value']; ?></small>
          <?php } ?>
          <?php if($product['recurring']) { ?>
          <br />
          <span class="label label-info"><?php echo $text_recurring_item; ?></span> <small><?php echo $product['recurring']; ?></small>
          <?php } ?>
 
                  </td>
                  <td style="font-size:12px">
                  <br />
                  <?php echo $product['quantity']; ?>
                  </td>
                  
                  <td style="font-size:12px">
                  <br />
                   <?php echo $product['price']; ?>

                  </td> 
                  <td style="font-size:12px">
                  <br />
                   <?php echo $product['total']; ?>
 
                  </td>
  </tr>
  
  
 
  <?php }?>
  
  </tbody>
  </table> 
  <hr />
    <table class="table">
    <tfoot>
      <?php foreach ($totals as $total) { ?>
      <tr>
        <td style="border:none" colspan="4" class="text-right"><strong><?php echo $total['title']; ?></strong></td>
        <td style="border:none" class="text-right"><?php echo $total['text']; ?></td>
      </tr>
      <?php } ?>
    </tfoot>
  </table>
   <?php echo $payment; ?>

  </div>
  
 

<?php } else { ?>
<script type="text/javascript"><!--
location = '<?php echo $redirect; ?>';
//--></script>
<?php } ?>
