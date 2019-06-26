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
                    <?php echo $page->header_title ?>
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
            <h2><?php echo __("Hier gehts zu deiner Initiativbewerbung"); ?></h2>
            <p><?php echo __("Hier treten Sie unserem Unternehmensnetzwerk bei und wir kommen bei passenden Angeboten auf Sie zu. Natürlich ist dieser Service für Sie kostenfrei. "); ?></p>
            <p><?php echo __("Um Ihnen das Ausfüllen zu erleichtern können Sie auch auf die Autofill-Funktion via Xing oder LinkedIn nutzen."); ?></p>
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
                            <select type="text" name="salutation" >
                                <option val="">-</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="gender"><?php echo __("Geschlecht *"); ?></label>
                            <select type="text" name="gender" >
                                <option val="">-</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="first-given-name"><?php echo __("Vorname *"); ?></label>
                            <input type="text" name="first-given-name" >
                        </div>
                        <div class="form-group">
                            <label for="surname"><?php echo __("Nachname *"); ?></label>
                            <input type="text" name="surname" >
                        </div>
                        <div class="form-group">
                            <label for="email-address"><?php echo __("Email-Adresse *"); ?></label>
                            <input type="text" name="email-address" >
                        </div>
                        <div class="form-group">
                            <label for="phone-number"><?php echo __("Telefonnummer"); ?></label>
                            <input type="text" name="phone-number" >
                        </div>
                        <div class="form-group">
                            <label for="street-and-house-number"><?php echo __("Straße und hausnummer"); ?></label>
                            <input type="text" name="street-and-house-number" >
                        </div>
                        <div class="form-group">
                            <label><?php echo __("Telefonnummer"); ?></label>
                            <div class="phone-number-group">
                                <input type="text" name="country-number" class="country-number" >
                                <input type="text" name="phone-number" class="phone-number" >
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
                            <label for="cv"><?php echo __("Lebenslauf"); ?></label>
                            <input type="text" name="cv" >
                        </div>
                    </div>
                </div>
                <div class="sub-form career-aspirations">
                    <div class="title">
                        <h3><?php echo __("Karrierewünsche"); ?></h3>
                    </div>
                    <div class="form-group">
                        <label for="cv"><?php echo __("Lebenslauf"); ?></label>
                        <textarea ></textarea>
                    </div>
                </div>
                <div class="confirm-policy">
                    <div>
                        <input type="checkbox" id="confirm-policy" name="confirm-policy">
                        <label for="confirm-policy"><?php echo __("Ich habe die Datenschutzinformation gelesen."); ?></label>
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