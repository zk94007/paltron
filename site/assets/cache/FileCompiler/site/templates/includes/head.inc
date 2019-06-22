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
<html lang="de">
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
        </style>


    </head>
    <body>
        <!--[if lte IE 10]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
        <![endif]-->

    <header class="primary-header">
        <div class="container">
            <div class="site-logo">
                <a href="/" title="Paltron"><img src="<?php echo $td ?>images/logo-paltron.svg" title="Paltron"
                        alt="Logo Paltron"></a>
            </div>
            <div class="lang-switch-container">
                <button id="language-trigger" class="btn language-trigger">
                    <img src="<?php echo $td ?>images/flag/flag-de.svg" alt="deutsch"> Deutsch
                </button>
                <ul id="languages" class="languages">
                    <li>
                        <a href="/" title="Paltron - Deutsch" class="external active">
                            <img src="<?php echo $td ?>images/flag/flag-de.svg" alt="Paltron - Deutsch">Deutsch
                        </a>
                    </li>
                    <li>
                        <a href="/en/" title="Paltron - English" class="external">
                            <img src="<?php echo $td ?>images/flag/flag-en.svg" alt="Paltron - English">English
                        </a>
                    </li>
                </ul>
            </div>
            <nav class="primary-nav-container" role="navigation">
                <ul class="primary-nav">
                    <li class="active">
                        <a href="https://www.paltron.com/#home" title="Paltron | PALTRON"
                            onclick="dataLayer.push({'event': 'virtualPageView', 'virtualPageTitle': 'PALTRON', 'virtualPageUrl': '#home' });">PALTRON
                        </a>
                    </li>
                    <li>
                        <a href="https://www.paltron.com/#leistungen" title="Paltron | Leistungen"
                            onclick="dataLayer.push({'event': 'virtualPageView', 'virtualPageTitle': 'Leistungen', 'virtualPageUrl': '#leistungen' });">Leistungen
                        </a>
                    </li>
                    <li class="has-subnav ">
                        <a href="https://www.paltron.com/#expertise" title="Paltron | Expertise"
                            onclick="dataLayer.push({'event': 'virtualPageView', 'virtualPageTitle': 'Expertise', 'virtualPageUrl': '#expertise' });">Expertise
                            <i class="fa fa-caret-down" aria-hidden="true"></i></a>
                        <ul class="subnav">
                            <li>
                                <a href="/expertise/big-data-&amp;-business-intelligence"
                                    title="Big Data &amp; Business Intelligence">Big Data &amp; Business Intelligence</a>
                            </li>

                            <li>
                                <a href="/expertise/iot-&amp;-cloud" title="IoT &amp; Cloud">IoT &amp; Cloud</a>
                            </li>

                            <li>
                                <a href="/expertise/cyber-&amp;-it-security" title="Cyber- &amp; IT-Security">Cyber- &amp;
                                    IT-Security</a>
                            </li>

                            <li>
                                <a href="/expertise/erp-&amp;-sap" title="ERP &amp; SAP">ERP &amp; SAP</a>
                            </li>

                            <li>
                                <a href="/expertise/data-science-&amp;-analytics" title="Data Science &amp; Analytics">Data
                                    Science &amp; Analytics</a>
                            </li>

                            <li>
                                <a href="/expertise/ai-&amp;-machine-learning" title="AI &amp; Machine Learning">AI &amp;
                                    Machine Learning</a>
                            </li>

                            <li>
                                <a href="/expertise/it-architecture-&amp;-infrastructure"
                                    title="IT-Architecture &amp; Infrastructure">IT-Architecture &amp; Infrastructure</a>
                            </li>

                            <li>
                                <a href="/expertise/it-consulting-&amp;-sales" title="IT-Consulting &amp; Sales">IT-Consulting
                                    &amp; Sales</a>
                            </li>

                            <li>
                                <a href="/expertise/it-qualitaetsmanagement"
                                    title="IT-Qualitätsmanagement">IT-Qualitätsmanagement</a>
                            </li>

                            <li>
                                <a href="/expertise/it-projectmanager" title="IT-Projektmanager">IT-Projektmanager</a>
                            </li>

                            <li>
                                <a href="/expertise/it-leadership-governance"
                                    title="IT-Leadership &amp; IT-Governance">IT-Leadership &amp; IT-Governance</a>
                            </li>

                            <li>
                                <a href="/expertise/blockchain-technologies" title="Blockchain Technologies">Blockchain
                                    Technologies</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="https://www.paltron.com/#referenzen" title="Paltron | Referenzen"
                            onclick="dataLayer.push({'event': 'virtualPageView', 'virtualPageTitle': 'Referenzen', 'virtualPageUrl': '#referenzen' });">Referenzen
                        </a>
                    </li>
                    <li>
                        <a href="https://www.paltron.com/#team" title="Paltron | Team"
                            onclick="dataLayer.push({'event': 'virtualPageView', 'virtualPageTitle': 'Team', 'virtualPageUrl': '#team' });">Team
                        </a>
                    </li>
                    <li class="has-subnav">
                        <a href="https://www.paltron.com/#jobs" title="Paltron | Jobs"
                            onclick="dataLayer.push({'event': 'virtualPageView', 'virtualPageTitle': 'Jobs', 'virtualPageUrl': '#jobs' });">Jobs
                            <i class="fa fa-caret-down" aria-hidden="true"></i></a>
                        <ul class="subnav">
                            <li>
                                <a href="/jobs/gefunden-werden" title="Gefunden werden">Gefunden werden</a>
                            </li>

                            <li>
                                <a href="/jobs/job-finden" title="Job finden">Job finden</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="https://www.paltron.com/#kontakt" title="Paltron | Kontakt"
                            onclick="dataLayer.push({'event': 'virtualPageView', 'virtualPageTitle': 'Kontakt', 'virtualPageUrl': '#kontakt' });">Kontakt
                        </a>
                    </li>
                </ul>
            </nav>
            <a href="#" id="nav-trigger"><span>Menu</span></a>
            <nav class="mobile-nav-container">
                <ul class="primary-nav mobile">
                    <li>
                        <a href="https://www.paltron.com/#home" title="Paltron | PALTRON"
                            onclick="dataLayer.push({'event': 'virtualPageView', 'virtualPageTitle': 'PALTRON', 'virtualPageUrl': '#home' });">PALTRON
                        </a>
                    </li>
                    <li class="">
                        <a href="https://www.paltron.com/#leistungen" title="Paltron | Leistungen"
                            onclick="dataLayer.push({'event': 'virtualPageView', 'virtualPageTitle': 'Leistungen', 'virtualPageUrl': '#leistungen' });">Leistungen
                        </a>
                    </li>
                    <li class="has-subnav">
                        <a href="https://www.paltron.com/#expertise" title="Paltron | Expertise"
                            onclick="dataLayer.push({'event': 'virtualPageView', 'virtualPageTitle': 'Expertise', 'virtualPageUrl': '#expertise' });">Expertise
                            <i class="fa fa-caret-down" aria-hidden="true"></i></a>
                        <ul class="subnav">

                            <li>
                                <a href="/expertise/big-data-&amp;-business-intelligence"
                                    title="Big Data &amp; Business Intelligence">Big Data &amp; Business Intelligence</a>
                            </li>

                            <li>
                                <a href="/expertise/iot-&amp;-cloud" title="IoT &amp; Cloud">IoT &amp; Cloud</a>
                            </li>

                            <li>
                                <a href="/expertise/cyber-&amp;-it-security" title="Cyber- &amp; IT-Security">Cyber- &amp;
                                    IT-Security</a>
                            </li>
                            <li>
                                <a href="/expertise/erp-&amp;-sap" title="ERP &amp; SAP">ERP &amp; SAP</a>
                            </li>
                            <li>
                                <a href="/expertise/data-science-&amp;-analytics" title="Data Science &amp; Analytics">Data
                                    Science &amp; Analytics</a>
                            </li>
                            <li>
                                <a href="/expertise/ai-&amp;-machine-learning" title="AI &amp; Machine Learning">AI &amp;
                                    Machine Learning</a>
                            </li>
                            <li>
                                <a href="/expertise/it-architecture-&amp;-infrastructure"
                                    title="IT-Architecture &amp; Infrastructure">IT-Architecture &amp; Infrastructure</a>
                            </li>
                            <li>
                                <a href="/expertise/it-consulting-&amp;-sales" title="IT-Consulting &amp; Sales">IT-Consulting
                                    &amp; Sales</a>
                            </li>
                            <li>
                                <a href="/expertise/it-qualitaetsmanagement"
                                    title="IT-Qualitätsmanagement">IT-Qualitätsmanagement</a>
                            </li>
                            <li>
                                <a href="/expertise/it-projectmanager" title="IT-Projektmanager">IT-Projektmanager</a>
                            </li>
                            <li>
                                <a href="/expertise/it-leadership-governance"
                                    title="IT-Leadership &amp; IT-Governance">IT-Leadership &amp; IT-Governance</a>
                            </li>
                            <li>
                                <a href="/expertise/blockchain-technologies" title="Blockchain Technologies">Blockchain
                                    Technologies</a>
                            </li>
                        </ul>
                    </li>
                    <li class="active">
                        <a href="https://www.paltron.com/#referenzen" title="Paltron | Referenzen"
                            onclick="dataLayer.push({'event': 'virtualPageView', 'virtualPageTitle': 'Referenzen', 'virtualPageUrl': '#referenzen' });">Referenzen
                        </a>
                    </li>
                    <li class="">
                        <a href="https://www.paltron.com/#team" title="Paltron | Team"
                            onclick="dataLayer.push({'event': 'virtualPageView', 'virtualPageTitle': 'Team', 'virtualPageUrl': '#team' });">Team
                        </a>
                    </li>
                    <li class="has-subnav">
                        <a href="https://www.paltron.com/#jobs" title="Paltron | Jobs"
                            onclick="dataLayer.push({'event': 'virtualPageView', 'virtualPageTitle': 'Jobs', 'virtualPageUrl': '#jobs' });">Jobs
                            <i class="fa fa-caret-down" aria-hidden="true"></i></a>
                        <ul class="subnav">

                            <li>
                                <a href="/jobs/gefunden-werden" title="Gefunden werden">Gefunden werden</a>
                            </li>

                            <li>
                                <a href="/jobs/job-finden" title="Job finden">Job finden</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="https://www.paltron.com/#kontakt" title="Paltron | Kontakt"
                            onclick="dataLayer.push({'event': 'virtualPageView', 'virtualPageTitle': 'Kontakt', 'virtualPageUrl': '#kontakt' });">Kontakt
                        </a>
                    </li>
                </ul>
            </nav>
        </div>
    </header>
