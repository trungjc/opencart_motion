<?php echo $header; ?><?php echo $content_top; ?>
<div class="bg_panel socialbox"><?php echo $content_social; ?></div>
<div class="line-space"></div><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content">
  <!--<div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div> -->
  <div class="header-product">
	<div class="left-header-product">
		<h1 class="product-title"><?php echo $heading_title; ?></h1>
		 
		<?php if ($price) { ?>
		<div class="price"><?php echo $text_price; ?>
		<?php if (!$special) { ?>
		<?php echo $price; ?>
		<?php } else { ?>
		<span class="price-old"><?php echo $price; ?></span> <span class="price-new"><?php echo $special; ?></span>
		<?php } ?>
		
		<?php if ($discounts) { ?>
		<div class="discount">
		  <?php foreach ($discounts as $discount) { ?>
		  <?php echo sprintf($text_discount, $discount['quantity'], $discount['price']); ?>
		  <?php } ?>
		</div>
		<?php } ?>
		</div>
		<?php } ?>		
	</div>	
	<div class="right-header-product">	
		<ul class="controlTop">
			<!--li class="btt-detail">
				<a href="#" class="button viewdetail">Details</a>				
			</li-->
			<li class="btt-addtocart">
				<a id="button-cart" class="button button-cart"><span><?php echo $button_cart; ?></span></a>
			</li>
			<li class="fb-like">
			<div id="fb-root"></div>
				<script>(function(d, s, id) {
				  var js, fjs = d.getElementsByTagName(s)[0];
				  if (d.getElementById(id)) {return;}
				  js = d.createElement(s); js.id = id;
				  js.src = "//connect.facebook.net/en_GB/all.js#xfbml=1&appId=146549482066830";
				  fjs.parentNode.insertBefore(js, fjs);
				}(document, 'script', 'facebook-jssdk'));</script>	
			<div class="fb-like" data-send="false" data-layout="button_count" data-width="450" data-show-faces="false" data-font="arial"></div>
			</li>			
		</ul>
	</div>
	
  </div>
 <div class="break-line">&nbsp;</div>
  <div class="product-gallery">
	<script type="text/javascript">
		$(document).ready(function() {				
			// Initialize Minimal Galleriffic Gallery
			$('#thumbs').galleriffic({
				imageContainerSel:      '#slideshow',
				controlsContainerSel:   '#controls',
				prevLinkText:      '< Previous',
				nextLinkText:   'Next >',				
				playLinkText: ''
			});
		});
	</script>  

	<div id="gallery" class="gallery">
		<div id="controls" class="controls"></div>
		<div class="slideshow-container">
			<div id="loading" class="loader"></div>
			<div id="slideshow" class="slideshow"></div>
		</div>
	</div>
	<div id="thumbs" class="navigation">
		<ul class="thumbs noscript">
		  <?php if ($thumb) { ?>
			<li class="image">
				<a class="thumb" href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>">				
					<img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" id="image" />
				</a>
		   </li>
		  <?php } ?>		
		  <?php if ($images) { ?>		 
			<?php foreach ($images as $image) { ?>
			 <li class="main-image">
				<a  class="thumb"  href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>">
					<img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" />
				</a>
			</li>
			<?php } ?>		  
		  <?php } ?>			
		</ul>
	</div>
	<!-- End Minimal Gallery Html Containers -->  
  </div>
  	<div class="break-line">&nbsp;</div>
  <div class="product-desc">
	<h2>Product Infomation</h2>
	<?php echo $description; ?>	
	  <?php if ($attribute_groups) { ?>
	  <div class="list-attribute">
		<table class="attribute">
		  <?php foreach ($attribute_groups as $attribute_group) { ?>
		  <thead>
			<tr>
			  <td colspan="2"><?php echo $attribute_group['name']; ?></td>
			</tr>
		  </thead>
		  <tbody>
			<?php foreach ($attribute_group['attribute'] as $attribute) { ?>
			<tr>
			  <td><?php echo $attribute['name']; ?></td>
			  <td><?php echo $attribute['text']; ?></td>
			</tr>
			<?php } ?>
		  </tbody>
		  <?php } ?>
		</table>
	  </div>
	  <?php } ?>	
  </div>
  <div class="product-review">
	<?php if ($review_status) { ?>
	  <div id="review-box">
		<script type="text/javascript">
			function writeReview(){
				$("#review-form").slideToggle("slow");
			}
		</script> 	  
		<div id="review"></div>
		<div id="review-form" style="display:none;">
			<h2 id="review-title"><?php echo $text_write; ?></h2>
			<b><?php echo $entry_name; ?></b>
			<input type="text" name="name" value="" />
			
			
			<b><?php echo $entry_review; ?></b>
			<textarea name="text" cols="40" rows="8" style="width: 98%;"></textarea>
			<span style="font-size: 11px;"><?php echo $text_note; ?></span>
			
			<b><?php echo $entry_rating; ?></b> <span><?php echo $entry_bad; ?></span>&nbsp;
			<input type="radio" name="rating" value="1" />
			&nbsp;
			<input type="radio" name="rating" value="2" />
			&nbsp;
			<input type="radio" name="rating" value="3" />
			&nbsp;
			<input type="radio" name="rating" value="4" />
			&nbsp;
			<input type="radio" name="rating" value="5" />
			&nbsp; <span><?php echo $entry_good; ?></span>
			
			<b><?php echo $entry_captcha; ?></b>
			<input type="text" name="captcha" value="" />
			
			<img src="index.php?route=product/product/captcha" alt="" id="captcha" />
			
			<div class="buttons">
			  <div class="right"><a id="button-review" class="button"><span><?php echo $button_continue; ?></span></a></div>
			</div>
		</div>
	  </div>
	  <?php } ?>	
  </div>
  <div class="prduct-cart product-info">
	<div class="product-option">
      <?php if ($options) { ?>
      <div class="options">
        <h2><?php echo $text_option; ?></h2>

        <?php foreach ($options as $option) { ?>
        <?php if ($option['type'] == 'select') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <b><?php echo $option['name']; ?>:</b>
          <select name="option[<?php echo $option['product_option_id']; ?>]">
            <option value=""><?php echo $text_select; ?></option>
            <?php foreach ($option['option_value'] as $option_value) { ?>
            <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
            <?php if ($option_value['price']) { ?>
            (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
            <?php } ?>
            </option>
            <?php } ?>
          </select>
        </div>

        <?php } ?>
        <?php if ($option['type'] == 'radio') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <b><?php echo $option['name']; ?>:</b>
          <?php foreach ($option['option_value'] as $option_value) { ?>
          <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" />
          <label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
            <?php if ($option_value['price']) { ?>
            (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
            <?php } ?>
          </label>
          
          <?php } ?>
        </div>

        <?php } ?>
        <?php if ($option['type'] == 'checkbox') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <b><?php echo $option['name']; ?>:</b>
          <?php foreach ($option['option_value'] as $option_value) { ?>
          <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" />
          <label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
            <?php if ($option_value['price']) { ?>
            (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
            <?php } ?>
          </label>
          
          <?php } ?>
        </div>

        <?php } ?>
        <?php if ($option['type'] == 'image') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <b><?php echo $option['name']; ?>:</b>
            <table class="option-image">
              <?php foreach ($option['option_value'] as $option_value) { ?>
              <tr>
                <td style="width: 1px;"><input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" /></td>
                <td><label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" /></label></td>
                <td><label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                    <?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?>
                  </label></td>
              </tr>
              <?php } ?>
            </table>
        </div>

        <?php } ?>
        <?php if ($option['type'] == 'text') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <b><?php echo $option['name']; ?>:</b>
          <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" />
        </div>

        <?php } ?>
        <?php if ($option['type'] == 'textarea') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <b><?php echo $option['name']; ?>:</b>
          <textarea name="option[<?php echo $option['product_option_id']; ?>]" cols="40" rows="5"><?php echo $option['option_value']; ?></textarea>
        </div>

        <?php } ?>
        <?php if ($option['type'] == 'file') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <b><?php echo $option['name']; ?>:</b>
          <a id="button-option-<?php echo $option['product_option_id']; ?>" class="button"><span><?php echo $button_upload; ?></span></a>
          <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" />
        </div>

        <?php } ?>
        <?php if ($option['type'] == 'date') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <b><?php echo $option['name']; ?>:</b>
          <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="date" />
        </div>

        <?php } ?>
        <?php if ($option['type'] == 'datetime') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <b><?php echo $option['name']; ?>:</b>
          <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="datetime" />
        </div>
    
        <?php } ?>
        <?php if ($option['type'] == 'time') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <b><?php echo $option['name']; ?>:</b>
          <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="time" />
        </div>
     
        <?php } ?>
        <?php } ?>
      </div>
      <?php } ?>		
   </div>
   <div class="product-code">
	<div class="pcode"><?php echo $text_model; ?> <?php echo $model; ?></div>
	<div class="instock">
		<span><?=$quantity?> in stock</span>f
	</div>
   </div>
   <div class="product-addtocart">
      <div class="cart">
        <div class="quantity"><span class="label"><?php echo $text_qty; ?></span>
          <input type="text" name="quantity" size="2" value="<?php echo $minimum; ?>" />
          <input type="hidden" name="product_id" size="2" value="<?php echo $product_id; ?>" />          
		</div>
		<a id="button-cart" class="button button-cart"><span><?php echo $button_cart; ?></span></a>
        <?php if ($minimum > 1) { ?>
        <div class="minimum"><?php echo $text_minimum; ?></div>
        <?php } ?>
      </div>	
   </div>   
  </div>
	<div class="break-line">&nbsp;</div>
  <?php echo $content_bottom; ?></div>
<script type="text/javascript"><!--
$('.fancybox').fancybox({cyclic: true});
//--></script> 
<script type="text/javascript"><!--
$('.button-cart').bind('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/update',
		type: 'post',
		data: $('.product-info input[type=\'text\'], .product-info input[type=\'hidden\'], .product-info input[type=\'radio\']:checked, .product-info input[type=\'checkbox\']:checked, .product-info select, .product-info textarea'),
		dataType: 'json',
		success: function(json) {
			$('.success, .warning, .attention, information, .error').remove();
			
			if (json['error']) {
				if (json['error']['warning']) {
					$('#notification').html('<div class="warning" style="display: none;">' + json['error']['warning'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
				
					$('.warning').fadeIn('slow');
				}
				
				for (i in json['error']) {
					$('#option-' + i).after('<span class="error">' + json['error'][i] + '</span>');
				}
			}	 
						
			if (json['success']) {
				$('#notification').html('<div class="attention" style="display: none;">' + json['success'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
					
				$('.attention').fadeIn('slow');
					
				$('#cart_total').html(json['total']);
								
				var image = $('#image').offset();
				var cart  = $('#cart').offset();
	
				$('#image').before('<img src="' + $('#image').attr('src') + '" id="temp" style="position: absolute; top: ' + image.top + 'px; left: ' + image.left + 'px;" />');
	
				params = {
					top : cart.top + 'px',
					left : cart.left + 'px',
					opacity : 0.0,
					width : $('#cart').width(),  
					height : $('#cart').height()
				};		
	
				$('#temp').animate(params, 'slow', false, function () {
					$('#temp').remove();
				});		
			}	
		}
	});
});
//--></script>
<?php if ($options) { ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/ajaxupload.js"></script>
<?php foreach ($options as $option) { ?>
<?php if ($option['type'] == 'file') { ?>
<script type="text/javascript"><!--
new AjaxUpload('#button-option-<?php echo $option['product_option_id']; ?>', {
	action: 'index.php?route=product/product/upload',
	name: 'file',
	autoSubmit: true,
	responseType: 'json',
	onSubmit: function(file, extension) {
		$('#button-option-<?php echo $option['product_option_id']; ?>').after('<img src="catalog/view/theme/default/image/loading.gif" class="loading" style="padding-left: 5px;" />');
	},
	onComplete: function(file, json) {
		$('.error').remove();
		
		if (json.success) {
			alert(json.success);
			
			$('input[name=\'option[<?php echo $option['product_option_id']; ?>]\']').attr('value', json.file);
		}
		
		if (json.error) {
			$('#option-<?php echo $option['product_option_id']; ?>').after('<span class="error">' + json.error + '</span>');
		}
		
		$('.loading').remove();	
	}
});
//--></script>
<?php } ?>
<?php } ?>
<?php } ?>
<script type="text/javascript"><!--
$('#review .pagination a').live('click', function() {
	$('#review').slideUp('slow');
		
	$('#review').load(this.href);
	
	$('#review').slideDown('slow');
	
	return false;
});			

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').bind('click', function() {
	$.ajax({
		type: 'POST',
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		dataType: 'json',
		data: 'name=' + encodeURIComponent($('input[name=\'name\']').val()) + '&text=' + encodeURIComponent($('textarea[name=\'text\']').val()) + '&rating=' + encodeURIComponent($('input[name=\'rating\']:checked').val() ? $('input[name=\'rating\']:checked').val() : '') + '&captcha=' + encodeURIComponent($('input[name=\'captcha\']').val()),
		beforeSend: function() {
			$('.success, .warning').remove();
			$('#button-review').attr('disabled', true);
			$('#review-title').after('<div class="attention"><img src="catalog/view/theme/default/image/loading.gif" alt="" /> <?php echo $text_wait; ?></div>');
		},
		complete: function() {
			$('#button-review').attr('disabled', false);
			$('.attention').remove();
		},
		success: function(data) {
			if (data.error) {
				$('#review-title').after('<div class="warning">' + data.error + '</div>');
			}
			
			if (data.success) {
				$('#review-title').after('<div class="success">' + data.success + '</div>');
								
				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').attr('checked', '');
				$('input[name=\'captcha\']').val('');
			}
		}
	});
});
//--></script> 
<script type="text/javascript"><!--
$('#tabs a').tabs();
//--></script> 
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-timepicker-addon.js"></script> 
<script type="text/javascript"><!--
if ($.browser.msie && $.browser.version == 6) {
	$('.date, .datetime, .time').bgIframe();
}

$('.date').datepicker({dateFormat: 'yy-mm-dd'});
$('.datetime').datetimepicker({
	dateFormat: 'yy-mm-dd',
	timeFormat: 'h:m'
});
$('.time').timepicker({timeFormat: 'h:m'});
//--></script> 
<script type="text/javascript">
$(document).ready(function(){
$('ul.thumbs li').hide();
$('ul.thumbs li').each(function(i){
if(i<3) $('ul.thumbs li:eq('+i+')').show();
})


})


</script>
<?php echo $footer; ?>