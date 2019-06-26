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
                    <a class="btn btn-primary" href=""><?php echo __("Kontakt"); ?></a>
                    <a class="btn btn-primary" href=""><?php echo __("<?php echo $page->btn_text ?>"); ?></a>
                </div>
            </div>
        </div>
    </section>
    <section class="advantage">
        <h2><?php echo __("Ihre Vorteile mit PALTRON"); ?></h2>
        <div class="row">
            <?php foreach($page->advantages as $item) : ?>
            <div class="col-lg-4 advantage-item">
                <div class="image">
                    <img src="<?php echo $td.'images/advantages/'.$item->images ?>" alt="advantage">
                </div>
                <div class="description">
                    <?php echo $item->content_text; ?>
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
                <?php if(isset($page->jobs)) : ?>
                <div class="current-vacancies">
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
                                    <a href="<?php echo $job->link_url ?>" class="btn btn-link ">
                                        <ion-icon name="ios-arrow-dropright-circle"></ion-icon>
                                    </a>
                                </div>
                            </div>
                        <?php endforeach ?>
                    </div>
                </div>
                <?php endif ?>
                <?php if(isset($page->learn_more_title)) : ?>
                <div class="learn-more">
                    <h2><?php echo $page->learn_more_title ?></h2>
                    <div class="row">
                        <?php foreach($page->sub_expertise as $item) : ?>
                            <div class="col-lg-4 sub-expertise-item">
                                <a class="btn btn-primary" href="<?php echo $item->link_url ?>">
                                    <?php echo $item->title ?>
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
                        <li>
                            <a class="expertise-list-link" href=""><?php echo __("Blockchain"); ?></a>
                        </li>
                        <li>
                            <a class="expertise-list-link" href=""><?php echo __("Cloud"); ?></a>
                        </li>
                        <li>
                            <a class="expertise-list-link" href=""><?php echo __("Cyber Security"); ?></a>
                        </li>
                        <li>
                            <a class="expertise-list-link" href=""><?php echo __("Data Science"); ?></a>
                        </li>
                        <li>
                            <a class="expertise-list-link" href=""><?php echo __("Energy-Tech"); ?></a>
                        </li>
                        <li>
                            <a class="expertise-list-link" href=""><?php echo __("ERP"); ?></a>
                        </li>
                        <li>
                            <a class="expertise-list-link" href=""><?php echo __("Geospatial-Tech"); ?></a>
                        </li>
                        <li>
                            <a class="expertise-list-link" href=""><?php echo __("Immersive Media"); ?></a>
                        </li>
                        <li>
                            <a class="expertise-list-link" href=""><?php echo __("IT-Architektur"); ?></a>
                        </li>
                        <li>
                            <a class="expertise-list-link" href=""><?php echo __("IT-Consulting"); ?></a>
                        </li>
                        <li>
                            <a class="expertise-list-link" href=""><?php echo __("IT-Infrastruktur"); ?></a>
                        </li>
                        <li>
                            <a class="expertise-list-link" href=""><?php echo __("IT-Leadership"); ?></a>
                        </li>
                        <li>
                            <a class="expertise-list-link" href=""><?php echo __("Internet of Things"); ?></a>
                        </li>
                        <li>
                            <a class="expertise-list-link" href=""><?php echo __("Maschine Learning"); ?></a>
                        </li>
                        <li>
                            <a class="expertise-list-link" href=""><?php echo __("Mobile Internet"); ?></a>
                        </li>
                        <li>
                            <a class="expertise-list-link" href=""><?php echo __("Mobile Technologies"); ?></a>
                        </li>
                        <li>
                            <a class="expertise-list-link" href=""><?php echo __("Robots"); ?></a>
                        </li>
                    </ul>
                </div>
                <div class="testimonials">
                    <h3><?php echo __("Testimonials"); ?></h3>
                    <div class="testimonial">
                        <div class="image">
                            <img src="<?php echo $td.'images/josef.jpg' ?>" alt="josef" >
                            <div class="title">
                                <span><?php echo __("Sed ut Perspiciatis"); ?></span>
                                <p><?php echo __("Doloremque Laudantium"); ?></p>
                                <img class="logo-image" src="<?php echo $td.'images/logo-paltron.svg' ?>" alt="logo" >
                            </div>
                        </div>
                        <div class="description">
                            <p>
                                <?php echo __("Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium  oloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. "); ?>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="news-feed">
                    <h3><?php echo __("News Feed"); ?></h3>
                    <div class="news-feed-list">
                        <div class="news-feed-item">
                            <img src="<?php echo $td.'images/news/news1.jpg' ?>" alt="news-feed" >
                            <div class="description">
                                <p>
                                    Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem 
                                    <a href="">[...]</a>
                                </p>
                            </div>
                        </div>
                        <div class="news-feed-item">
                            <img src="<?php echo $td.'images/news/news2.jpg' ?>" alt="news-feed" >
                            <div class="description">
                                <p>
                                    magni dolores eos qui ratione voluptatem sequi nesciunt. 
                                    <a href="">[...]</a>
                                </p>
                            </div>
                        </div>
                        <div class="news-feed-item">
                            <img src="<?php echo $td.'images/news/news3.jpg' ?>" alt="news-feed" >
                            <div class="description">
                                <p>
                                    Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, 
                                    <a href="">[...]</a>
                                </p>
                            </div>
                        </div>
                        <div class="news-feed-item">
                            <img src="<?php echo $td.'images/news/news1.jpg' ?>" alt="news-feed" >
                            <div class="description">
                                <p>
                                    Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem  
                                    <a href="">[...]</a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="contact-people">
            <h2><?php echo __("Ihre Ansprechpartner"); ?></h2>
            <div class="row">
                <div class="col-lg-4 contact-person">
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
                    <img src="<?php echo $td.'images/josef2.jpg' ?>" alt="Josef Gunthner" >
                    <h3>Günthner</h3>
                    <p>Managing Director</p>
                    <p>contact@paltron.com</p>
                    <p>+49 (0) 40 180 241 180</p>
                </div>
            </div>
        </div>
        <div class="contact">
            <h2><?php echo __("Kontakt"); ?></h2>
            <p><?php echo __("Sie würden gerne in Kontakt mit uns treten? Füllen Sie einfach das Kontaktformular aus oder schreiben uns eine E-Mail. Wir melden uns innerhalb der nächsten Stunde bei Ihnen! Alternativ rufen Sie gerne an oder starten einen Chat mit unseren Mitarbeitern!"); ?></p>
            <div class="contact-method">
                <div class="email">
                    <span class="red"><ion-icon name="mail"></ion-icon>E-Mail: </span>
                    <span>contact@paltron.com</span>
                </div>
                <div class="telephone">
                    <span class="red"><ion-icon name="call"></ion-icon><?php echo __("Telefon: "); ?></span>
                    <span>+49 (0) 40 180 241 180</span>
                </div>
            </div>
            <div class="contact-form">
                <h3><?php echo __("Kontaktformular"); ?></h3>
                <form id="contact-form">
                    <div class="form-group">
                        <input type="text" name="first-given-name" id="first-given-name" placeholder="<?php echo __("Vorname"); ?>" >
                    </div>
                    <div class="form-group">
                        <input type="text" name="surname" id="surname" placeholder="<?php echo __("Nachname"); ?>" >
                    </div>
                    <div class="form-group">
                        <input type="text" name="telephone-number" id="telephone-number" placeholder="<?php echo __("Telefonnummer"); ?>" >
                    </div>
                    <div class="form-group">
                        <input type="text" name="email" id="email" placeholder="<?php echo __("E-mail"); ?>" >
                    </div>
                    <div class="form-group">
                        <textarea name="message" id="message" placeholder="<?php echo __("Nachricht"); ?>" ></textarea>
                    </div>
                    <div class="confirm-group">
                        <div class="terms-conditions">
                            <input type="checkbox" name="terms-conditions" >
                            <label for="terms-conditions"><?php echo __("Ich erkläre mich mit den AGBs von PALTRON einverstanden."); ?></label>
                        </div>
                        <div class="recaptcha"></div>
                    </div>
                    <div class="button-group">
                        <input class="btn btn-primary" type="button" name="send_form" value="<?php echo __('Absenden'); ?>">
                    </div>
                </form>
            </div>
        </div>
    </section>
</main>
<?php
include("./includes/foot.inc");