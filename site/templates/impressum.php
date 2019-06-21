<?php

/**
 * Impressum template
 *
 */

include("./includes/head.inc"); 
?>
<main>
    <section class="impressum" id="impressum">
        <div class="page-container">
            <div class="header">
                <h1><?php echo $page->header_title ?></h1>
            </div>
            <div class="impressum-content">
                <?php echo $page->content_text ?>
            </div>
        </div>
    </section> 
</main>
<?php
include("./includes/foot.inc");