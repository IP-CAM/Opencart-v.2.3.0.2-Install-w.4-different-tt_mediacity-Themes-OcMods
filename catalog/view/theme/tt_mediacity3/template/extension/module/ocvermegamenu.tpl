<div class="vermagemenu">
    <div class="content-vermagemenu"> 
        <h2><?php echo $heading_title;?><i class="fa fa-angle-down"></i></h2>
        <div class="navleft-container">
            <div id="pt_vmegamenu" class="pt_vmegamenu">
                <?php echo $vermegamenu ?> 
            </div>	
        </div>
    </div>
</div>
<script type="text/javascript">
//<![CDATA[
	var CUSTOMMENU_POPUP_EFFECT = <?php echo $effect; ?>;
	var CUSTOMMENU_POPUP_TOP_OFFSET = <?php echo $top_offset ; ?>

	$('.vermagemenu h2').click(function () {
		$( ".navleft-container" ).toggle("fast");
	});
//]]>
</script>