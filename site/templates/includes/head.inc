<?php namespace ProcessWire;

/**
 * Demo site header include file (HTML5)
 *
 * Note that this file has nothing to do with ProcessWire. We just split our common 
 * header and footer markup into separate files (head.inc and foot.inc) like this, 
 * since it was common to all of our templates. 
 *
 */

    $homepage = $pages->get('/'); 
    $selectedLanguage = 'Deutsch'
?>

<!DOCTYPE html>
<html lang="<?php echo _x('de', 'HTML language code'); ?>">
    <head>

		<meta http-equiv="content-type" content="text/html; charset=utf-8" />

        <meta name="robots" content="index, follow">

        <meta http-equiv="x-ua-compatible" content="ie=edge">

		<title><?php echo $page->get("headline|title"); ?></title>

		<meta name="description" content="<?php echo $page->summary; ?>" />

		<meta name="generator" content="ProcessWire <?php echo $config->version; ?>" />

        <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">

        <script type='text/javascript' src='https://maps.googleapis.com/maps/api/js?sensor=false'></script>

        <script type='text/javascript' src="https://use.fontawesome.com/21a956e74f.js"></script>

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

        <?php 
            $td = $config->urls->templates; 
        ?>
		<link rel="stylesheet" type="text/css" href="<?php echo $td ?>css/styles.css" />
		<link rel="stylesheet" type="text/css" href="<?php echo $td ?>css/mystyles.css" />

		<!-- This website is powered by ProcessWire CMF/CMS - https://processwire.com -->

        <style>
            #hero {
                background: url(<?php echo $td.'images/'.$page->header_image.') center center no-repeat !important'?>;
                background-size: cover;
            }

            #fuer-bewerber.is-background {
                background: url(<?php echo $td.'images/'.$page->find_job_image.') center center no-repeat !important'?>;
                background-size:cover!important;
            }

            #cta {
                background: url(<?php echo $td.'images/'.$page->cta_image.') center center no-repeat !important'?>;
                background-size:cover!important;
            }

            #job-overview-header {
                background: url(<?php echo $td.'images/'.$page->header_image.') center center no-repeat !important'?>;
                background-size:cover!important;
                min-height: 10vh;
            }

            #job-detail-header {
                background: url(<?php echo $td.'images/'.$page->header_image.') center center no-repeat !important'?>;
                background-size:cover!important;
                min-height: 420px;
            }
            
            #about-us-header {
                background: url(<?php echo $td.'images/'.$page->header_image.') center center no-repeat !important'?>;
                background-size:cover!important;
                min-height: 420px;
            }

            #news-feed-header {
                background: url(<?php echo $td.'images/'.$page->header_image.') center center no-repeat !important'?>;
                background-size:cover!important;
                min-height: 420px;
            }

            #news-header {
                background: url(<?php echo $td.'images/'.$page->header_image.') center center no-repeat !important'?>;
                background-size:cover!important;
                min-height: 420px;
            }
            
            #job-find-header {
                background: url(<?php echo $td.'images/'.$page->header_image.') center center no-repeat !important'?>;
                background-size:cover!important;
                min-height: 210px;
            }
            
            #apply-job-header {
                background: url(<?php echo $td.'images/'.$page->header_image.') center center no-repeat !important'?>;
                background-size:cover!important;
                min-height: 420px;
            }
            
            #expertise-header {
                background: url(<?php echo $td.'images/'.$page->header_image.') center center no-repeat !important'?>;
                background-size:cover!important;
                min-height: 420px;
            }
        </style>
    </head>
    <body>
        <!--[if lte IE 10]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
        <![endif]-->

    <header class="primary-header">
        <div class="container">
            <div class="site-logo">
                <a href="/" title="Paltron"><img src="<?php echo $td ?>images/logo-paltron.png" title="Paltron"
                        alt="Logo Paltron"></a>
            </div>
            <div class="lang-switch-container">
                <button id="language-trigger" class="btn language-trigger">
                    <img src="<?php echo $td ?>images/flag/<?php echo $user->language->title ?>.svg" alt="<?php echo $user->language->title ?>"> <?php echo $user->language->title ?>
                </button>
                <ul id="languages" class="languages">
                <?php
                    foreach($languages as $language) {
                        if(!$page->viewable($language)) continue; // is page viewable in this language?
                        if($language->id == $user->language->id) {
                            echo "<li class='current'>";
                        } else {
                            echo "<li>";
                        }
                        $url = $page->localUrl($language); 
                        $hreflang = $homepage->getLanguageValue($language, 'name'); 
                        echo "<a hreflang='$hreflang' href='$url'>";
                        echo "<img src='";
                        echo $td."images/flag/".$language->title.".svg'";
                        echo "alt='Paltron - $language->title'>";
                        echo $language->title;
                        echo "</a></li>";
                    }
                ?>
                </ul>
            </div>
            <nav class="primary-nav-container" role="navigation">
                <ul class="primary-nav">
                    <li class="active">
                        <a href="/" title="Paltron | PALTRON">PALTRON</a>
                    </li>
                    <li>
                        <a href="#leistungen" title="Paltron | Leistungen">Leistungen</a>
                    </li>
                    <li class="has-subnav ">
                        <a href="#expertise" title="Paltron | Expertise">Expertise
                            <i class="fa fa-caret-down" aria-hidden="true"></i></a>
                        <ul class="subnav">
                            <li>
                                <a href="/expertise/blockchain" title="Blockchain"><?php echo __("Blockchain"); ?></a>
                            </li>

                            <li>
                                <a href="/expertise/cloud" title="Cloud"><?php echo __("Cloud"); ?></a>
                            </li>

                            <li>
                                <a href="/expertise/cyber-security" title="Cyber Security"><?php echo __("Cyber Security"); ?></a>
                            </li>

                            <li>
                                <a href="/expertise/data-science" title="Data Science"><?php echo __("Data Science"); ?></a>
                            </li>

                            <li>
                                <a href="/expertise/energy-tech" title="Energy Tech"><?php echo __("Energy-Tech"); ?></a>
                            </li>

                            <li>
                                <a href="/expertise/erp" title="ERP"><?php echo __("ERP"); ?></a>
                            </li>

                            <li>
                                <a href="/expertise/geospatial-tech" title="Geospatial-Tech"><?php echo __("Geospatial-Tech"); ?></a>
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
                    </li>
                    <li>
                        <a href="#testimonials" title="Paltron | Referenzen">Referenzen</a>
                    </li>
                    <li>
                        <a href="/about-us" title="Paltron | About Us">Über Uns</a>
                    </li>
                    <li class="has-subnav">
                        <a href="https://www.paltron.com/#jobs" title="Paltron | Jobs">Jobs
                            <i class="fa fa-caret-down" aria-hidden="true"></i></a>
                        <ul class="subnav">
                            <li>
                                <a href="/find-job" title="Job finden">Job finden</a>
                            </li>
                            <li>
                                <a href="/apply-job" title="Gefunden werden">Gefunden werden</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="/#contact" title="Paltron | Kontakt">Kontakt</a>
                    </li>
                </ul>
            </nav>
            <a href="#" id="nav-trigger"><span>Menu</span></a>
            <nav class="mobile-nav-container">
                <ul class="primary-nav mobile">
                    <li>
                        <a href="/" title="Paltron | PALTRON">PALTRON</a>
                    </li>
                    <li class="">
                        <a href="#leistungen" title="Paltron | Leistungen">Leistungen</a>
                    </li>
                    <li class="has-subnav">
                        <a href="#expertise" title="Paltron | Expertise">Expertise
                            <i class="fa fa-caret-down" aria-hidden="true"></i></a>
                        <ul class="subnav">
                            <li>
                                <a href="/expertise/blockchain" title="Blockchain"><?php echo __("Blockchain"); ?></a>
                            </li>

                            <li>
                                <a href="/expertise/cloud" title="Cloud"><?php echo __("Cloud"); ?></a>
                            </li>

                            <li>
                                <a href="/expertise/cyber-security" title="Cyber Security"><?php echo __("Cyber Security"); ?></a>
                            </li>

                            <li>
                                <a href="/expertise/data-science" title="Data Science"><?php echo __("Data Science"); ?></a>
                            </li>

                            <li>
                                <a href="/expertise/energy-tech" title="Energy Tech"><?php echo __("Energy-Tech"); ?></a>
                            </li>

                            <li>
                                <a href="/expertise/erp" title="ERP"><?php echo __("ERP"); ?></a>
                            </li>

                            <li>
                                <a href="/expertise/geospatial-tech" title="Geospatial-Tech"><?php echo __("Geospatial-Tech"); ?></a>
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
                    </li>
                    <li class="active">
                        <a href="#testimonials" title="Paltron | Referenzen">Referenzen</a>
                    </li>
                    <li >
                        <a href="/about-us" title="Paltron | Team">Team</a>
                    </li>
                    <li class="has-subnav">
                        <a href="https://www.paltron.com/#jobs" title="Paltron | Jobs">Jobs
                            <i class="fa fa-caret-down" aria-hidden="true"></i></a>
                        <ul class="subnav">
                            <li>
                                <a href="/find-job" title="Job finden">Job finden</a>
                            </li>
                            <li>
                                <a href="/apply-job" title="Gefunden werden">Gefunden werden</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="/#contact" title="Paltron | Kontakt">Kontakt</a>
                    </li>
                </ul>
            </nav>
        </div>
    </header>
