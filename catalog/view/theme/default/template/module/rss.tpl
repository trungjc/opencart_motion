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
echo "<div class='blogNews'>";
    for($i=0;$i <2;$i++) {
		$last="";
		if($i==1){
			$last= "last";
		}
		$item = $rs['items'][$i];
		echo "<div class='blogItem ".$last."'>";
		$date = new DateTime($item['pubDate']);
		echo "<span class='date'>".$date->format('l, F d, Y')."</span>";
		echo "<h2 class='title'>".$item['title']."</h2>";
		echo "<p class='contentBlog'>";
		echo substr(strip_tags(html_entity_decode($item['description'])),0,300) . "...";
		echo "<a class='readmore' href=\"$item[link]\" target=_blank>MORE</a>";    
		echo "</p>";			  
		echo "</div>";
	}
	echo "</div>";
}
else {
    echo "Error: It's not possible to reach RSS file...\n";
}
?> 
<!---end RSS-->
    </ul>
  
</div>
</div>
