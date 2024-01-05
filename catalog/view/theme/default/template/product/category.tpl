<?php echo $header; ?>

<style>
   .pagination li a{ border:none !important; background:none !important}
   ul.pagination li.active span{color:#333; background:none !important; border-radius:0px; border:none; border-bottom: thin solid #333}
   ul.pagination li.active span:hover{color:#333}
   *:focus {
   outline: 0 !important;
   }
   .foo img{transition-duration:1000ms; -webkit-transition-duration:1000ms; }
   .foo img:last-child{display:none}
   .foo:hover img:first-child{display:none}
   .foo:hover img:last-child{display:inline-block}
   .product-thumb .image img{
      width:100%;
   }
   .product-thumb .caption {
   padding: 0 5px; 
      min-height: 80px;
  }
     .caption{
      margin-top:0px;
      text-align:center;
   }
   @media screen and (max-width:650px){
      .caption h3{
         display:none;
      }
      .foo{
   padding:0px
}

   }
</style>

<!-- <section id="category-banner">
   <div class="container">
      <div style="padding:0px" class="row">
         <div style="padding:0px" class="col-sm-10 col-sm-offset-1"> 
            <img src="<?php echo $thumb; ?>" class="img-responsive" />
         </div>
      </div>
   </div>
</section> -->
<section style="padding: 0px;">
   <div class="container">
      <div class="row">
         <ul class="breadcrumb">
            <?php foreach ($breadcrumbs as $breadcrumb) { ?>
            <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
            <?php } ?>
          </ul>
      </div>
   </div>
</section>



<section id="category-list" style="padding-top: 0px;">
   <div class="container">

<!--=================================== SORT-LIST/GRID-VIEWS ===================================-->
      <?php if ($products) { ?>
         <div class="row">
           <div class="col-md-6 col-sm-6 col-lg-6 hidden-xs">
            <!-- <div class="btn-group btn-group-sm">
               <button type="button" id="list-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_list; ?>"><i class="fa fa-th-list"></i></button>
               <button type="button" id="grid-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_grid; ?>"><i class="fa fa-th"></i></button>
            </div> -->
           </div>
           <div class="col-md-6 col-lg-6 col-sm-6" style="padding-left: 340px;">
             <div class="form-group input-group input-group-sm">
               <label class="input-group-addon" for="input-sort"><?php echo $text_sort; ?></label>
               <select id="input-sort" class="form-control" onchange="location = this.value;">
                 <?php foreach ($sorts as $sorts) { ?>
                 <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
                 <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
                 <?php } else { ?>
                 <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
                 <?php } ?>
                 <?php } ?>
               </select>
             </div>
           </div>
         </div>
<!-- =======================================PRODUCTS======================================= -->
      <div class="row">
               <?php shuffle($products);?>
               <?php foreach ($products as $product) { ?>
               <div class="col-lg-4 col-md-4 col-sm-6 col-6 text-center">
                  <div class="product-thumb">
                     <div class="image" style="position: relative;">
                       <?php if(isset($images[$product['product_id']]['popup'])){?>
                     <a class="foo" href="<?php echo $product['href']; ?>">
                      <img style="z-index:99999999" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive pthumb" />
                      <button class="product-wishlist-btn" type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>  
                      <img src="<?php print_r($images[$product['product_id']]['popup']);?>" class="img-responsive" />
                      <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');" class="product-hover"><a href="">ADD TO BAG</a></button>
                        
                     </a>
                      <?php }else{?>
                     <a href="<?php echo $product['href']; ?>">
                      <img style="z-index:99999999" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive pthumb" />
                      <button class="product-wishlist-btn" type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
                      <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');" class="product-hover"><a  href="">ADD TO BAG</a></button>
                     </a>
                      <?php }?>
                     </div>
                     <div>
                       
                        
                        <div class="caption" style="text-align:left;">
                           <h3 style="text-transform:uppercase; font-size:16px; margin-top:-25px"><?php echo $product['name']; ?></h3>

                           <?php if ($product['price']) { ?>
                           <p style="margin-top:-5px; font-size:16px; font-weight:bold;" class="price">
                              <?php if (!$product['special']) { ?>
                              <?php echo preg_replace('~\.0+$~','',$product['price']); ?>
                              <?php } else { ?>
                              <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                              <?php } ?>
                           </p>
                           <?php } ?>
                        </div>
                     </div>
                  </div>
               </div>
               <?php } ?>
            </div>
            <div style="padding-right:30px" class="row">
               <div class="col-sm-12 text-right" style="padding-bottom: 20px;"><?php echo $pagination; ?></div>
            </div>
            <?php if (!$categories && !$products) { ?>
            <p><?php echo $text_empty; ?></p>
            <div class="buttons">
               <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
            </div>
            <?php } ?> 
         <?php } ?>     
   </div>
</section>
<script>
   $('button').click(function(){
   			$(this).children('i').removeClass('fa-heart-o').addClass('fa-heart');
   })
   function localwish(a){
   	
   	$.ajax({
   			url: 'index.php?route=common/lustlist/add',
   			type: 'post',
   			data: 'product_id=' + a,
   			dataType: 'json',
   			success: function(a) {
   				console.log('works');
   			},
   	     error: function(xhr, ajaxOptions, thrownError) {
               console.log(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
           }
      	});
   	}
</script>
<script>
   $(document).ready(function(e) {
   $('.pagination li').each(function() {
       if($(this).text()=='>'||$(this).text()=='<'||$(this).text()=='>|'||$(this).text()=='|<'){
   		$(this).css('display','none');
   		}
   });
       
   });
</script>
<?php echo $footer; ?>