<div class="box">
  <div class="box-heading"><?php echo $heading_title; ?></div>
  <div class="box-content">
    <div class="box-brand">
      <ul>
        <?php foreach ($brands as $brand) { ?>
        <li>
          <a href="index.php?route=product/manufacturer/product&amp;manufacturer_id=<?php echo $brand['brand_id']; ?>"><?php echo $brand['name']; ?></a>
        </li>
        <?php } ?>
      </ul>
    </div>
  </div>
</div>
