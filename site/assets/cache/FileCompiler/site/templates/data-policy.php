<?php

/**
 * Data policy template
 *
 */

 include(\ProcessWire\wire('files')->compile(\ProcessWire\wire("config")->paths->root . "site/templates/includes/head.inc",array('includes'=>true,'namespace'=>true,'modules'=>true,'skipIfNamespace'=>true))); 
?>
<main>
    <section class="data-policy" id="data-policy">
        <div class="page-container">
            <div class="header">
                <h1><?php echo $page->header_title ?></h1>
                <?php echo $page->header_description ?>
            </div>
            <div class="policy-rules">
                <?php foreach($page->policy_rule as $rule) : ?>
                    <h2 class="rule-captain"><?php echo $rule->title ?></h2>
                    <?php echo $rule->content_text ?>
                <?php endforeach ?>
            </div>
        </div>
    </section> 
</main>
<?php
 include(\ProcessWire\wire('files')->compile(\ProcessWire\wire("config")->paths->root . "site/templates/includes/foot.inc",array('includes'=>true,'namespace'=>true,'modules'=>true,'skipIfNamespace'=>true)));