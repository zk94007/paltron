<?php

/**
 * Expertise template
 *
 */

 include(\ProcessWire\wire('files')->compile(\ProcessWire\wire("config")->paths->root . "site/templates/includes/head.inc",array('includes'=>true,'namespace'=>true,'modules'=>true,'skipIfNamespace'=>true))); 
?>
<main class="expertise-page">
    <section class="expertise-header" id="expertise-header">
        <div class="container">
            <div class="header-wrapper">
                <div class="header-description">
                    <?php echo $page->header_description ?>
                </div>
                <div class="button-group">
                    <a class="btn btn-primary" href="#contact-people"><?php echo \ProcessWire\__("Kontakt"); ?></a>
                    <a class="btn btn-primary" href="#learn-more"><?php echo $page->btn_text ?></a>
                </div>
            </div>
        </div>
    </section>
    <section class="advantage">
        <h2><?php echo \ProcessWire\__("Ihre Vorteile mit PALTRON"); ?></h2>
        <div class="row">
            <div class="col-lg-4 advantage-item">
                <div class="image">
                    <img src="<?php echo $td.'images/advantages/advantage1.jpg' ?>" alt="advantage">
                </div>
                <div class="description">
                    <p>Algorithmisierte Multi-Channel-Suche garantiert passgenaue Kand</p>
                </div>
            </div>
            <div class="col-lg-4 advantage-item">
                <div class="image">
                    <img src="<?php echo $td.'images/advantages/advantage2.jpg' ?>" alt="advantage">
                </div>
                <div class="description">
                    <p>Software gestützter Auswahlprozess mit zweistufigen Interviews</p>
                </div>
            </div>
            <div class="col-lg-4 advantage-item">
                <div class="image">
                    <img src="<?php echo $td.'images/advantages/advantage3.jpg' ?>" alt="advantage">
                </div>
                <div class="description">
                    <p>Netzwerk aus über 450.000 Digital- und IT-Experten</p>
                </div>
            </div>
            <div class="col-lg-4 advantage-item">
                <div class="image">
                    <img src="<?php echo $td.'images/advantages/advantage4.jpg' ?>" alt="advantage">
                </div>
                <div class="description">
                    <p>Einsatz von mehr als 60 Kanälen</p>
                </div>
            </div>
            <div class="col-lg-4 advantage-item">
                <div class="image">
                    <img src="<?php echo $td.'images/advantages/advantage5.jpg' ?>" alt="advantage">
                </div>
                <div class="description">
                    <p>Umfassende Marktanalysen in Echtzeit durch Maschine Learning</p>
                </div>
            </div>
            <div class="col-lg-4 advantage-item">
                <div class="image">
                    <img src="<?php echo $td.'images/advantages/advantage6.jpg' ?>" alt="advantage">
                </div>
                <div class="description">
                    <p>Passive Sourcing ergänzt unseren Executive Search Prozess</p>
                </div>
            </div>
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
                    <h2><?php echo \ProcessWire\__("Unsere aktuellen Stellenangebote"); ?></h2>
                    <div class="recommended-jobs"> 
                        <?php foreach($page->jobs as $job) : ?>
                            <div class="recommended-job"> 
                                <div class="job-info">
                                    <h6><?php echo $job->title ?></h6>
                                    <div class="button-group"> 
                                        <a href="" class="btn btn-primary-outline">
                                            <ion-icon name="pin"></ion-icon>
                                            <?php echo \ProcessWire\__("Rapperswil"); ?>
                                        </a>
                                        <a href="" class="btn btn-primary-outline">
                                            <ion-icon name="settings"></ion-icon>
                                            <?php echo \ProcessWire\__("Vollzeit"); ?>
                                        </a>
                                        <a href="" class="btn btn-primary-outline multiline">
                                            <ion-icon name="stats"></ion-icon>
                                            <?php echo \ProcessWire\__("Staff responsibility without P+L responsibility"); ?>
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
                <div class="learn-more" id="learn-more">
                    <h2><?php echo $page->learn_more_title ?></h2>
                    <div class="row">
                        <?php foreach($page->sub_expertise as $item) : ?>
                            <div class="col-lg-4 sub-expertise-item">
                                <a class="btn btn-grey" href="<?php echo $item->link_url ?>">
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
                    <h3><?php echo \ProcessWire\__("Expertise"); ?></h3>
                    <ul class="expertise-list">
                        <li>
                            <a href="/expertise/blockchain" title="Blockchain"><?php echo \ProcessWire\__("Blockchain"); ?></a>
                        </li>

                        <li>
                            <a href="/expertise/cloud" title="Cloud"><?php echo \ProcessWire\__("Cloud"); ?></a>
                        </li>

                        <li>
                            <a href="/expertise/cyber-security" title="Cyber Security"><?php echo \ProcessWire\__("Cyber Security"); ?></a>
                        </li>

                        <li>
                            <a href="/expertise/data-science" title="Data Science"><?php echo \ProcessWire\__("Data Science"); ?></a>
                        </li>

                        <li>
                            <a href="/expertise/energy-tech" title="Energy Tech"><?php echo \ProcessWire\__("Energy-Tech"); ?></a>
                        </li>

                        <li>
                            <a href="/expertise/erp" title="ERP"><?php echo \ProcessWire\__("ERP"); ?></a>
                        </li>

                        <li>
                            <a href="/expertise/geospatial-tech" title="Geospatial-Tech"><?php echo \ProcessWire\__("Geospatial-Tech"); ?></a>
                        </li>

                        <li>
                            <a href="/expertise/immersive-media" title="Immersive Media">Immersive Media</a>
                        </li>

                        <li>
                            <a href="/expertise/it-architektur" title="IT-Architektur">IT-Architektur</a>
                        </li>

                        <li>
                            <a href="/expertise/it-consulting" title="IT-Consulting">IT-Consulting</a>
                        </li>

                        <li>
                            <a href="/expertise/it-infrastruktur" title="IT-Infrastruktur">IT-Infrastruktur</a>
                        </li>

                        <li>
                            <a href="/expertise/it-leadership" title="IT-Leadership">IT-Leadership</a>
                        </li>
                        
                        <li>
                            <a href="/expertise/internet-of-things" title="Internet of Things">Internet of Things</a>
                        </li>
                        
                        <li>
                            <a href="/expertise/maschine-learning" title="Maschine Learning">Maschine Learning</a>
                        </li>
                        
                        <li>
                            <a href="/expertise/mobile-internet" title="Mobile Internet">Mobile Internet</a>
                        </li>
                        
                        <li>
                            <a href="/expertise/mobile-technologies" title="Mobile Technologies">Mobile Technologies</a>
                        </li>
                        
                        <li>
                            <a href="/expertise/robots" title="Robots">Robots</a>
                        </li>
                    </ul>
                </div>
                <div class="testimonials">
                    <h3><?php echo \ProcessWire\__("Testimonials"); ?></h3>
                    <div class="testimonial">
                        <div class="image">
                            <img src="<?php echo $td.'images/josef.jpg' ?>" alt="josef" >
                            <div class="title">
                                <span><?php echo \ProcessWire\__("Sed ut Perspiciatis"); ?></span>
                                <p><?php echo \ProcessWire\__("Doloremque Laudantium"); ?></p>
                                <img class="logo-image" src="<?php echo $td.'images/logo-paltron.svg' ?>" alt="logo" >
                            </div>
                        </div>
                        <div class="description">
                            <p>
                                <?php echo \ProcessWire\__("Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium  oloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. "); ?>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="news-feed">
                    <h3><?php echo \ProcessWire\__("News Feed"); ?></h3>
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
        <div class="contact-people" id="contact-people">
            <h2><?php echo \ProcessWire\__("Ihre Ansprechpartner"); ?></h2>
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
            <h2><?php echo \ProcessWire\__("Kontakt"); ?></h2>
            <p><?php echo \ProcessWire\__("Sie würden gerne in Kontakt mit uns treten? Füllen Sie einfach das Kontaktformular aus oder schreiben uns eine E-Mail. Wir melden uns innerhalb der nächsten Stunde bei Ihnen! Alternativ rufen Sie gerne an oder starten einen Chat mit unseren Mitarbeitern!"); ?></p>
            <div class="contact-method">
                <div class="email">
                    <span class="red"><ion-icon name="mail"></ion-icon>E-Mail: </span>
                    <span>contact@paltron.com</span>
                </div>
                <div class="telephone">
                    <span class="red"><ion-icon name="call"></ion-icon><?php echo \ProcessWire\__("Telefon: "); ?></span>
                    <span>+49 (0) 40 180 241 180</span>
                </div>
            </div>
            <div class="contact-form">
                <h3><?php echo \ProcessWire\__("Kontaktformular"); ?></h3>
                <?php 
                $captcha = $modules->get("MarkupGoogleRecaptcha");
                $out = '';
                if ($captcha->verifyResponse() === true) {
                    $out .= "Thank you!";
                } 
                else {
                    $out .= '<form id="contact-form">';
                    $out .= '<div class="form-group">';
                    $out .= '<input type="text" name="first-given-name" id="first-given-name" placeholder="'. \ProcessWire\__("Vorname") .'" >';
                    $out .= '</div>';

                    $out .= '<div class="form-group">';
                    $out .= '<input type="text" name="surname" id="surname" placeholder="'. \ProcessWire\__("Nachname") .'" >';
                    $out .= '</div>';
                    
                    $out .= '<div class="form-group">';
                    $out .= '<input type="text" name="telephone-number" id="telephone-number" placeholder="'. \ProcessWire\__("Telefonnummer") .'" >';
                    $out .= '</div>';
                    
                    $out .= '<div class="form-group">';
                    $out .= '<input type="text" name="email" id="email" placeholder="'. \ProcessWire\__("E-mail") .'" >';
                    $out .= '</div>';
                    
                    $out .= '<div class="form-group">';
                    $out .= '<textarea name="message" id="message" placeholder="'. \ProcessWire\__("Nachricht") .'" ></textarea>';
                    $out .= '</div>';

                    $out .= '<div class="confirm-group">';
                    $out .= '<div class="terms-conditions">';
                    $out .= '<input type="checkbox" name="terms-conditions" >';
                    $out .= '<label for="terms-conditions">'. \ProcessWire\__("Ich erkläre mich mit den AGBs von PALTRON einverstanden.").'</label>';
                    $out .= '</div>';

                    $out .= '<div class="recaptcha">';
                    $out .= '<label>CAPTCHA</label>';
                    $out .= $captcha->render();
                    $out .= '</div>';

                    $out .= '</div>';

                    $out .= '<div class="button-group">';
                    $out .= '<input class="btn btn-primary" type="submit" name="send_form" value="'. \ProcessWire\__('Absenden').'">';
                    $out .= '</div>';
                    $out .= '</form>';
                    $out .= $captcha->getScript();
                }
                echo $out;
                ?>
            </div>
        </div>
    </section>
</main>
<?php
 include(\ProcessWire\wire('files')->compile(\ProcessWire\wire("config")->paths->root . "site/templates/includes/foot.inc",array('includes'=>true,'namespace'=>true,'modules'=>true,'skipIfNamespace'=>true)));