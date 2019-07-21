<?php

/**
 * Expertise template
 *
 */

include("./includes/head.inc"); 
?>
<main class="expertise-page">
    <section class="expertise-header" id="expertise-header">
        <div class="container">
            <div class="header-wrapper">
                <div class="header-description">
                    <?php echo $page->header_description ?>
                </div>
                <div class="button-group">
                    <a class="btn btn-primary" href="#contact-people"><?php echo __("Kontakt"); ?></a>
                    <?php if( !(isset($page->jobs) && $page->jobs->count() == 0) ) : ?>
                    <a class="btn btn-primary" href="#learn-more"><?php echo $page->btn_text ?></a>
                    <?php endif ?>
                </div>
            </div>
        </div>
    </section>
    <section class="advantage">
        <h2><?php echo __("Ihre Vorteile mit PALTRON"); ?></h2>
        <div class="row">
        <?php foreach($page->advantages as $item) : ?>
            <div class="col-lg-4 col-md-6 col-sm-12 advantage-item">
                <div class="image">
                    <img src="<?php echo $item->image->url; ?>" alt="advantage">
                </div>
                <div class="description">
                    <p><?php echo $item->advantage_text; ?></p>
                </div>
            </div>
        <?php endforeach ?>
        </div>
    </section>
    <section class="main-content">
        <div class="wrapper">
            <div class="left-wrapper">
                <div class="description">
                    <?php echo $page->expertise_description ?>
                </div>
                <?php if(isset($page->jobs) && $page->jobs->count()) : ?>
                <div class="current-vacancies" id="learn-more">
                    <h2><?php echo __("Unsere aktuellen Stellenangebote"); ?></h2>
                    <div class="recommended-jobs"> 
                        <?php foreach($page->jobs as $job) : ?>
                            <div class="recommended-job"> 
                                <div class="job-info">
                                    <h6><?php echo $job->title ?></h6>
                                    <div class="button-group"> 
                                        <a href="" class="btn btn-primary-outline">
                                            <ion-icon name="pin"></ion-icon>
                                            <?php echo __("Rapperswil"); ?>
                                        </a>
                                        <a href="" class="btn btn-primary-outline">
                                            <ion-icon name="settings"></ion-icon>
                                            <?php echo __("Vollzeit"); ?>
                                        </a>
                                        <a href="" class="btn btn-primary-outline multiline">
                                            <ion-icon name="stats"></ion-icon>
                                            <?php echo __("Staff responsibility without P+L responsibility"); ?>
                                        </a>
                                    </div>
                                </div>
                                <div class="go-to-job">
                                    <a href="<?php echo $lang_url.$job->link_url ?>" class="btn btn-link ">
                                        <ion-icon name="ios-arrow-dropright-circle"></ion-icon>
                                    </a>
                                </div>
                            </div>
                        <?php endforeach ?>
                    </div>
                </div>
                <?php endif ?>
                <?php $expertise_l2 = $pages->find("parent=$page->url, template=expertise-level-2"); ?>
                <?php if(isset($page->learn_more_title) && $page->learn_more_title != '' &&  $expertise_l2->count() ) : ?>
                <div class="learn-more" id="learn-more">
                    <h2><?php echo $page->learn_more_title ?></h2>
                    <div class="row">
                        <?php foreach($expertise_l2 as $item) : ?>
                            <div class="col-lg-4 col-md-6 col-sm-12 sub-expertise-item">
                                <a class="btn btn-grey" href="<?php echo $lang_url.$item->url ?>">
                                    <?php 
                                        $item->title = str_replace('PALTRON | ', '', $item->title);
                                        echo $item->title; 
                                    ?>
                                </a>
                            </div>
                        <?php endforeach ?>
                    </div>
                </div>
                <?php endif ?>
                <div class="content">
                    <?php echo $page->content_text ?>
                </div>
            </div>
            <div class="right-wrapper">
                <div class="expertise">
                    <h3><?php echo __("Expertise"); ?></h3>
                    <ul class="expertise-list">
                        <!-- expertise level1 list here -->
                        <?php
                            $expertise_l1_list = $pages->find("parent=/expertise/, template=expertise-level-1");
                            foreach($expertise_l1_list as $expertise_l1) {
                                $expertise_l1->title = str_replace('PALTRON | ', '', $expertise_l1->title);
                                echo '<li>';
                                echo '<a href="'.$expertise_l1->url.'" title="'.$expertise_l1->title.'">'.$expertise_l1->title.'</a>';
                                echo '</li>';
                            }
                        ?>
                    </ul>
                </div>
                <div class="news-feed">
                    <h3><?php echo __("News Feed"); ?></h3>
                    <!-- four recent news -->
                    <?php
                        $news_feed = $pages->get("/news-feed/");
                        $news_list = $pages->find("parent=/news-feed/, template=news, sort=-date, limit=4, title|header_title|header_description|content_text|news_summary%=$q");
                    ?>
                    <div class="news-feed-list">
                        <?php foreach($news_list as $news) : ?>
                        <div class="news-feed-item">
                            <a href="<?php echo $lang_url ;?>/news-feed/<?php echo $news->name; ?>">
                                <img src="<?php echo $news->list_image->url; ?>" alt="<?php echo $news->title ?>" >
                                <div class="description">
                                    <p>
                                        <?php echo $news->news_summary; ?>
                                    </p>
                                </div>
                            </a>
                        </div>
                        <?php endforeach ?>
                    </div>
                </div>
            </div>
        </div>
        <div class="contact-people" id="contact-people">
            <h2><?php echo __("Ihre Ansprechpartner"); ?></h2>
            <div class="row">
            <?php foreach($page->contact_people as $item) : ?>
                <div class="col-lg-4 contact-person">
                    <img src="<?php echo $item->contact_image->url; ?>" alt="<?php echo $item->contact_name; ?>" >
                    <h3><?php echo $item->contact_name; ?></h3>
                    <p><?php echo $item->contact_role; ?></p>
                    <p><?php echo $item->contact_email; ?></p>
                    <p>+49 (0) 40 180 241 180</p>
                </div>
            <?php endforeach ?>
                <!-- <div class="col-lg-4 contact-person">
                    <img src="<?php echo $td.'images/josef.jpg' ?>" alt="Josef Gunthner" >
                    <h3>Josef Günthner</h3>
                    <p>Co-founder & Managing Director</p>
                    <p>contact@paltron.com</p>
                    <p>+49 (0) 40 180 241 180</p>
                </div>
                <div class="col-lg-4 contact-person">
                    <img src="<?php echo $td.'images/daniel.jpg' ?>" alt="Daniel Wernicke" >
                    <h3>Daniel Wernicke</h3>
                    <p>Managing Director</p>
                    <p>contact@paltron.com</p>
                    <p>+49 (0) 40 180 241 180</p>
                </div>
                <div class="col-lg-4 contact-person">
                    <img src="<?php echo $td.'images/verena.jpg' ?>" alt="Verena Netscher" >
                    <h3>Verena Netscher</h3>
                    <p>Director</p>
                    <p>contact@paltron.com</p>
                    <p>+49 (0) 40 180 241 180</p>
                </div> -->
            </div>
        </div>
        <div class="contact" id="contact">
            <h2><?php echo __("Kontakt"); ?></h2>
            <p><?php echo __("Sie würden gerne in Kontakt mit uns treten? Füllen Sie einfach das Kontaktformular aus oder schreiben uns eine E-Mail. Wir melden uns innerhalb der nächsten Stunde bei Ihnen! Alternativ rufen Sie gerne an oder starten einen Chat mit unseren Mitarbeitern!"); ?></p>
            <div class="contact-method">
                <div class="email">
                    <span class="red"><ion-icon name="mail"></ion-icon>E-Mail: </span>
                    <span><a href="mailto:contact@paltron.com">contact@paltron.com</a></span>
                </div>
                <div class="telephone">
                    <span class="red"><ion-icon name="call"></ion-icon><?php echo __("Telefon: "); ?></span>
                    <span>+49 (0) 40 180 241 180</span>
                </div>
            </div>
            <div class="contact-form">
                <h3><?php echo __("Kontaktformular"); ?></h3>
                <?php 
                    // $captcha = $modules->get("MarkupGoogleRecaptcha");
                    // $out = '';
                    // if ($captcha->verifyResponse() === true) {
                    //     $out .= 'Thank you!';
                    // } 
                    // else {
                        $out .= '<form id="contact-form2" method="post" action="" data-ga-event="form-submit">';
                        $out .= '<div id="alert" role="alert"></div>';
                        $out .= '<div class="form-group">';
                        $out .= '<input type="text" name="first_given_name" id="first_given_name" placeholder="'. __("Vorname") .'" required >';
                        $out .= '</div>';

                        $out .= '<div class="form-group">';
                        $out .= '<input type="text" name="surname" id="surname" placeholder="'. __("Nachname") .'" required >';
                        $out .= '</div>';
                        
                        $out .= '<div class="form-group">';
                        $out .= '<input type="number" name="telephone_number" id="telephone_number" placeholder="'. __("Telefonnummer") .'" required >';
                        $out .= '</div>';
                        
                        $out .= '<div class="form-group">';
                        $out .= '<input type="email" name="email" id="email" placeholder="'. __("E-mail") .'" required >';
                        $out .= '</div>';
                        
                        $out .= '<div class="form-group">';
                        $out .= '<textarea name="message" id="message" placeholder="'. __("Nachricht") .'" ></textarea>';
                        $out .= '</div>';

                        $out .= '<div class="confirm-group">';
                        $out .= '<div class="terms-conditions">';
                        $out .= '<input type="checkbox" name="terms-conditions" required >';
                        $out .= '<label for="terms-conditions">'. __("Ich erkläre mich mit den AGBs von PALTRON einverstanden.").'</label>';
                        $out .= '</div>';

                        // $out .= '<div class="recaptcha">';
                        // $out .= '<label>CAPTCHA</label>';
                        // $out .= $captcha->render();
                        // $out .= '</div>';

                        $out .= '</div>';

                        $out .= '<div class="button-group">';
                        $out .= '<input class="btn btn-primary" type="submit" name="send_form" value="'. __('Absenden').'">';
                        $out .= '</div>';
                        $out .= '</form>';
                    //     $out .= $captcha->getScript();
                    // }
                    echo $out;
                ?>
            </div>
        </div>
    </section>
</main>
<?php
include("./includes/foot.inc");