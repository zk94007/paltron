<?php

/**
 * Job overview template
 *
 */

 include(\ProcessWire\wire('files')->compile(\ProcessWire\wire("config")->paths->root . "site/templates/includes/head.inc",array('includes'=>true,'namespace'=>true,'modules'=>true,'skipIfNamespace'=>true))); 
?>
<main class="news-feed-page">
    <section class="news-feed-header" id="news-feed-header">
        <div class="container">
            <div class="col-lg-4 col-md-8 col-sm-12 header-wrapper">
                <div class="header-title">
                    <h1><?php echo $page->header_title ?></h1>
                </div>
                <hr class="short-divider">
                <div class="header-description">
                    <?php echo $page->header_description ?>
                </div>
            </div>
        </div>
    </section>
    <section class="news-tabs">
        <div class="container">
            <div class="news-tab-wrapper">
                <?php foreach($page->news_tabs as $tab) : ?>
                    <div class="news-tab-item">
                        <a href="<?php echo $tab->link_url ?>">
                            <img src="<?php echo $td.'images/news/tabs/'.$tab->images ?>" alt="<?php echo $tab->title ?>" >
                        </a>
                    </div>
                <?php endforeach ?>
            </div>
        </div>
    </section>
    <section class="search-box">
        <div class="container">
            <input type="text">
            <img src="<?php echo $td.'images/search.svg' ?>" alt="search">
        </div>
    </section>
    <section class="news-list">
        <div class="container">
            <div class="row">
                <?php foreach($page->news_list as $news) : ?>
                    <div class="col-lg-3 col-md-6 col-sm-12 news-list-item">
                        <a href="<?php echo $news->link_url ?>">
                            <img src="<?php echo $td.'images/news/'.$news->images ?>" alt="<?php echo $news->title ?>" >
                            <span class="date"><?php echo $news->date ?></span>
                            <h6 class="title"><?php echo $news->title ?></h6>
                            <?php echo $news->content_text ?>
                        </a>
                    </div>
                <?php endforeach ?>
            </div>
            <div class="button-group">
                <a class="col-lg-4 col-md-12 btn btn-primary">
                    <?php echo \ProcessWire\__("Mehr anzeigen"); ?>
                    <ion-icon name="ios-arrow-forward"></ion-icon>
                </a>
            </div>
        </div>
    </section>
    
    <section class="contact" id="contact">
        <div class="container">
            <div class="contact-wrapper">
                <h1><?php echo \ProcessWire\__('Bei welchem Thema können wir Sie am besten unterstützen?'); ?></h1>
                <hr class="short-divider">
                <form action="" class="contact-form">
                    <div class="form-group">
                        <label class="form-label" for="name">Name</label>
                        <input class="form-input" id="name" name="name" type="text">
                    </div>
                    <div class="form-group">
                        <label class="form-label" for="email">Email</label>
                        <input class="form-input" id="email" name="email" type="email">
                    </div>
                    <div class="form-group">
                        <label class="form-label" for="phone"><?php echo \ProcessWire\__('Telefon'); ?></label>
                        <input class="form-input" id="phone" name="phone" type="text">
                    </div>
                    <div class="form-group">
                        <label class="form-label float-left" for="message"><?php echo \ProcessWire\__('Ihre Nachricht'); ?></label><span class="optional">optional</span>
                        <textarea class="form-input" name="message" id="message"></textarea>
                    </div>
                    <div class="button-group">
                        <input class="btn btn-primary" type="button" name="send_form" value="<?php echo \ProcessWire\__('Absenden'); ?>">
                    </div>
                </form>
            </div>
            <div class="contact-person">
                <img class="contact-person-image" src="<?php echo $config->urls->templates?>images/gf-josef-guenthner.jpg" alt="">
                <div class="info">
                    <strong><?php echo \ProcessWire\__('Ihr Ansprechpartner'); ?></strong>
                    <p>Josef Günthner</p>
                    <p>
                        <?php echo \ProcessWire\__('Geschäftsführer'); ?><br />
                        <span><ion-icon name="call"></ion-icon> 040 180 241 180</span><br />
                        <span>partners@paltron.com</span><br />
                    </p>
                </div>
            </div>
        </div>
    </section>  

</main>
<?php
 include(\ProcessWire\wire('files')->compile(\ProcessWire\wire("config")->paths->root . "site/templates/includes/foot.inc",array('includes'=>true,'namespace'=>true,'modules'=>true,'skipIfNamespace'=>true)));