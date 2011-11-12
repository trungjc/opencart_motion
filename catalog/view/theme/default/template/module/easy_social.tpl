<div class="box" id="easy-social">
  <div class="box-heading"><?php echo $heading_title; ?></div>
  <div class="box-content" style="text-align: center;">
	
	<?php if(!empty($twitterId)):?>
	<span>
		<a href="http://twitter.com/<?=$twitterId?>" target="_blank">
              <img src="image/easysocial/Twitter_48x48.png" alt="Facebook" />
		</a>
	</span>
	<?php endif;?>
	<?php if(!empty($facebookId)):?>
	<span>
		<a href="http://www.facebook.com/<?=$facebookId?>" target="_blank">
            <img src="image/easysocial/FaceBook_48x48.png" alt="TwitterFacebook"/>
		</a>
	</span>	
	<?php endif;?> 
  </div>
</div>
