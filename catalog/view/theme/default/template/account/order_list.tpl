<?php echo $header; ?>
<div style="width: 100%" class="container">
  
   <div style="margin-top:200px" class="row justify-content-center mb-3 pb-3">
<div class="col-md-12 heading-section text-center ftco-animate fadeInUp ftco-animated">
<h1 class="big">My Orders</h1>
<h2 style="letter-spacing:6px" class="mb-4">MY ORDERS</h2>
</div>
</div>

<br /><br />
  <div class="row">
   		<div id="content" class="col-sm-10 col-sm-offset-1 col-md-10 col-md-offset-1 col-lg-8 col-lg-offset-2">
      
      <?php if ($orders) { ?>
      <div class="table-responsive">
       <h4 style="text-transform: uppercase; padding: 10px; background-color: #f1f1f1">ORDERS BY <?php echo $orders[0]['name']; ?></h4><br />
        <table class="table table-stripped table-hover">
          <thead>
            <tr>
              <td class="text-left">Date</td>
              <td class="text-left">Order</td>
             
              <td class="text-left">Status</td>
              <td class="text-right">Total</td>
             
              <td></td>
            </tr>
          </thead>
          <tbody>
            <?php foreach ($orders as $order) { ?>
            <tr>
              <td class="text-left"><?php echo $order['date_added']; ?></td>
              
              <td class="text-left">
              
             <p>Order Id:  #<?php echo $order['order_id']; ?></p>
            
             <a style="font-size: 11px" href="<?php echo $order['href']; ?>">View Details</a>
              </td>
              <td class="text-left"><?php echo $order['status']; ?></td>
              <td class="text-right"><?php echo $order['total']; ?></td>
             
            
            </tr>
            <?php } ?>
          </tbody>
        </table>
      </div>
      <div class="row">
        <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
        <div class="col-sm-6 text-right"><?php echo $results; ?></div>
      </div>
      <?php } else { ?>
      <div style="margin-top:50px" class="row">
    <div style="text-align:center" id="content" class="col-sm-6 col-sm-offset-3">
      <h2 style="text-align:center">You have no previous orders</h2>
   <br />
   
    <br />
     <a style="margin-top:30px" href="index.php?route=common/home">  <button class="btn btn-primary">SHOP NOW</button></a>
    
   
      
      </div>
      </div>
     
      <?php } ?>
      <?php echo $content_bottom; ?>
 </div>
</div></div>
<?php echo $footer; ?>
