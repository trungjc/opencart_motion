<?php echo $header; ?><?php echo $content_top; ?>
<div class="bg_panel socialbox"><?php echo $content_social; ?></div>
<div class="line-space"></div><?php echo $column_left; ?><?php echo $column_right; ?>
<<<<<<< HEAD
<div id="content" class="information">
  <!--<div class="breadcrumb">
=======
<div id="content " class="information">
  <div class="breadcrumb">
>>>>>>> dca295357408e5c03e12a7b4b4a5656c5ddc2590
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>-->
  <h1 class="embedfont"><?php echo $heading_title; ?></h1>
  <?php echo $description; ?>
  <!--<div class="buttons">
    <div class="right"><a href="<?php echo $continue; ?>" class="button"><span><?php echo $button_continue; ?></span></a></div>
  </div>-->
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>