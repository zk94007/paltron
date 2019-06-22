<?php

/**
 * Job overview template
 *
 */

 include(\ProcessWire\wire('files')->compile(\ProcessWire\wire("config")->paths->root . "site/templates/includes/head.inc",array('includes'=>true,'namespace'=>true,'modules'=>true,'skipIfNamespace'=>true))); 
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
                    <label for="job-title" ><?php echo \ProcessWire\__("Jobtitel / Suchwort"); ?></label>
                    <input type="text" name="job-title">
                </div>
                <div class="element-group">
                    <label for="place" ><?php echo \ProcessWire\__("Ort"); ?></label>
                    <select placeholder="<?php echo \ProcessWire\__("alle anzeigen"); ?>" name="place">
                        <option value=""><?php echo \ProcessWire\__("alle anzeigen"); ?></option>
                        <option value=""><?php echo \ProcessWire\__("Senior Management und C-Level"); ?></option>
                        <option value=""><?php echo \ProcessWire\__("Management"); ?></option>
                        <option value=""><?php echo \ProcessWire\__("Consulting"); ?></option>
                        <option value=""><?php echo \ProcessWire\__("Fachkraftepositionen IT"); ?></option>
                        <option value=""><?php echo \ProcessWire\__("Junior Management und Trainee"); ?></option>
                        <option value=""><?php echo \ProcessWire\__("Development"); ?></option>
                        <option value=""><?php echo \ProcessWire\__("Praktikum"); ?></option>
                        <option value=""><?php echo \ProcessWire\__("Interne Positionen"); ?></option>
                    </select>
                </div>
            </div>
        </div>
    </section>
    
</main>
<?php
 include(\ProcessWire\wire('files')->compile(\ProcessWire\wire("config")->paths->root . "site/templates/includes/foot.inc",array('includes'=>true,'namespace'=>true,'modules'=>true,'skipIfNamespace'=>true)));