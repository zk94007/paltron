<?php

/**
 * Job overview template
 *
 */

include("./includes/head.inc"); 
?>
<main>
    <section class="job-overview-header" id="job-overview-header">
        <div class="job-overview-title">
            <h1><?php echo $page->header_description; ?></h1>
        </div>
        <a href="<?php echo $lang_url; ?>/job/apply-job/" class="btn btn-primary" id="register_free"><?php echo __("JETZT KOSTENLOS REGISTRIEREN!"); ?></a>
    </section> 

    <section class="job-overview-classify" id="job-overview-classify">
        <div class="job-classify-title">
            <h2><?php echo __("Was uns auszeichnet"); ?></h2>
        </div>
        <div class="row job-classify-content">
            <div class="col-lg-3 col-md-6 col-sm-12 job-classify-item">
                <img src="<?php echo $td.'images/job-classify/job-classify-1.png' ?>" alt="classify" >
                <p><?php echo __("Exklusiver Zugang zu zahlreichen Führungs- und Expertenpositionen in der digitalen Wirtschaft."); ?></p>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 job-classify-item">
                <img src="<?php echo $td.'images/job-classify/job-classify-2.png' ?>" alt="classify" >
                <p><?php echo __("Der ‘Perfect Fit’ von personalisierten Jobangeboten zugeschnitten auf Dein Profil."); ?></p>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 job-classify-item">
                <img src="<?php echo $td.'images/job-classify/job-classify-3.png' ?>" alt="classify" >
                <p><?php echo __("Stellenangebote ab einem Jahresgehalt von 70.000 bis 300.000€."); ?></p>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 job-classify-item">
                <img src="<?php echo $td.'images/job-classify/job-classify-4.png' ?>" alt="classify" >
                <p><?php echo __("100% vertraulich und gemäß EU-Datenschutz-Grundverordnung."); ?></p>
            </div>
        </div>
    </section>

    <section class="attractive_partners" id="attractive_partners">
        <div class="attractive_partners-title">
            <h2><?php echo __("Attraktive Arbeitgeber"); ?></h2>
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
        <div class="job_note_item">
            <div class="job_note_title">
                <a class="btn btn-link" href="<?php echo $lang_url; ?>/job/find-job/">
                    <h3>
                        <ion-icon name='ios-arrow-dropright-circle'></ion-icon>
                        <?php echo __("Zu unserem Jobportal"); ?>
                    </h3>
                </a>
            </div>
            <div class="job-note-content">
                <?php echo __("In unserem Stellenportal findet Ihr täglich aktualisierte Jobangebote. Jetzt den Traumjob finden!"); ?>
            </div>
        </div>
        <div class="job_note_item">
            <div class="job_note_title">
                <a class="btn btn-link" href="<?php echo $lang_url; ?>/job/apply-job/">
                    <h3>
                        <ion-icon name='ios-arrow-dropright-circle'></ion-icon>
                        <?php echo __("Initiativbewerbung absenden"); ?>
                    </h3>
                </a>
            </div>
            <div class="job-note-content">
                <?php echo __("Keine passende Stelle gefunden? Dann registriere Dich jetzt mit einem Bewerberprofil initiativ in unserem Netzwerk."); ?>
            </div>
        </div>
    </section>
</main>
<?php
include("./includes/foot.inc");