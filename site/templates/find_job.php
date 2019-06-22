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
                <div class="element-group">
                    <label for="job-title" ><?php echo __("Jobtitel / Suchwort"); ?></label>
                    <input type="text" name="job-title">
                </div>
                <div class="element-group">
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
    
</main>
<?php
include("./includes/foot.inc");