<?php

/**
 * Job overview template
 *
 */

include("./includes/head.inc"); 
?>
<main class="apply-job-page">
    <section class="apply-job-header" id="apply-job-header">
        <div class="container">
            <div class="header-wrapper">
                <div class="header-title">
                    <h1><?php echo $page->header_title ?></h1>
                </div>
                <div class="row job-classify-content">
                    <?php foreach($page->job_classify_item as $item) : ?>
                        <div class="col-lg-3 col-md-6 col-sm-12 job-classify-item">
                            <img src="<?php echo $item->job_classify_image->url ?>" alt="" >
                            <?php echo $item->job_classify_content ?>
                        </div>
                    <?php endforeach ?>
                </div>
            </div>
        </div>
    </section>
    <section class="job-application">
        <div class="description">
            <?php echo $page->content_text; ?>
        </div>
        <div class="button-group">
            <a class="btn btn-green" href="">
                <ion-icon name="logo-xing"></ion-icon>
                XING
            </a>
            <a class="btn btn-blue" href="">
                <ion-icon name="logo-linkedin"></ion-icon>
                LinkedIn
            </a>
        </div>
        <div class="application-form">
            <form id="application-form" method="post">
                <div class="sub-form personal-data">
                    <div class="title">
                        <h3><?php echo __("Persönliche Daten"); ?></h3>
                    </div>
                    <div class="content">
                        <div class="form-group">
                            <label for="salutation"><?php echo __("Anrede *"); ?></label>
                            <select type="text" name="salutation" required >
                                <option val="">-</option>
                                <option val=""><?php echo __("Herr"); ?></option>
                                <option val=""><?php echo __("Frau"); ?></option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="gender"><?php echo __("Geschlecht *"); ?></label>
                            <select type="text" name="gender" required >
                                <option val="">-</option>
                                <option val=""><?php echo __("männlich"); ?></option>
                                <option val=""><?php echo __("weiblich"); ?></option>
                                <option val=""><?php echo __("divers"); ?></option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="first-given-name"><?php echo __("Vorname *"); ?></label>
                            <input type="text" name="first-given-name" id="first-given-name" required >
                        </div>
                        <div class="form-group">
                            <label for="surname"><?php echo __("Nachname *"); ?></label>
                            <input type="text" name="surname" id="surname" required >
                        </div>
                        <div class="form-group">
                            <label for="email-address"><?php echo __("Email-Adresse *"); ?></label>
                            <input type="text" name="email-address" id="email-address" required >
                        </div>
                        <div class="form-group">
                            <label for="phone-number"><?php echo __("Telefonnummer"); ?></label>
                            <input type="number" name="phone-number" id="phone-number" >
                        </div>
                        <div class="form-group">
                            <label for="street-and-house-number"><?php echo __("Straße und Hausnummer"); ?></label>
                            <input type="text" name="street-and-house-number" id="street-and-house-number" >
                        </div>
                        <div class="form-group">
                            <label><?php echo __("Mobilnummer"); ?></label>
                            <div class="phone-number-group">
                                <input type="number" name="country-number" id="country-number" class="country-number" >
                                <input type="number" name="phone-number" id="phone-number" class="phone-number" >
                            </div>
                        </div>
                    </div>
                </div>
                <div class="sub-form documents">
                    <div class="title">
                        <h3><?php echo __("Dokumente"); ?></h3>
                    </div>
                    <div class="content">
                        <div class="form-group">
                            <div class="left-side">
                                <label for="cv"><?php echo __("Lebenslauf"); ?></label>
                                <div class="file-upload-input">
                                    <a class="btn btn-attached" id="choose-files"><?php echo __("Choose Files"); ?></a>
                                    <input type="text" class="upload-files" name="uploaded-files" id="uploaded-files" placeholder="No file chosen" disabled >
                                    <input type="file" class="cv-upload" name="cv-upload" id="cv-upload" onchange="handleFiles(this.files)" multiple >
                                </div>
                            </div>
                            <div class="right-side">
                                <a class="btn btn-outline" id="file-from-selector">
                                    <ion-icon name="cloud-upload"></ion-icon>
                                    <?php echo __("Datei auswählen von"); ?>
                                    <i class="fa fa-caret-down" aria-hidden="true"></i>
                                </a>
                                <ul class="file-from" id="file-from">
                                    <li>Storage</li>
                                    <li>Cloud</li>
                                </ul>
                            </div>
                        </div>
                        <div class="form-group">
                            <a class="btn btn-outline" href=""><ion-icon name="add"></ion-icon><?php echo __("Weitere Dokumente hinzufügen"); ?></a>
                        </div>
                    </div>
                </div>
                <div class="sub-form career-aspirations">
                    <div class="title">
                        <h3><?php echo __("Karrierewünsche"); ?></h3>
                    </div>
                    <div class="form-group">
                        <label><?php echo __("Bitte erzählen Sie uns, nach welcher Art von Job Sie suchen (max. 500 Wörter)"); ?></label>
                        <textarea ></textarea>
                    </div>
                </div>
                <div class="confirm-policy">
                    <div>
                        <input type="checkbox" id="confirm-policy" name="confirm-policy">
                        <label for="confirm-policy" required ><?php echo __("Ich habe die Datenschutzinformation gelesen."); ?></label>
                    </div>
                    <p><?php echo __("* bedeutet, dass dieses Feld ein Pflichtfeld ist."); ?></p>
                </div>
                <div class="button-group">
                    <a class="col-lg-3 col-md-6 col-sm-12 btn btn-primary" href=""><?php echo __("Jetzt bewerben"); ?></a>
                </div>
            </form>
        </div>
    </section>
</main>
<?php
include("./includes/foot.inc");