<?php

/**
 * Job overview template
 *
 */

include("./includes/head.inc"); 
?>
<main class="job-find-page">
    <section class="job-find-header" id="job-find-header">
        <div class="container">
            <div class="col-lg-4 col-md-6 col-sm-12 header-wrapper">
                <div class="header-title">
                    <?php echo $page->header_title ?>
                </div>
            </div>
            <div class="filter row">
                <div class="col-lg-5 element-group">
                    <label for="job-title" ><?php echo __("Jobtitel / Suchwort"); ?></label>
                    <input type="text" name="job-title" placeholder="<?php echo __("z.B. UX Designer"); ?>">
                </div>
                <div class="col-lg-5 element-group">
                    <label for="place" ><?php echo __("Ort"); ?></label>
                    <select placeholder="<?php echo __("alle anzeigen"); ?>" name="place">
                        <option value=""><?php echo __("alle anzeigen"); ?></option>
                        <option value=""><?php echo __("Senior Management und C-Level"); ?></option>
                        <option value=""><?php echo __("Management"); ?></option>
                        <option value=""><?php echo __("Consulting"); ?></option>
                        <option value=""><?php echo __("Fachkraftepositionen IT"); ?></option>
                        <option value=""><?php echo __("Junior Management und Trainee"); ?></option>
                        <option value=""><?php echo __("Development"); ?></option>
                        <option value=""><?php echo __("Praktikum"); ?></option>
                        <option value=""><?php echo __("Interne Positionen"); ?></option>
                    </select>
                </div>
            </div>
        </div>
    </section>
    <section class="subject-filter">
        <div class="row">
            <div class="col-lg-5 element-group">
                <label for="level"><?php echo __("Level"); ?></label>
                <select placeholder="<?php echo __("alle anzeigen"); ?>" name="level">
                    <option value=""><?php echo __("alle anzeigen"); ?></option>
                    <option value=""><?php echo __("Senior Management und C-Level"); ?></option>
                    <option value=""><?php echo __("Management"); ?></option>
                    <option value=""><?php echo __("Consulting"); ?></option>
                    <option value=""><?php echo __("Fachkraftepositionen IT"); ?></option>
                    <option value=""><?php echo __("Junior Management und Trainee"); ?></option>
                    <option value=""><?php echo __("Development"); ?></option>
                    <option value=""><?php echo __("Praktikum"); ?></option>
                    <option value=""><?php echo __("Interne Positionen"); ?></option>
                </select>
            </div>
            <div class="col-lg-5 element-group">
                <label for="subject"><?php echo __("Fachbereich"); ?></label>
                <select placeholder="<?php echo __("alle anzeigen"); ?>" name="subject">
                    <option value=""><?php echo __("alle anzeigen"); ?></option>
                    <option value=""><?php echo __("Senior Management und C-Level"); ?></option>
                    <option value=""><?php echo __("Management"); ?></option>
                    <option value=""><?php echo __("Consulting"); ?></option>
                    <option value=""><?php echo __("Fachkraftepositionen IT"); ?></option>
                    <option value=""><?php echo __("Junior Management und Trainee"); ?></option>
                    <option value=""><?php echo __("Development"); ?></option>
                    <option value=""><?php echo __("Praktikum"); ?></option>
                    <option value=""><?php echo __("Interne Positionen"); ?></option>
                </select>
            </div>            
        </div>
    </section>
    <section class="filtered-job-list">
        <div class="filtered-count">
            <span><?php echo __("Verfugbara Jobs:"); ?></span>
            <span class="count">79</span>
        </div>
        <div class="filtered-jobs"> 
            <div class="filtered-job"> 
                <div class="job-info">
                    <h3>Head of People Operations</h3>
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
                    <a href="#" class="btn btn-link ">
                        <ion-icon name="ios-arrow-dropright-circle"></ion-icon>
                    </a>
                </div>
            </div>
            <div class="filtered-job"> 
                <div class="job-info">
                    <h3>Director Sales EMEA (m/w/d) </h3>
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
                    <a href="#" class="btn btn-link ">
                        <ion-icon name="ios-arrow-dropright-circle"></ion-icon>
                    </a>
                </div>
            </div>
            <div class="filtered-job"> 
                <div class="job-info">
                    <h3>IT Business Analyst #3439</h3>
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
                    <a href="#" class="btn btn-link ">
                        <ion-icon name="ios-arrow-dropright-circle"></ion-icon>
                    </a>
                </div>
            </div>
        </div>
    </section>
</main>
<?php
include("./includes/foot.inc");