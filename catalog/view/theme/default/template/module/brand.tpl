<div class="box">
  <div class="box-heading"><?php echo $heading_title; ?></div>
  <div class="box-content">
    <div class="box-brand">
      <ul class="brand-menu">
		<?php
		$active = "";
		$currentBrand = $_REQUEST['manufacturer_id'] ;		
		?>
        <?php foreach ($brands as $brand) { 
		if($currentBrand == $brand['brand_id']){
			$active = "active";
		}
		?>
        <li class="menu-item <?=$active?>">
          <a href="index.php?route=product/manufacturer/product&amp;manufacturer_id=<?php echo $brand['brand_id']; ?>"><?php echo $brand['name']; ?></a>
        </li>
        <?php 
			$active = "";
		} ?>
      </ul>
    </div>
  </div>
</div>
