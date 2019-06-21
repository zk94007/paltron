<?php

/**
 * Job overview template
 *
 */

 include(\ProcessWire\wire('files')->compile(\ProcessWire\wire("config")->paths->root . "site/templates/includes/head.inc",array('includes'=>true,'namespace'=>true,'modules'=>true,'skipIfNamespace'=>true))); 
?>
<main class="about-us">
    <section class="about-us-header" id="about-us-header">
        <div class="container">
            <div class="header-title">
                <?php echo $page->header_title ?>
            </div>
            <div class="header-description">
                <?php echo $page->header_description ?>
            </div>
        </div>
    </section>
    <section class="aboutus-note" id="aboutus-note">
        <div class="container">
            <div class="aboutus-notes-carousel owl-carousel">
                <?php foreach($page->about_notes as $note) : ?>
                    <div>
                    <?php echo $note->content_text ?>
</div>
                <?php endforeach ?>
            </div> 
        </div> 
    </section>
</main>
<?php
 include(\ProcessWire\wire('files')->compile(\ProcessWire\wire("config")->paths->root . "site/templates/includes/foot.inc",array('includes'=>true,'namespace'=>true,'modules'=>true,'skipIfNamespace'=>true)));