<div class="box">
  <div class="box-heading"><?php echo $heading_title; ?></div>
  <div class="box-content">
  <!--RSS-->
	<?php
// include lastRSS
include "lastRSS.php";
// Create lastRSS object
$rss = new lastRSS;

// Set cache dir and cache time limit (1200 seconds)
// (don't forget to chmod cahce dir to 777 to allow writing)
$rss->cache_dir = 'temp';
$rss->cache_time = 1200; 



// Try to load and parse RSS file
if ($rs = $rss->get($code)){
    foreach($rs['items'] as $item) {
    echo "<div class='blogNews'>";
    	echo "<span>".$item['pubDate']."</span>";
        echo "<h2>".$item['title']."</h2>";
      
        print $item['description'];
        echo "<a href=\"$item[link]\" target=_blank>ReadeMore</a>";
      
        echo "</div>";
        }
   
    }
else {
    echo "Error: It's not possible to reach RSS file...\n";
}
?> 
<!---end RSS-->
    </ul>
  
</div>
</div>
