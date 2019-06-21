<?php

/**
 * Job overview template
 *
 */

include("./includes/head.inc"); 
?>
<main class="job-detail-page">
    <section class="job-detail-header" id="job-detail-header">
        <div class="job-title-overlay">
            <div class="container">
                <h1><?php echo $page->title ?></h1>
            </div>
        </div>
        <div class="job-detail-info">
            <div class="container">
                <div>Consectetur: <?php echo $page->job_consectetur ?></div>
                <div>Eiusmod: <?php echo $page->job_eiusmod ?></div>
                <div>Tempor: <?php echo $page->job_tempor ?></div>
            </div>
        </div>
    </section>
     
    <div class="container">
        <div class="row">
            <section class="col-lg-8 col-md-12 job-description">
                <div class="job-summary">
                    <?php echo $page->job_summary ?>
                </div>
                <div class="job-obligation">
                    <h1>Deine Aufgaben</h1>
                    <?php echo $page->job_obligation ?>
                </div>
                <div class="job-profit">
                    <h1>Dein Profit</h1>
                    <?php echo $page->job_profit ?>
                </div>
                <div class="job-benefit">
                    <h1>Deine Benefits</h1>
                    <?php echo $page->job_benefit ?>
                </div>
                <div class="job-action">
                    <a href="" class="btn btn-primary">
                        <ion-icon name="clipboard"></ion-icon>
                        <?php echo __("Jetzt bewerben"); ?>
                    </a>
                    <a href="" class="btn btn-black">
                        <ion-icon name="arrow-round-up"></ion-icon>
                        <?php echo __("Zurikk zur Obersicht"); ?>
                    </a>
                </div>
                <div class="note">
                    <p>Gemifl Art. 14 DSGVO informieten win tinter Ziffer 9 unserer Datenschutzerklanmg Ube, die Einzelheiten der dutch Korrespondenz mit potenziellen Kandidaten generierten Oaten: </p>
                    <a href="www.careerteam.de/datenschutz">www.careerteam.de/datenschutz</a>
                </div>
            </section>
            <section class="col-lg-4 col-md-12 job-contact-section">
                <div class="job-contact">
                    <div class="contact-info">
                        <h3><?php echo __("Ansprechpartner"); ?></h3>
                        <div class="contact-image">
                            <img src="<?php echo $td.'images/'.$page->contact_image ?>" alt="">
                        </div>
                        <div class="contact-name">
                            <h6><?php echo $page->contact_name ?></h6>
                        </div>
                        <div class="contact-description">
                            <?php echo $page->contact_description ?>
                        </div>
                        <div class="job-action">
                            <a href="" class="btn btn-primary">
                                <ion-icon name="clipboard"></ion-icon>
                                <?php echo __("Jetzt bewerben"); ?>
                            </a>
                        </div>
                    </div>
                    <div class="location">
                        <h3><?php echo __("Standort"); ?></h3>
                        <div class="map-maker">
                            <?php
                                $map = $modules->get('MarkupGoogleMap'); 
                                echo $map->render($page, 'location');  
                            ?>
                        </div>
                    </div>
                    <div class="share">
                        <h3><?php echo __("Share"); ?></h3>
                        <div class="job-action">
                            <a href="" class="btn btn-black">
                                <ion-icon name="mail"></ion-icon>
                                <?php echo __("Weiterempfehten"); ?>
                            </a>
                        </div>
                        <div class="social-links">
                            <a href="" class="btn btn-link"><ion-icon name="logo-facebook"></ion-icon></a>
                            <a href="" class="btn btn-link"><ion-icon name="logo-twitter"></ion-icon></a>
                            <a href="" class="btn btn-link"><ion-icon name="logo-googleplus"></ion-icon></a>
                            <a href="" class="btn btn-link"><ion-icon name="logo-linkedin"></ion-icon></a>
                            <a href="" class="btn btn-link"><ion-icon name="logo-instagram"></ion-icon></a>
                        </div>
                    </div>
                </div>
            </section>
        </div>
        <section class="about-careerteam">
            <div>
                <div class="description">
                    <?php echo $page->content_text ?>
                </div>
                <div class="rating">
                    <div><?php echo $page->rating; ?></div>
                    <img src="<?php echo $td.'images/rating.jpg' ?>" alt="" >
                </div>
            </div>
            <div class="careerteam-image">
                <img src="<?php echo $td.'images/'.$page->careerteam_image ?>" alt="">
            </div>
        </section>
    </div>
</main>
<?php
include("./includes/foot.inc");