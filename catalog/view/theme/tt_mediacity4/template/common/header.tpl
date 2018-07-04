<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/jquery/jquery-ui.js" type="text/javascript"></script>
<link href="catalog/view/javascript/jquery/css/jquery-ui.css" rel="stylesheet" media="screen" />
<link href="catalog/view/theme/tt_mediacity4/stylesheet/opentheme/oclayerednavigation/css/oclayerednavigation.css" rel="stylesheet">
<script src="catalog/view/javascript/opentheme/oclayerednavigation/oclayerednavigation.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="catalog/view/javascript/simple-line-icons/css/simple-line-icons.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">
<script src="catalog/view/javascript/opentheme/hozmegamenu/custommenu.js" type="text/javascript"></script>
<script src="catalog/view/javascript/opentheme/hozmegamenu/mobile_menu.js" type="text/javascript"></script>
<script src="catalog/view/javascript/jquery.plugin.js" type="text/javascript"></script>
<script src="catalog/view/javascript/opentheme/ocslideshow/jquery.nivo.slider.js" type="text/javascript"></script>
<script src="catalog/view/javascript/opentheme/vermegamenu/ver_menu.js" type="text/javascript"></script>
<link href="catalog/view/theme/tt_mediacity4/stylesheet/opentheme/vermegamenu/css/ocvermegamenu.css" rel="stylesheet" />
<link href="catalog/view/theme/tt_mediacity4/stylesheet/opentheme/ocslideshow/ocslideshow.css" rel="stylesheet" />
<link href="catalog/view/theme/tt_mediacity4/stylesheet/opentheme/hozmegamenu/css/custommenu.css" rel="stylesheet" />
<link href="catalog/view/theme/tt_mediacity4/stylesheet/opentheme/css/animate.css" rel="stylesheet" />
<link href="catalog/view/theme/tt_mediacity4/stylesheet/opentheme/categorytabslider.css" rel="stylesheet" />
<link href="catalog/view/theme/tt_mediacity4/stylesheet/opentheme/css/owl.carousel.css" rel="stylesheet" />
<script src="catalog/view/javascript/jquery/elevatezoom/jquery.elevatezoom.js" type="text/javascript"></script>
<script src="catalog/view/javascript/jquery/owl-carousel/owl.carousel.js" type="text/javascript"></script>
<script src="catalog/view/javascript/opentheme/ocquickview/ocquickview.js" type="text/javascript"></script>
<link href="catalog/view/theme/tt_mediacity4/stylesheet/opentheme/ocquickview/css/ocquickview.css" rel="stylesheet">
<link href="catalog/view/theme/tt_mediacity4/stylesheet/stylesheet.css" rel="stylesheet">
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
</head>
<body class="<?php echo $class; ?> home4  group1">
<nav id="top">
  <div class="container">
    <ul class="list-unstyled pull-left">
		<li><?php echo $currency; ?></li>
		<li><?php echo $language; ?></li>
		<li class="text-wellcome"><?php echo $text_wellcome; ?></li>
	</ul>	
	<ul class="list-unstyled pull-right top-links">				
		<li>
			<div class="btn-group">
			<button class="btn btn-link dropdown-toggle" data-toggle="dropdown"><span><i class="fa fa-lock"></i> <?php echo $text_account; ?></span></button>
			<div class="dropdown-menu" id="top-links">
				<?php if($use_ajax_login): ?>
					<ul class="ul-account list-unstyled">
				<?php else: ?>
					<ul class="list-unstyled">
				<?php endif; ?>
				<?php if ($logged) { ?>
				<li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
				<li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
				<li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
				<li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>				
				<li>
					<?php if($use_ajax_login): ?>
						<a id="a-logout-link" href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a>
					<?php else: ?>
						<a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a>
					<?php endif; ?>
				</li>			
				<?php } else { ?>
				<li>
					<?php if($use_ajax_login): ?> 
						<a id="a-register-link" href="<?php echo $register; ?>"><?php echo $text_register; ?></a>
					<?php else: ?>
						<a href="<?php echo $register; ?>"><?php echo $text_register; ?></a> 
					<?php endif; ?>
				</li>
				<li>
					<?php if($use_ajax_login): ?> 
						<a id="a-login-link" href="<?php echo $login; ?>"><?php echo $text_login; ?></a>
					<?php else: ?>
						<a href="<?php echo $login; ?>"><?php echo $text_login; ?></a> 
					<?php endif; ?>
				</li>
				<?php } ?>
			  </ul>
			</div>
			</div>
		</li>
	</ul>
	<?php if(isset($block1)){ ?> 
		<div class="social-header-container pull-right">
			<?php echo $block1; ?>
		</div>
	<?php } ?>
  </div>
</nav>
<header>
  <div class="container">
    <div class="row">
      <div class="col-sm-3 col-xs-6 logo-container">
        <div id="logo">
          <?php if ($logo) { ?>
          <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
          <?php } else { ?>
          <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
          <?php } ?>
        </div>
      </div>
      <div class="col-md-7 col-sm-12 main-menu"><?php if(isset($block2)){ echo $block2; } ?></div>
      <div class="col-md-2 col-sm-4 pull-right text-phone"><i class="icon-earphones-alt"></i><?php echo $telephone; ?><span><?php echo $text_phone; ?></span></div>
    </div>
  </div>
</header>
<div class="bottom-header">
	<div class="container">
		<div class="row">
			<div class="col-lg-3 col-md-3 visible-lg visible-md vermagemenu-container">
				<?php if(isset($block3)){ echo $block3; } ?>
			</div>			
			<div class="col-md-7 col-sm-12 search-containers">
				<?php echo $search; ?>
			</div>			
			<div class="col-md-2 col-sm-3 cart-container pull-right">
				<a href="<?php echo $wishlist; ?>" id="wishlist-total" title=""><i class="fa fa-heart-o"></i><span><?php echo $text_wishlist; ?></span></a>
				<?php echo $cart; ?>
			</div>
		</div>
	</div>
</div>
