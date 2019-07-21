<?php

require_once("libs/Erecruiterfeed.php");
$id = $input->urlSegment1;
$joblang = ltrim(htmlspecialchars($input->queryString(), ENT_QUOTES),"lang=");
$availableLanguages = array ("de","en");

if (!in_array($joblang, $availableLanguages)) {
    $joblang = "de";
}

$feed = new \Erecruiterfeed($joblang);
$ad = $feed->getAd($id);

$langArr = array (
    "de" => array (
        "title_addon" => "Stellenangebote bei PALTRON",
        "h_aufgaben" => "Ihre Aufgaben",
        "h_profil" => "Ihr Profil",
        "h_benefits" => "Ihre Benefits",
        "h_ansprechpartner" => "Ansprechpartner",
        "h_standort" => "Standort",
        "kennziffer" => "Kennziffer",
        "einsatzort" => "Einsatzort",
        "beschaeftigungsart" => "Beschäftigungsart",
        "btn_bewerben" => "Jetzt bewerben",
        "btn_zurueck" => "zurück zur Übersicht",
        "btn_empfehlen" => "Weiterempfehlen" 
    ),
    "en" => array (
        "title_addon" => "Job offers at PALTRON",
        "h_aufgaben" => "Your tasks",
        "h_profil" => "Your profile",
        "h_benefits" => "Your Benefits",
        "h_ansprechpartner" => "Contact Person",
        "h_standort" => "Location",
        "kennziffer" => "Job ID",
        "einsatzort" => "Job Location",
        "beschaeftigungsart" => "Occupation Type",
        "btn_bewerben" => "Apply now!",
        "btn_zurueck" => "Back to overview",
        "btn_empfehlen" => "Recommend"
    )
);

if (is_null($ad)) {
    $session->redirect($pages->get(1174)->url);
}

$page->seo->meta->title = $ad["name"] . " " . $ad['location'] . " | " . $langArr[$joblang]["title_addon"];
$page->seo->meta->description = substr(strip_tags($ad["company_description"]), 0, 299) . "...";
$apply_url = "https://paltron.kandidatenportal.eu/Register/" . $ad["id"] . "?referrer=PALTRON_Website";
$canonicalUrl = $page->httpUrl . $ad["id"] . "/" . $ad["slug_url"] . "-" . $ad["slug_einsatzort"] . "?lang=" . $ad["language"];

$header_image = $ad["header_img"] ? ($ad["header_img"] . "-Header.jpg") : "default-Header-bw.jpg";
$recruiter_image = $ad["recruiter_img"] ? $ad["recruiter_img"] : "Default";


include("./includes/head.inc"); 
?>

<main class="job-description" id="job-description">
    <section class="hero-banner" style="background-image:url(https://paltron.kandidatenportal.eu/Content/jobAd/Header/<?php echo $header_image; ?>);">
        <div class="hero-banner-overlay">
            <div class="container grid-xl">
                <div class="columns">
                    <div class="column col-12">
                        <h1><?php echo $ad["name"] . " " . $ad["gender"]; ?></h1>
                    </div>
                </div>
            </div>
        </div> 
    </section>

    <section class="info-bar">
        <div class="container grid-xl">
            <div class="columns">
                <div class="column col-12">
                    <p class="info-field"><?php echo $langArr[$joblang]["kennziffer"]; ?>: <span><?php echo $ad["id"]; ?></span></p>
                    <p class="info-field"><?php echo $langArr[$joblang]["einsatzort"]; ?>: <span><?php echo $ad["location"]; ?></span></p>
                    <p class="info-field"><?php echo $langArr[$joblang]["beschaeftigungsart"]; ?>: <span><?php echo $ad["occupation_type"]; ?></span></p>
                </div>
            </div>
        </div>
    </section>

    <section class="job-description-container">
        <div class="container grid-xl">
            <div class="columns">
                <div class="column col-8 col-md-12 job-description-body">
                    <p class="strong"><?php echo $ad["company_description"]; ?></p>

                    <h3 class="h4"><?php echo $langArr[$joblang]["h_aufgaben"]; ?></h3>
                    <p><?php echo $ad["description"] ?></p>

                    <h3 class="h4"><?php echo $langArr[$joblang]["h_profil"]; ?></h3>
                    <p><?php echo $ad["requirements"] ?></p>

                    <h3 class="h4"><?php echo $langArr[$joblang]["h_benefits"]; ?></h3>
                    <p><?php echo $ad["additional_info"] ?></p>
                    
                    <p><?php echo $ad["job_footer"]; ?></p>

                    <div class="button-container">
                        <a class="btn btn-primary" href="<?php echo $apply_url ?>" title="<?php echo $ad['name'] . " | " . $langArr[$joblang]["btn_bewerben"]; ?>" target="_blank" rel="noopener"><ion-icon name="ios-checkmark-circle-outline"></ion-icon><?php echo $langArr[$joblang]["btn_bewerben"]; ?></a>
                        <a class="btn btn-primary-outline" href="<?php echo $pages->get(1174)->url; ?>" title="<?php echo $langArr[$joblang]["btn_zurueck"]; ?>"><ion-icon name="ios-return-left"></ion-icon><?php echo $langArr[$joblang]["btn_zurueck"]; ?></a>
                    </div>
                    <br />
                    <br />
                    <div class="dsgvo-box notice default">
                        <?php echo $page->body; ?>
                    </div>
                </div>
                <div class="column col-4 col-md-12 job-description-sidebar">
                    <h3 class="h4"><?php echo $langArr[$joblang]["h_ansprechpartner"]; ?>:</h3>
                    <div class="recruiter">
                        <img src="https://numeris-consulting.kandidatenportal.eu/Content/jobAd/Contact/<?php echo $recruiter_image; ?>.jpg" alt="<?php echo $ad["recruiter"]; ?>">
                        <p class="recruiter-name"><?php echo $ad["recruiter"]; ?></p>
                        <p class="recruiter-venture">PALTRON</p>
                    </div>
                    <p>
                        <a class="btn btn-primary" href="<?php echo $apply_url ?>" title="<?php echo $ad['name'] . " | " . $langArr[$joblang]["btn_bewerben"]; ?>" target="_blank" rel="noopener"><ion-icon name="ios-checkmark-circle-outline"></ion-icon><?php echo $langArr[$joblang]["btn_bewerben"]; ?></a>
                    </p>

                    
                    <h4><?php echo $langArr[$joblang]["h_standort"]; ?>:</h4>
                    <?php if ($ad["location"]): ?>
                        <div class="responsive-iframe-container">
                        <iframe
                          width="100%"
                          height="250"
                          frameborder="0" style="border:0"
                          src="https://www.google.com/maps/embed/v1/place?key=AIzaSyBXWSiMpYGhh3mowdZbpZJVnSqcNa1DDbs&q=<?php echo $ad["location"]; ?>" allowfullscreen>
                        </iframe>
                    </div>
                    <?php else: ?>
                        <p class="no-map-available">
                            Sorry, no map available.
                        </p>
                    <?php endif ?>

                    <h4>Share:</h4>
                    <div class="social-share-buttons">
                        <a href="mailto:name@domain.de?subject=Jobangebot - <?php echo $page->httpUrl; ?>" title="<?php echo $langArr[$joblang]["btn_empfehlen"]; ?>" target="_blank" rel="noopener"><ion-icon name="ios-mail"></ion-icon></a>
                        <a href="https://twitter.com/share?url=<?php echo $page->httpUrl; ?>" target="_blank" title="Share on Twitter"><ion-icon name="logo-twitter"></ion-icon></a>
                        <a href="https://www.facebook.com/sharer/sharer.php?u=<?php echo $page->httpUrl; ?>" target="_blank" title="Share on Facebook" target="_blank" rel="noopener"><ion-icon name="logo-facebook"></ion-icon></a>
                    </div>
                </div>
            </div>    
        </div>     
    </section>
</main>

<?php include("./includes/foot.inc");