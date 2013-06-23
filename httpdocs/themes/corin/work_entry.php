<?php  
defined('C5_EXECUTE') or die("Access Denied.");
$this->inc('elements/header.php'); ?>
	
	<div class="container">
		<h2><?php  echo $c->getCollectionName(); ?></h2>
		<div class="row">
			<div class="half">
				<?php  
				$a = new Area('Column 1');
				$a->display($c);
				?>
			</div>
			<!-- column 1 -->
			<div class="half">
				<?php  
				$a = new Area('Column 2');
				$a->display($c);
				?>
			</div>
			<!-- column 2 -->
		</div>
		<!-- box 1 -->
		<hr>
		<div class="row">
			<?php  
			$a = new Area('Box 2');
			$a->display($c);
			?>
		</div>
		<a targer="_blank" href="<?php  echo $c->getAttribute('external_url'); ?>" class="btn btn-block btn-large">Link <i class="icon-external-link"></i></a>


		<br>

		<?php 

		$nextPrevBlock = BlockType::getByHandle('next_previous');

		$nextPrevBlock->controller->nextLabel= 'Next';
		$nextPrevBlock->controller->previousLabel= 'Previous';
		$nextPrevBlock->controller->parentLabel='Up';
		$nextPrevBlock->controller->showArrows=1;
		$nextPrevBlock->controller->loopSequence=0;
		$nextPrevBlock->controller->excludeSystemPages=1;
		$nextPrevBlock->controller->orderBy='display_asc';

		$nextPrevBlock->render('view');

		?>
		
	</div>

	
	
	<!-- end full width content area -->
	
<?php  $this->inc('elements/footer.php'); ?>

