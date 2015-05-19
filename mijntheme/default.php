<!DOCTYPE html>
<html>
<head>
	<?php Loader::element('header_required'); ?> 
	<title>Default template</title>
	<link rel="stylesheet" type="text/css" href="<?=$this->getThemePath()?>/css/mijntheme.css">

</head>

<body>

<div class=" <?php=$c->getPageWrapperClass()?> ">

		<div class="bovenkant">
			<?php $bovenkant = new Area("Bovenkant"); $bovenkant->display($c)?>
		</div>

		<div class="midden">
			<?php $midden = new Area("Midden"); $midden->display($c)?>
		</div>

		<div class="onderkant">
			<p> bla bla  <a href="#">bla bla  bla</a> bla  bla bla  <strong>bla bla</strong>  bla bla  bla bla </p>
		</div>
</div>
<?php Loader::element('footer_required') ?>
</body>

</html>