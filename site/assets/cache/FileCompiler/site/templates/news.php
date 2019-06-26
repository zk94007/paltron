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
                    <?php echo $page->header_title ?>
                </div>
                <div class="header-description">
                    <?php echo $page->header_description ?>
                </div>
            </div>
        </div>
    </section>
    <section class="news-post-info">
        <p><?php echo $page->author; ?></p>
        <p><?php echo $page->date; ?></p>
        <?php include(\ProcessWire\wire('files')->compile(\ProcessWire\wire("config")->paths->root . "site/templates/includes/social-links.inc",array('includes'=>true,'namespace'=>true,'modules'=>true,'skipIfNamespace'=>true)));  ?>
    </section>
    <section class="news-content">
        <div class="row">
            <div class="col-lg-8 col-md-12 news-content-description">
                <div>
                    <?php echo $page->content_text ?>
                </div>
                <div class="col-lg-6 col-md-9 col-sm-12 share-news">
                    <p><?php echo \ProcessWire\__("Wenn Ihnen unser Beitrag gefallen hat, freuen wir uns,wenn Sie diesen weiterempfehlen!"); ?></p>
                    <?php include(\ProcessWire\wire('files')->compile(\ProcessWire\wire("config")->paths->root . "site/templates/includes/social-links.inc",array('includes'=>true,'namespace'=>true,'modules'=>true,'skipIfNamespace'=>true)));  ?>
                    <div class="button-group">
                        <a class="col-lg-12 btn btn-primary" href="javascript: window.history.back();">
                            <?php echo \ProcessWire\__("Zuruck zur Ubersicht"); ?>
                            <ion-icon name="ios-arrow-forward"></ion-icon>
                        </a>
                    </div>
                </div>
            </diV>
            <div class="col-lg-3 col-md-12 contact-info">
                <h3><?php echo \ProcessWire\__("Ansprechpartner") ?></h3>
                <p>Daniel Stojanovic</p>
                <p>Partner</p>
                <div class="contact-method">
                    <p><ion-icon name="call"></ion-icon> +49 (0) 40 180 241 180</p>
                    <p><ion-icon name="mail"></ion-icon> contact@paltron.com</p>
                </div>
            </div>
        </div>
    </section>

    <section class="recent-news">
        <div class="news-list">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-6 col-sm-12 news-list-item">
                        <a href="#">
                            <div class="image">
                                <img src="<?php echo $td.'images/news/news3.jpg' ?>" alt="recent-news" >
                                <div class="overlay">
                                </div>
                                <span class="overlay-text">Read More</span>
                            </div>
                            <span class="date">17, Juli 2019</span>
                            <h6 class="title">Lorem ipsum dolor sit amet, consectetur adipiscing elit</h6>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                        </a>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-12 news-list-item">
                        <a href="#">
                            <div class="image">
                                <img src="<?php echo $td.'images/news/news2.jpg' ?>" alt="recent-news" >
                                <div class="overlay">
                                </div>
                                <span class="overlay-text">Read More</span>
                            </div>
                            <span class="date">17, Juli 2019</span>
                            <h6 class="title">Lorem ipsum dolor sit amet, consectetur adipiscing elit</h6>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                        </a>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-12 news-list-item">
                        <a href="#">
                            <div class="image">
                                <img src="<?php echo $td.'images/news/news3.jpg' ?>" alt="recent-news" >
                                <div class="overlay">
                                </div>
                                <span class="overlay-text">Read More</span>
                            </div>
                            <span class="date">17, Juli 2019</span>
                            <h6 class="title">Lorem ipsum dolor sit amet, consectetur adipiscing elit</h6>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                        </a>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-12 news-list-item">
                        <a href="#">
                            <div class="image">
                                <img src="<?php echo $td.'images/news/news2.jpg' ?>" alt="recent-news" >
                                <div class="overlay">
                                </div>
                                <span class="overlay-text">Read More</span>
                            </div>
                            <span class="date">17, Juli 2019</span>
                            <h6 class="title">Lorem ipsum dolor sit amet, consectetur adipiscing elit</h6>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>

</main>
<?php
 include(\ProcessWire\wire('files')->compile(\ProcessWire\wire("config")->paths->root . "site/templates/includes/foot.inc",array('includes'=>true,'namespace'=>true,'modules'=>true,'skipIfNamespace'=>true)));