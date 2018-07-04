<?php if(isset($block4)){ echo $block4; }?>
<footer>
  <div class="top-footer">
  <div class="container">
    <div class="row">
		<?php if(isset($block5)){ ?>
			<div class="col-sm-3">
				<?php echo $block5; ?>
			</div>
		<?php } ?>
			  <?php if ($informations) { ?>
			  <div class="col-sm-3">
				<h5 class="footer-title"><?php echo $text_information; ?></h5>
				<ul class="list-unstyled">
				  <?php foreach ($informations as $information) { ?>
				  <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
				  <?php } ?>
				  <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
				  <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
				  <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
				  <!-- <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li> -->
				</ul>
			  </div>
			  <?php } ?>			  
			  <div class="col-sm-3">
				<h5 class="footer-title"><?php echo $text_extra; ?></h5>
				<ul class="list-unstyled">
				  <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
				  <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
				  <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
				  <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
				  <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
				  <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
				  <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
				</ul>
			  </div>
			<?php if(isset($block6)){ ?>
				<div class="col-sm-3">
					<?php echo $block6; ?>
				</div>
			<?php } ?>
	  </div>
    </div>
    </div>
	<div class="container">
			<div class="bottom-footer">
				<p class="copyright-text2"><?php echo $text_powered2; ?></p>
				<div class="payment-img">
					<a href="#"><img src="image/payment/payment.png" alt="payment-methood"/></a>
				</div>
				<p class="copyright-text"><?php echo $powered; ?></p>
			</div>
	</div>
</footer>	
<div id="back-top"><i class="fa fa-angle-up"></i></div>
<script type="text/javascript">
$(document).ready(function(){
	// hide #back-top first
	$("#back-top").hide();
	// fade in #back-top
	$(function () {
		$(window).scroll(function () {
			if ($(this).scrollTop() > 300) {
				$('#back-top').fadeIn();
			} else {
				$('#back-top').fadeOut();
			}
		});
		// scroll body to 0px on click
		$('#back-top').click(function () {
			$('body,html').animate({scrollTop: 0}, 800);
			return false;
		});
	});
});
</script>
<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->

<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->

</body></html>