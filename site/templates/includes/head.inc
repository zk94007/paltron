<?php namespace ProcessWire;

/**
 * Demo site header include file (HTML5)
 *
 * Note that this file has nothing to do with ProcessWire. We just split our common 
 * header and footer markup into separate files (head.inc and foot.inc) like this, 
 * since it was common to all of our templates. 
 *
 */

    $selectedLanguage = 'Deutsch';
    $td = $config->urls->templates;
?>

<!DOCTYPE html>
<html lang="<?php echo _x('de', 'HTML language code'); ?>">
    <head>

		<meta http-equiv="content-type" content="text/html; charset="de-DE.UTF-8" />
        <meta http-equiv="x-ua-compatible" content="ie=edge">
		<meta name="generator" content="ProcessWire <?php echo $config->version; ?>" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">

        <title><?php echo $page->seo->meta->title ?></title>
        <meta name="description" content="<?php echo $page->seo->meta->description; ?>">

        <link rel="apple-touch-icon-precomposed" sizes="57x57" href="<?php echo $td; ?>images/apple-touch-icon-57x57.png" />
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<?php echo $td; ?>images/apple-touch-icon-114x114.png" />
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<?php echo $td; ?>images/apple-touch-icon-72x72.png" />
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="<?php echo $td; ?>images/apple-touch-icon-144x144.png" />
        <link rel="apple-touch-icon-precomposed" sizes="120x120" href="<?php echo $td; ?>images/apple-touch-icon-120x120.png" />
        <link rel="apple-touch-icon-precomposed" sizes="152x152" href="<?php echo $td; ?>images/apple-touch-icon-152x152.png" />
        <link rel="icon" type="image/png" href="<?php echo $td; ?>images/favicon-32x32.png" sizes="32x32" />
        <link rel="icon" type="image/png" href="<?php echo $td; ?>images/favicon-16x16.png" sizes="16x16" />
        <meta name="application-name" content="<?php echo $page->seo->meta->title ?>"/>
        <meta name="msapplication-TileColor" content="#FFFFFF" />
        <meta name="msapplication-TileImage" content="<?php echo $td; ?>images/mstile-144x144.png" />

        <script type='text/javascript' src='https://maps.googleapis.com/maps/api/js?sensor=false'></script>
        <script type='text/javascript' src="https://use.fontawesome.com/21a956e74f.js"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

		<link rel="stylesheet" type="text/css" href="<?php echo $td ?>css/styles.css" />
		<link rel="stylesheet" type="text/css" href="<?php echo $td ?>css/mystyles.css" />
<script type='text/javascript' src='//platform-api.sharethis.com/js/sharethis.js#property=5d157ac35b5c0700129fbad8&product=inline-share-buttons' async='async'></script>
        <script type="module" src="https://unpkg.com/ionicons@4.5.9-1/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule="" src="https://unpkg.com/ionicons@4.5.9-1/dist/ionicons/ionicons.js"></script>

        <!-- Google Tag Manager -->
        <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
        new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
        j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
        'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
        })(window,document,'script','dataLayer','GTM-WGVFS35');</script>
        <!-- End Google Tag Manager -->

        <link rel="canonical" href="<?php echo $canonicalUrl; ?>" />
        <style>
            #hero {
                background: url(<?php echo $page->header_image->url.') center center no-repeat !important'?>;
                background-size: cover;
            }

            #fuer-bewerber.is-background {
                background: url(<?php echo $page->find_job_image->url.') center center no-repeat !important'?>;
                background-size:cover!important;
            }

            #cta {
                background: url(<?php echo $page->cta_image->url.') center center no-repeat !important'?>;
                background-size:cover!important;
            }

            #job-overview-header {
                background: url(<?php echo $page->header_image->url.') center center no-repeat !important'?>;
                background-size:cover!important;
                min-height: 10vh;
            }

            #job-detail-header {
                background: url(<?php echo $page->header_image->url.') center center no-repeat !important'?>;
                background-size:cover!important;
                min-height: 420px;
            }
            
            #about-us-header {
                background: url(<?php echo $page->header_image->url.') center center no-repeat !important'?>;
                background-size:cover!important;
                min-height: 420px;
            }

            #news-feed-header {
                background: url(<?php echo $page->header_image->url.') center center no-repeat !important'?>;
                background-size:cover!important;
                min-height: 420px;
            }

            #news-header {
                background: url(<?php echo $page->header_image->url.') center center no-repeat !important'?>;
                background-size:cover!important;
                min-height: 420px;
            }
            
            #job-find-header {
                background: url(<?php echo $page->header_image->url.') center center no-repeat !important'?>;
                background-size:cover!important;
                min-height: 210px;
            }
            
            #apply-job-header {
                background: url(<?php echo $page->header_image->url.') center center no-repeat !important'?>;
                background-size:cover!important;
                min-height: 420px;
            }
            
            #expertise-header {
                background: url(<?php echo $page->header_image->url.') center center no-repeat !important'?>;
                background-size:cover!important;
                min-height: 420px;
            }

            #recruiting-header {
                background: url(<?php echo $page->header_image->url.') center center no-repeat !important'?>;
                background-size:cover!important;
                min-height: 420px;
            }

            #office-opening-header {
                background: url(<?php echo $page->header_image->url.') center center no-repeat !important'?>;
                background-size:cover!important;
                min-height: 100vh;
            }
        </style>
    </head>
    <body>
    
    <!-- Google Tag Manager (noscript) -->
    <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-WGVFS35"
    height="0" width="0" style="display:none; visibility:hidden;"></iframe></noscript>
    <!-- End Google Tag Manager (noscript) -->

        <!--[if lte IE 10]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
        <![endif]-->

    <header class="primary-header">
        <div class="container">
            <div class="site-logo">
                <a href="<?php echo $lang_url; ?>/" title="Paltron"><img src="<?php echo $td ?>images/logo-paltron.svg" title="Paltron"
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
                    }
                
                    $lang_url = $homepage->getLanguageValue($user->language, 'name');
                    if ($lang_url == 'home') 
                        $lang_url='';
                    else
                        $lang_url = '/'.$lang_url;
                ?>
                <script>
                    var lang_url = '<?php echo $lang_url; ?>';
                </script>
                </ul>
            </div>
            <nav class="primary-nav-container" role="navigation">
                <ul class="primary-nav">
                    <li>
                        <a href="<?php echo $lang_url; ?>/" title="Paltron | PALTRON">PALTRON</a>
                    </li>
                    <li>
                        <a href="<?php echo $lang_url; ?>/#leistungen" title="Paltron | <?php echo __("Leistungen"); ?>"><?php echo __("Leistungen"); ?></a>
                    </li>
                    <li class="has-subnav ">
                        <a href="<?php echo $lang_url; ?>/#expertise" title="Paltron | Expertise">Expertise
                            <i class="fa fa-caret-down" aria-hidden="true"></i></a>
                        <ul class="subnav three-column">
                            <!-- expertise level1 list here -->
                            <?php
                                $expertise_l1_list = $pages->find("parent=/expertise/, template=expertise-level-1");
                                $expertise_l1_count = $expertise_l1_list->count();
                                $ul_count = ceil($expertise_l1_count/3);
                                foreach($expertise_l1_list as $key => $expertise_l1) {
                                    if($key % $ul_count == 0) {
                                        echo '<li>';
                                        echo '<ul>';
                                    }
                                    $expertise_l1->title = str_replace('PALTRON | ', '', $expertise_l1->title);
                                    echo '<li>';
                                    echo '<a href="'.$expertise_l1->url.'" title="'.$expertise_l1->title.'">'.$expertise_l1->title.'</a>';
                                    echo '</li>';
                                    if(($key + 1) % $ul_count == 0) { 
                                        echo '</ul>';
                                        echo '</li>';
                                    }
                                }
                            ?>
                        </ul>
                    </li>
                    <li>
                        <a href="<?php echo $lang_url; ?>/#references" title="Paltron | <?php echo __("Referenzen"); ?>"><?php echo __("Referenzen"); ?></a>
                    </li>
                    <li>
                        <a href="<?php echo $lang_url; ?>/about-us" title="Paltron | <?php echo __("Über Uns"); ?>"><?php echo __("Über Uns"); ?></a>
                    </li>
<!--                     <li>
                        <a href="<?php echo $lang_url; ?>/job-finden" title="Paltron | <?php echo __("Job finden"); ?>"><?php echo __("Job finden"); ?></a>
                    </li> -->
                    <li>
                        <a href="<?php echo $lang_url; ?>/jobs" title="Paltron | <?php echo __("Jobboard"); ?>"><?php echo __("Jobboard"); ?></a>
                    </li>
<!--
                    <li class="has-subnav">
                        <a href="<?php echo $lang_url; ?>/job" title="Paltron | Jobs">Jobs
                            <i class="fa fa-caret-down" aria-hidden="true"></i></a>
                        <ul class="subnav">
                            <li>
                                <a href="<?php echo $lang_url; ?>/job/find-job" title="<?php echo __("Job finden"); ?>"><?php echo __("Job finden"); ?></a>
                            </li>
                            <li>
                                <a href="<?php echo $lang_url; ?>/job/apply-job" title="<?php echo __("Gefunden werden"); ?>"><?php echo __("Gefunden werden"); ?></a>
                            </li>
                        </ul>
                    </li>
-->
                    <li>
                        <a href="<?php echo $lang_url; ?>/news-feed" title="News Feed">News</a>
                    </li>
                    <li>
                        <a href="<?php echo $lang_url; ?>/#contact" title="Paltron | <?php echo __("Kontakt"); ?>"><?php echo __("Kontakt"); ?></a>
                    </li>
                </ul>
            </nav>
            <a href="#" id="nav-trigger"><span>Menu</span></a>
            <nav class="mobile-nav-container">
            </nav>
        </div>
    </header>
