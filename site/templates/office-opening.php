<?php

/**
 * Job overview template
 *
 */

include("./includes/head.inc"); 
?>
<main class="office-opening">
    <section class="office-opening-header" id="office-opening-header">
        <div class="container">
            <div class="col-lg-4 col-md-6 col-sm-12 header-wrapper">
                <div class="header-title">
                    <h1><?php echo $page->header_title; ?></h1>
                </div>
                <hr>
                <div class="header-description">
                    <?php echo $page->header_description ?>
                </div>
                <div class="button-group">
                    <a class="btn btn-primary"><?php echo __("JETZT REGISTRIEREN!"); ?></a>
                </div>
            </div>
        </div>
    </section>
    <section class="office-opening-content" id="office-opening-content">
        <div class="container">
            <?php echo $page->content_text; ?>
        </div>
    </section>
    <section id="registration" class="registration">
		<div class="container">
			<h3><?php echo __("Registrierungsformular"); ?></h3>
                <form action="" method="post" id="office_opening_registration_form" name="office_opening_registration_form">
                    <div id="alert" role="alert"></div>
                    <div class="form-group">
                        <label for="first-last-name"><?php echo __("Vor- Und Nachname"); ?></label>
                        <input type="text" name="first-last-name" id="first-last-name" required >
                    </div>
                    <div class="form-group">
                        <label for="company"><?php echo __("Unternehmen"); ?></label>
                        <input type="text" name="company" id="company" required >
                    </div>
                    <div class="form-group">
                        <label for="email">E-Mail</label>
                        <input type="email" name="email" id="email" required >
                    </div>
                    <div class="form-group">
                        <label for="recommendations">
                            <?php echo __("Diese Personen Sollten Sie Auch Einladen"); ?>
                            <span class="optional">optional</span>
                        </label>
                        <textarea name="recommendations" id="recommendations" ></textarea>
                    </div>
                    <div class="form-group">
                        <input type="checkbox" name="data-protection" id="data-protection" required >
                        <label for="data-protection">
                            <?php echo __("Einverstanden Mit Unseren "); ?>
                            <a href="<?php echo $lang_url; ?>/data-policy" target="_blank"><b><?php echo __("Datenschutzbestimmungen"); ?></b></a> *
                        </label>
                    </div>
                    <div class="form-group">
                        <input type="checkbox" name="unsubscribe" id="unsubscribe" >
                        <label for="unsubscribe"><?php echo __("Leider Habe Ich An Diesem Termin Schon Etwas Vor Und Kann Daher Nicht Kommen."); ?></label>
                    </div>
                    <div class="button-group">
                        <button class="btn btn-primary" type="submit" ><?php echo __("JETZT REGISTRIEREN!"); ?></button>
                    </div>
                </form>
	
		</div>
	</section>
</main>
<?php
include("./includes/foot.inc");