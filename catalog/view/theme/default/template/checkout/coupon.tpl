    
    <div style="padding:0px" class="row">
    <div style="padding:0px; margin-top:0px" class="col-sm-5"><h4>ADD A PROMO CODE</h4>
    </div>
    <div style="padding:0px; margin-left:-10px" class="col-sm-7">
    <div class="input-group">
       <input style="background-color: #eee; box-shadow:none; border:thin solid #eee" type="text" name="coupon" value="<?php echo $coupon; ?>"  id="input-coupon" class="form-control" />
        <p id="input-error"></p>
        <span class="input-group-btn">
        <button style="background:none; border:none; box-shadow:none" type="button" id="button-coupon" data-loading-text="<?php echo $text_loading; ?>"  class="btn"><i>Apply Code</i></button>
        </span></div>
      
    </div>
    
    </div>
    
      <script type="text/javascript"><!--
$('#button-coupon').on('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/coupon/coupon',
		type: 'post',
		data: 'coupon=' + encodeURIComponent($('input[name=\'coupon\']').val()),
		dataType: 'json',
		beforeSend: function() {
			$('#button-coupon').button('loading');
		},
		complete: function() {
			$('#button-coupon').button('reset');
		},
		success: function(json) {
			$('.alert').remove();

			if (json['error']) {
				
$("#input-coupon").css('border','thin solid red');
			$("#input-error").html('Invalid Coupon');
				$("#button-coupon").css('margin-top','-4px');
			}

			if (json['redirect']) {
				location = json['redirect'];
			}
		}
	});
});
//--></script>
   