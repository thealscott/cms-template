<?php   defined('C5_EXECUTE') or die("Access Denied."); ?>
<!DOCTYPE html>
<html lang="<?php echo LANGUAGE?>">

<head>

<?php   Loader::element('header_required'); ?>

<!-- Site Header Content //-->
<link href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="<?php  echo $this->getThemePath(); ?>/css/screen.css" />


<script src="<?php  echo $this->getThemePath(); ?>/js/main.js"></script>
</head>

<body class="<?php echo $page_handle; ?>">
	<header class="navbar">
		<a class="btn logo" href="#"><i class="icon-logo"></i><h1 class="logo-title">Corin Wilkins</h1></a>	
		<h2 class="title">Title</h2>

		<nav>	
			<span class="tel">07896207312</span>
			<button class="btn phone"><i class="icon-phone"></i></button>
			<button class="btn contact"><i class="icon-contact"></i></button>
		</nav>
	</header>