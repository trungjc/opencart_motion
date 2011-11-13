<div class="box">
  <!--<div class="box-heading"><?php echo $heading_title; ?></div>-->
  <div class="box-content">
    <div class="box-product box-product-latest">
      <?php foreach ($products as $product) { ?>
      <div class="box-item">
        <?php if ($product['thumb']) { ?>
        <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
        <?php } 
		else{ ?>
		<div class="image"><a href="<?php echo $product['href']; ?>"><img src="image/data/logo.png" alt="<?php echo $product['name']; ?>" /></a></div>
		<?php } ?>
		<div class="item-info">
			<div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
			<?php if ($product['price']) { ?>
			<div class="price">
			  <?php if (!$product['special']) { ?>
			  <?php echo $product['price']; ?>
			  <?php } else { ?>
			  <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
			  <?php } ?>
			</div>
			<?php } ?>
			<?php if ($product['rating']) { ?>
			<div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
			<?php } ?>
			<div class="cart"><a onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button"><span><?php echo $button_cart; ?></span></a></div>
		</div>
      </div>
      <?php } ?>
    </div>
  </div>
</div>
