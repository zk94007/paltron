<?php

/**
 * Impressum template
 *
 */

 include(\ProcessWire\wire('files')->compile(\ProcessWire\wire("config")->paths->root . "site/templates/includes/head.inc",array('includes'=>true,'namespace'=>true,'modules'=>true,'skipIfNamespace'=>true))); 
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
 include(\ProcessWire\wire('files')->compile(\ProcessWire\wire("config")->paths->root . "site/templates/includes/foot.inc",array('includes'=>true,'namespace'=>true,'modules'=>true,'skipIfNamespace'=>true)));