<?php

/**
 * Job overview template
 *
 */

 include(\ProcessWire\wire('files')->compile(\ProcessWire\wire("config")->paths->root . "site/templates/includes/head.inc",array('includes'=>true,'namespace'=>true,'modules'=>true,'skipIfNamespace'=>true))); 
?>
<main class="news-page">
    <section class="news-header" id="news-header">
        <div class="container">
            <div class="col-lg-4 col-md-6 col-sm-12 header-wrapper">
                <div class="header-title">
                    <h1><?php echo $page->header_title; ?></h1>
                </div>
                <div class="header-description">
                    <?php echo $page->header_description ?>
                </div>
            </div>
        </div>
    </section>
    <section class="news-post-info">
        <p>
            <?php echo  $page->author->last()->title; ?>
        </p>
        <p><?php echo $page->date; ?></p>
        <?php // include(\ProcessWire\wire('files')->compile(\ProcessWire\wire("config")->paths->root . "site/templates/includes/social-links.inc",array('includes'=>true,'namespace'=>true,'modules'=>true,'skipIfNamespace'=>true)));  ?>
        <div class="social-links">
            <div class="sharethis-inline-share-buttons"></div>
        </div>
    </section>
    <section class="news-content">
        <div class="row">
            <div class="col-lg-8 col-md-12 news-content-description">
                <div>
                    <?php echo $page->content_text ?>
                </div>
                <div class="col-lg-6 col-md-9 col-sm-12 share-news">
                    <p><?php echo \ProcessWire\__("Wenn Ihnen unser Beitrag gefallen hat, freuen wir uns,wenn Sie diesen weiterempfehlen!"); ?></p>
                    <?php // include(\ProcessWire\wire('files')->compile(\ProcessWire\wire("config")->paths->root . "site/templates/includes/social-links.inc",array('includes'=>true,'namespace'=>true,'modules'=>true,'skipIfNamespace'=>true)));  ?>
                    <div class="sharethis-inline-share-buttons"></div>
                    <div class="button-group">
                        <a class="col-lg-12 btn btn-primary" href="javascript: window.history.back();">
                            <?php echo \ProcessWire\__("Zurück zur Übersicht"); ?>
                            <ion-icon name="ios-arrow-forward"></ion-icon>
                        </a>
                    </div>
                </div>
            </diV>
            <div class="col-lg-3 col-md-12 contact-info">
                <h3><?php echo \ProcessWire\__("Ansprechpartner") ?></h3>
                <p>Josef Günthner</p>
                <p>Co-founder & Managing Director</p>
                <div class="contact-method">
                    <p><ion-icon name="call"></ion-icon> +49 (0) 40 180 241 180</p>
                    <p><ion-icon name="mail"></ion-icon> contact@paltron.com</p>
                </div>
            </div>
        </div>
    </section>

    <?php include(\ProcessWire\wire('files')->compile(\ProcessWire\wire("config")->paths->root . "site/templates/includes/recent_news.inc",array('includes'=>true,'namespace'=>true,'modules'=>true,'skipIfNamespace'=>true)));  ?>
</main>
<?php
 include(\ProcessWire\wire('files')->compile(\ProcessWire\wire("config")->paths->root . "site/templates/includes/foot.inc",array('includes'=>true,'namespace'=>true,'modules'=>true,'skipIfNamespace'=>true)));