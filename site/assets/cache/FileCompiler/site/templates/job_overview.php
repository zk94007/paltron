<?php

/**
 * Job overview template
 *
 */

 include(\ProcessWire\wire('files')->compile(\ProcessWire\wire("config")->paths->root . "site/templates/includes/head.inc",array('includes'=>true,'namespace'=>true,'modules'=>true,'skipIfNamespace'=>true))); 
?>
<main>
    <section class="job-overview-header" id="job-overview-header">
        <div class="job-overview-title">
            <?php echo $page->header_description ?>
        </div>
        <a href="#" class="btn btn-primary" id="register_free">JETZT KOSTENLOS REGISTRIEREN!</a>
    </section> 

    <section class="job-overview-classify" id="job-overview-classify">
        <div class="job-classify-title">
            <h2>Was uns auszeichnet</h2>
        </div>
        <div class="row job-classify-content">
            <?php foreach($page->job_classify_item as $item) : ?>
                <div class="col-lg-3 col-md-6 col-sm-12 job-classify-item">
                    <img src="<?php echo $td.'images/job-classify/'.$item->job_classify_image ?>" alt="" >
                    <?php echo $item->job_classify_content ?>
                </div>
            <?php endforeach ?>
        </div>
    </section>

    <section class="attractive_partners" id="attractive_partners">
        <div class="attractive_partners-title">
            <h2>Attraktive auszeichnet</h2>
        </div>
        <div class="container grid-xl">
            <div class="attractive-partners-carousel owl-carousel">
            <?php foreach($page->partners_image as $image) : ?>
                <img src="<?php echo $image->url ?>" alt="">
            <?php endforeach ?>
            </div>
        </div>
    </section>

    <section class="job_overview_note" id="job_overview_note">
        <?php foreach($page->job_note as $item) : ?>
            <div class="job_note_item">
                <div class="job_note_title">
                <h3>
                    <ion-icon name='ios-arrow-dropright-circle'></ion-icon>
                    <?php echo $item->job_note_title ?>
                </h3>
                </div>
                <div class="job-note-content">
                    <?php echo $item->job_note_description ?>
                </div>
            </div>
        <?php endforeach ?>
    </section>
</main>
<?php
 include(\ProcessWire\wire('files')->compile(\ProcessWire\wire("config")->paths->root . "site/templates/includes/foot.inc",array('includes'=>true,'namespace'=>true,'modules'=>true,'skipIfNamespace'=>true)));