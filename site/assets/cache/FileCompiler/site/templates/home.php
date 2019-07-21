<?php

/**
 * Home template
 *
 */

 include(\ProcessWire\wire('files')->compile(\ProcessWire\wire("config")->paths->root . "site/templates/includes/head.inc",array('includes'=>true,'namespace'=>true,'modules'=>true,'skipIfNamespace'=>true))); 
?>

<main>
    <?php
        $cache = $modules->get("MarkupCache");
        if(!$data = $cache->get("home_top3", 5000)) {
            $data .= '<section id="hero" class="hero" >
                        <div class="gem">';
            $data .= '<a href=""><img src="'.$td.'images/gem.png" alt="HEADHUNTER OF THE YEAR"></a>';
            $data .= '</div>';
            $data .= '<div class="container">
                            <div class="rows">
                                <div class="column col-5 col-md-9 col-sm-12">';
            $data .= '<h1>'.$page->header_title.'</h1>';
            $data .= '<hr class="short-divider">';
            $data .= $page->header_description;
            $data .= '<div class="button-container">';
            $data .= '<a href="#about" class="btn btn-primary" role="button">'. \ProcessWire\__("So finden wir Ihr Personal").'</a>';
            $data .= '</div> </div> </div> </div> </section>';
        }
        echo $data;
    ?>

    <?php include(\ProcessWire\wire('files')->compile(\ProcessWire\wire("config")->paths->root . "site/templates/includes/featured_partner.inc",array('includes'=>true,'namespace'=>true,'modules'=>true,'skipIfNamespace'=>true))); ?>

    <section class="job-classify-overview" id="leistungen">
        <h3 class="col-lg-4 col-md-6 col-sm-12"><?php echo \ProcessWire\__("Wir unterstützen Sie beim Aufbau digitaler Wettbewerbsvorteile"); ?></h3>
        <hr class="short-divider">
        <div class="container">
            <div class="classify-cards row">
            <?php
            foreach($page->job_classify_item as $item) :?>
                <div class="classify-card col-lg-3 col-md-6 col-sm-12">
                    <a href="#contact">
                        <div class="image-wrapper">
                            <div class="overlay"><h6><strong><?php echo $item->job_classify_title ?></strong></h6></div>
                            <img src="<?php echo $item->job_classify_image->url ?>" alt="">
                        </div>
                        <div class="content">
                            <strong><?php echo $item->job_classify_content ?></strong>
                        </div>
                    </a>
                </div>
            <?php endforeach ?>
            </div>
        </div>
    </section>

    <section class="fuer-bewerber-overview" id="fuer-bewerber">
        <div class="row">
            <div class="col-lg-6 col-md-11 col-sm-12 is-background"></div>
            <div class="col-lg-6 col-md-11 col-sm-12 is-content">
                <h2><?php echo $page->find_job_title ?></h2>
                <hr class="short-divider">
                <?php echo $page->find_job_description; ?>
                <div class="button-container">
                    <a href="<?php echo $lang_url; ?>/job/find-job" class="btn btn-primary" role="button"><?php echo \ProcessWire\__("Jobs anzeigen"); ?></a>
                    <a href="https://paltron.kandidatenportal.eu/register/615" class="btn btn-secondary" role="button"><?php echo \ProcessWire\__("Jetzt eintragen"); ?></a>
                </div>
            </div> 
        </div>
    </section>
    
    <section class="about" id="about">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-12 col-sm-12">
                    <h2><?php echo $page->about_title ?></h2>
                    <hr class="short-divider">
                    <?php echo $page->about_description; ?>
                    <div class="button-container">
                        <a href="#contact" class="btn btn-primary multiline" role="button"><?php echo htmlspecialchars_decode(\ProcessWire\__('In welchem Bereich benötigen<br> Sie Unterstützung?')); ?></a>
                    </div>
                </div>
                <div class="col-lg-6 col-md-12 col-sm-12">
                    <img src="<?php echo $page->about_image->url; ?>" alt="about background">    
                </div>                   
            </div>
        </div>
    </section>

    <?php include(\ProcessWire\wire('files')->compile(\ProcessWire\wire("config")->paths->root . "site/templates/includes/testimonial.inc",array('includes'=>true,'namespace'=>true,'modules'=>true,'skipIfNamespace'=>true))); ?>

    <?php
        if(!$data = $cache->get("besetzung", 5000)) {
            $data .= '<section class="besetzung" id="besetzung">
                        <div class="container grid-lg">
                            <div class="besetzung-carousel owl-carousel">';
            foreach($page->besetzung_block as $block) {
                $data .= '<div class="besetzung-item">';
                $data .= '<h2>'.$block->besetzung_title.'</h2>';
                $data .= '<hr class="short-divider">';
                $data .= '<p>'.$block->besetzung_description.'</p>';
                $data .= '<img src="'.$block->besetzung_image->url.'" alt="">';
                $data .= '</div>';
            }
            $data .= '</div> </div> </section>';
        }
        echo $data;
    ?>
<!-- 
    <section class="cta" id="cta">
        <div class="container">    
        </div>      
    </section> -->

    <?php
        if(!$data = $cache->get("faq", 5000)) {
            $data .= '<section class="faq" id="faq">
                        <div class="container grid-lg">';
            $data .= '<h2>'.$page->faq_title.'</h2>';
            $data .= '<hr class="short-divider">';
            $data .= $page->faq_description;

            $data .= '<dl class="accordion">';
            foreach($page->accordion_block as $block) {
                $data .= '<dt class="accordion-header"><ion-icon class="accordion-icon" name="add"></ion-icon>'.$block->accordion_header.'</dt>';
                $data .= '<dd class="accordion-panel">';
                $data .= '<div class="inner">';
                $data .= $block->accordion_panel;
                $data .= '</div> </dd>';
            }
            $data .= '</dl>';
            $data .= '<div class="button-container">';
            $data .= '<a href="#contact" class="btn btn-primary multiline" role="button">'.htmlspecialchars_decode(\ProcessWire\__('Lassen Sie uns wissen, wie wir Sie<br>unterstützen können.')).'</a>';
            $data .= '</div> </div> </section>';
        }
        echo $data;
    ?>

    <?php
        if(!$data = $cache->get("expertise", 15000)) {
            $data .= '<section class="expertise" id="expertise">
                        <div class="container">';
            $data .= '<h2>'.\ProcessWire\__('Unsere Expertise').'</h2>';
            $data .= '<div class="expertise-cards row">';

            foreach($page->expertise_cards as $card) {
                $data .= '<div class="col-lg-3 col-md-6 col-sm-12 expertise-card">';
                $data .= '<a href="'.$lang_url.$card->expertise_card_link.'">';
                $data .= '<div class="overlay"><h6>'.$card->title.'</h6></div>';
                $data .= '<img src="'.$card->expertise_card_image->url.'" alt="">'; 
                $data .= '</a> </div>';
            }
            $data .= '</div> </div> </section>';
        }
        echo $data;
    ?>
    
    <?php include(\ProcessWire\wire('files')->compile(\ProcessWire\wire("config")->paths->root . "site/templates/includes/contact.inc",array('includes'=>true,'namespace'=>true,'modules'=>true,'skipIfNamespace'=>true))); ?>

    <section class="offices" id="offices">
        <div class="columns col-gapless">
        <?php
            foreach($page->offices as $office) : ?>
            <div class="column col-2 col-xl-4 col-md-6 col-sm-12">
                <div class="office-card">
                    <div class="office-image">
                        <img src="<?php echo $office->office_image->url ?>" alt="">
                    </div>
                    <div class="office-address">
                        <h6><?php echo $office->office_city ?></h6>
                        <div>
                            <div>
                                <?php echo $office->office_address ?>
                            </div>
                            <span class="text-primary"><ion-icon name="ios-call"></ion-icon><?php echo $office->office_phone_number ?></span><br />
                            <span class="text-primary"><a href="mailto:<?php echo $office->office_email; ?>"><ion-icon name="ios-send"></ion-icon><?php echo $office->office_email; ?></a></span><br />
                        </div>
                    </div>
                </div>
            </div>
        <?php endforeach ?>
        </div>
    </section>  

</main>

<?php
 include(\ProcessWire\wire('files')->compile(\ProcessWire\wire("config")->paths->root . "site/templates/includes/foot.inc",array('includes'=>true,'namespace'=>true,'modules'=>true,'skipIfNamespace'=>true)));
