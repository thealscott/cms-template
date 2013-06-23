<?php  
defined('C5_EXECUTE') or die("Access Denied.");
$this->inc('elements/header.php', array('page_handle' => 'index')); ?>
	
	<div class="projects">
		<?php  
		$a = new Area('Main');
		$a->display($c);
		?>
	</div>
	
<?php  $this->inc('elements/footer.php'); ?>