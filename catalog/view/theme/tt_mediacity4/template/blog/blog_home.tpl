<div id="blog_home" class="menu-recent">
	 <div>
		  <div class="module-title">
			   <h2><?php 
		$title2 = explode(' ',$title,3); 
		for($i=0;$i<count($title2);$i++){ 
			$j=$i+1;
			echo $j>1 ? "<span class='word2'> ".$title2[$i]." </span>" : "<span> ".$title2[$i]." </span>";
		}
	?></h2>
		  </div>
		<?php
			$count = 0;
			$rows = $slide['rows'];
			if(!$rows) { $rows = 1;}
		?>
	 <?php if ($articles) { ?>
      <div class="row">
      <div class="articles-container">
        <?php foreach ($articles as $key=>$article) { ?>
		  <?php  if($count % $rows == 0 ) { echo '<div class="row_items">'; }  $count++; ?>
          <div class="articles-inner item-inner">
			   <div class="articles-image">
				<div class="date-added">
					<span><?php echo $article['date_added_d']; ?></span>
					<?php echo $article['date_added_m']; ?>
				</div>
				<img src="<?php echo $article['image']; ?>" alt="<?php echo $article['name']; ?>"/>
			</div>
			   <div class="aritcles-content">
			   <a class="articles-name" href="<?php echo $article['href']; ?>"><?php echo $article['name']; ?></a>
				<div class="articles-author">		
					<?php if($article['author'] != null && $article['author'] != ""): ?>					
						<?php echo $text_post_by.'<span>'.$article['author'].'</span>'; ?>
					<?php endif; ?>
				</div>
			   <div class="articles-intro"><?php echo $article['intro_text']; ?></div>
			   <a class="readmore" href="<?php echo $article['href']; ?>"><i class="fa fa-long-arrow-right"></i><?php echo $button_read_more; ?></a>
			   </div>
          </div>
		  <?php if($count % $rows == 0 || $count == count($articles)): ?>
	  		</div>
		 <?php endif; ?>
        <?php } ?>
      </div>
      </div>
      <?php } ?>
	  
      <?php if (!$articles) { ?>
		<p><?php echo $text_empty; ?></p>
      <?php } ?>
	  </div>
 <script>
 $(document).ready(function() { 
	  $(".articles-container").owlCarousel({
			autoPlay : <?php if($slide['auto']) { echo 'true' ;} else { echo 'false'; } ?>,
			items : <?php echo $slide['items'] ?>,
			itemsDesktop : [1199,3],
			itemsDesktopSmall : [991,2],
			itemsTablet: [767,2],
			itemsMobile : [480,1],
			slideSpeed : <?php echo $slide['speed']; ?>,
			paginationSpeed : <?php echo $slide['speed']; ?>,
			rewindSpeed : <?php echo $slide['speed']; ?>,
			navigation : <?php if($slide['navigation']) { echo 'true' ;} else { echo 'false'; } ?>,
			pagination : <?php if($slide['pagination']) { echo 'true' ;} else { echo 'false'; } ?>,
			stopOnHover : true,
			addClassActive: true,
			navigationText : ['<i class="fa fa-caret-left"></i>','<i class="fa fa-caret-right"></i>'],
	  });
 });
 </script>
</div>
