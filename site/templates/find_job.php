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
                    <h1><?php echo $page->header_title; ?></h1>
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
                        <option value=""><?php echo __("Augsburg"); ?></option>
                        <option value=""><?php echo __("Baden-Württemberg"); ?></option>
                        <option value=""><?php echo __("Berlijn"); ?></option>
                        <option value=""><?php echo __("Berlin"); ?></option>
                        <option value=""><?php echo __("Berlin oder Duisburg"); ?></option>
                        <option value=""><?php echo __("Dortmund"); ?></option>
                        <option value=""><?php echo __("Düsseldorf"); ?></option>
                        <option value=""><?php echo __("Essen"); ?></option>
                        <option value=""><?php echo __("Frankfurt am Main"); ?></option>
                        <option value=""><?php echo __("Frankfurt,Düsseldorf"); ?></option>
                        <option value=""><?php echo __("Göttingen"); ?></option>
                        <option value=""><?php echo __("Hamburg"); ?></option>
                        <option value=""><?php echo __("Hamburg, Berlin, Köln, München, Frankfurt a.M"); ?></option>
                        <option value=""><?php echo __("Hamburg, Berlin, München, Köln, Frankfurt a.M"); ?></option>
                        <option value=""><?php echo __("Hamburg, Köln"); ?></option>
                        <option value=""><?php echo __("Herten"); ?></option>
                        <option value=""><?php echo __("Köln"); ?></option>
                        <option value=""><?php echo __("München"); ?></option>
                        <option value=""><?php echo __("Münster"); ?></option>
                    </select>
                </div>
            </div>
        </div>
    </section>
    <section class="subject-filter">
        <div class="row">
            <div class="col-lg-5 element-group">
                <label for="level"><?php echo __("Level"); ?></label>
                <select name="level">
                    <option value=""><?php echo __("alle anzeigen"); ?></option>
                    <!-- expertise level1 list here -->
                    <?php
                        $expertise_l1_list = $pages->find("parent=/expertise/, template=expertise-level-1");
                        foreach($expertise_l1_list as $expertise_l1) {
                            $expertise_l1->title = str_replace('PALTRON | ', '', $expertise_l1->title);
                            echo '<option value="">'.$expertise_l1->title.'</option>';
                        }
                    ?>
                </select>
            </div>
            <div class="col-lg-5 element-group">
                <label for="subject"><?php echo __("Fachbereich"); ?></label>
                <select name="subject">
                    <option value=""><?php echo __("alle anzeigen"); ?></option>
                    <!-- expertise level1 list here -->
                    <?php
                        $expertise_l1_list = $pages->find("parent=/expertise/, template=expertise-level-1");
                        foreach($expertise_l1_list as $expertise_l1) {
                            $expertise_l1->title = str_replace('PALTRON | ', '', $expertise_l1->title);
                            echo '<option value="">'.$expertise_l1->title.'</option>';
                        }
                    ?>
                </select>
            </div>            
        </div>
    </section>
    <section class="filtered-job-list">
        <div class="filtered-count">
            <span><?php echo __("Verfügbare Jobs"); ?>:</span>
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