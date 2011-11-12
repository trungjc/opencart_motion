<div id="footer" class="bg_panel">
    <ul>
     <li><a href="<?php echo $home; ?>">Home</a></li>
   <li><a href="#">blog</a></li>
      <?php foreach ($informations as $information) { ?>
       <?php if($information['title']=='About Us'){ ?>  
  <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
 <?php  } ?>
       
      
      <?php } ?>
       <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
    </ul>

     

  <div class="copyright"><?php echo $powered; ?></div>
  
</div>
<!-- 
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->

<!-- 
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->
</div>
</body></html>