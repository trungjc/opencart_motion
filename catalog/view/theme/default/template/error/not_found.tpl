<?php echo $header; ?><?php echo $content_top; ?>
<div class="bg_panel socialbox"><?php echo $content_social; ?></div>
<div class="line-space"></div><?php echo $column_left; ?><?php echo $column_right; ?>

  <div id="content">
    <div class="breadcrumb">
      <?php foreach ($breadcrumbs as $breadcrumb) { ?>
      <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
      <?php } ?>
    </div>
    <h1><?php echo $heading_title; ?></h1>
    <div class="content"><?php echo $text_error; ?></div>
    <div class="buttons">
      <div class="right"><a href="<?php echo $continue; ?>" class="button"><span><?php echo $button_continue; ?></span></a></div>
    </div>
    <?php echo $content_bottom; ?></div>
</div>
<?php echo $footer; ?>