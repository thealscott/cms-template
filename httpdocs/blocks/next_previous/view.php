<?php 
defined('C5_EXECUTE') or die("Access Denied.");
$ih = Loader::helper('image');
?>

<nav class="main-nav">
  <?php   if( strlen($previousLinkText) > 0){ ?>
    <div class="ccm-next-previous-previouslink">
      <?php   if( is_object($previousCollection) ){ ?>
        <a title= "<?php  echo $previousLinkText ?>" href="<?php  echo Loader::helper('navigation')->getLinkToCollection($previousCollection)?>">
          <div class="btn-arrow">
              <div class="arrow-left">
                <i class="icon-arrow-left"></i>
              </div>
          </div>
          
        </a>
      <?php   } else { ?>
        &nbsp;
      <?php   } ?>
    </div>
  <?php  } ?>


  <?php   if( strlen($nextLinkText) > 0){ ?>
    <div class="ccm-next-previous-nextlink">
      <?php   if( is_object($nextCollection) ){ ?>
        <a title="<?php  echo $nextLinkText ?>" href="<?php  echo Loader::helper('navigation')->getLinkToCollection($nextCollection)?>">
          <div class="btn-arrow">
            <div class="arrow-right">
              <i class="icon-arrow-right"></i>
            </div>  
          </div>
        </a>
      <?php   } else { ?>
        &nbsp;
      <?php   } ?>
    </div>
  <?php  } ?>
</nav>
    