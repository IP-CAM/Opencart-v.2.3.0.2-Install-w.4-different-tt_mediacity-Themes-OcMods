<div class="banner-ourbrands owl-style2">
<div class="container">
	<!-- <div class="module-title"> -->
		<!-- <h2><?php echo $heading_title; ?></h2> -->
	<!-- </div> -->
	<div id="banner<?php echo $module; ?>">
		<?php foreach ($banners as $banner) { ?>
			<div class="item">
				<?php if ($banner['link']) { ?>
					<a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" /></a>
				<?php } else { ?>
					<img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" />
				<?php } ?>
			</div>
		<?php } ?>
	</div>
</div>
</div>
<script type="text/javascript"><!--
var item_display = 6;
$('#banner<?php echo $module; ?>').owlCarousel({
	items: item_display,
	autoPlay: false,
	navigation: true,
	pagination: false,
	transitionStyle: 'fade',
	itemsDesktop : [1199,5],
	itemsDesktopSmall : [991,4],
	itemsTablet: [768,3],
	itemsMobile : [480,1],
	slideSpeed : 1000,
	addClassActive: true,
	navigationText : ['<i class="fa fa-caret-left"></i>','<i class="fa fa-caret-right"></i>'],
	afterInit : function(){
			//remove class active
			this.$owlItems.removeClass('first')
			this.$owlItems.removeClass('last')
			//add class first and last
			this.$owlItems .eq(this.currentItem).addClass('first');							
			this.$owlItems .eq(this.currentItem + (this.owl.visibleItems.length - 1)).addClass('last');
	},
	afterAction: function(el){
			//remove class active
			this.$owlItems.removeClass('first')
			this.$owlItems.removeClass('last')
			//add class first and last
			this.$owlItems .eq(this.currentItem).addClass('first');
			this.$owlItems .eq(this.currentItem + (this.owl.visibleItems.length - 1)).addClass('last');
	},	
});
	$('#banner<?php echo $module; ?> .owl-item').each(function(){
		$('#banner<?php echo $module; ?> .owl-item:first').addClass('current-item');
		$(this).click(function(){
			$('#banner<?php echo $module; ?> .owl-item').removeClass('current-item');
			$(this).addClass('current-item');
		});
	});
--></script>
