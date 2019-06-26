<?php

/**
 * Job overview template
 *
 */

include("./includes/head.inc"); 
?>
<main class="news-feed-page">
    <section class="news-feed-header" id="news-feed-header">
        <div class="container">
            <div class="col-lg-4 col-md-8 col-sm-12 header-wrapper">
                <div class="header-title">
                    <h1><?php echo $page->header_title ?></h1>
                </div>
                <hr class="short-divider">
                <div class="header-description">
                    <?php echo $page->header_description ?>
                </div>
            </div>
        </div>
    </section>
    <section class="news-tabs">
        <div class="container">
            <div class="news-tab-wrapper">
                <?php foreach($page->news_tabs as $tab) : ?>
                    <div class="news-tab-item">
                        <a href="<?php echo $tab->link_url ?>">
                            <img src="<?php echo $tab->image->url ?>" alt="<?php echo $tab->title ?>" >
                        </a>
                    </div>
                <?php endforeach ?>
            </div>
        </div>
    </section>
    <?php
        $q = $sanitizer->selectorValue($input->get->q);           
        $input->whitelist('q', $q);
    ?>    
    <section class="search-box">
        <div class="container">
            <form id="search-news" action="/news-feed/" method="get">
                <input type="text" id="search-news-input" name ="q" placeholder="Search" value="<?php echo $q; ?>">
            </form>
            <img src="<?php echo $td.'images/search.svg' ?>" alt="search">
        </div>
    </section>
    <section class="news-list">
        <div class="container">
            <div class="row">
                <?php
                    if(isset($_REQUEST["limit"])) {
                        $news_limit = $_REQUEST["limit"];
                    }
                    else {
                        $news_limit = 8;
                    }
                    $news_feed = $pages->get("/news-feed/");
                    $news_list = $pages->find("parent=/news-feed/, template=news, title|header_title|header_description|content_text|author|news_summary%=$q");
                    $total_count = $news_list->count();
                    $news_list = $pages->find("parent=/news-feed/, template=news, sort=-date, limit=$news_limit, title|header_title|header_description|content_text|author|news_summary%=$q");
                ?>
                <?php foreach($news_list as $news) : ?>
                    <div class="col-lg-3 col-md-6 col-sm-12 news-list-item">
                        <a href="/news-feed/<?php echo $news->name ?>">
                            <div class="image">
                                <img src="<?php echo $news->list_image->url; ?>" alt="<?php echo $news->title ?>" >
                                <div class="overlay">
                                </div>
                                <span class="overlay-text">Read More</span>
                            </div>
                            <span class="date"><?php echo $news->date ?></span>
                            <h6 class="title"><?php echo $news->title ?></h6>
                            <p><?php echo $news->news_summary ?></p>
                        </a>
                    </div>
                <?php endforeach ?>
            </div>
            <?php
             if($total_count > $news_limit) : ?>
            <div class="button-group">
                <a class="col-lg-4 col-md-12 btn btn-primary" onclick="javascript: show_more_news()">
                    <?php echo __("Mehr anzeigen"); ?>
                    <ion-icon name="ios-arrow-forward"></ion-icon>
                </a>
            </div>
            <?php endif ?>
        </div>
    </section>

     
    <section class="contact" id="contact">
        <div class="container">
            <div class="contact-wrapper">
                <h1><?php echo __('Bei welchem Thema können wir Sie am besten unterstützen?'); ?></h1>
                <hr class="short-divider">
                <form action="" class="contact-form">
                    <div class="form-group">
                        <label class="form-label" for="name">Name</label>
                        <input class="form-input" id="name" name="name" type="text">
                    </div>
                    <div class="form-group">
                        <label class="form-label" for="email">Email</label>
                        <input class="form-input" id="email" name="email" type="email">
                    </div>
                    <div class="form-group">
                        <label class="form-label" for="phone"><?php echo __('Telefon'); ?></label>
                        <input class="form-input" id="phone" name="phone" type="text">
                    </div>
                    <div class="form-group">
                        <label class="form-label float-left" for="message"><?php echo __('Ihre Nachricht'); ?></label><span class="optional">optional</span>
                        <textarea class="form-input" name="message" id="message"></textarea>
                    </div>
                    <div class="button-group">
                        <input class="btn btn-primary" type="button" name="send_form" value="<?php echo __('Absenden'); ?>">
                    </div>
                </form>
            </div>
            <div class="contact-person">
                <img class="contact-person-image" src="<?php echo $td; ?>images/gf-josef-guenthner.jpg" alt="">
                <div class="info">
                    <strong><?php echo __('Ihr Ansprechpartner'); ?></strong>
                    <p>Josef Günthner</p>
                    <p>
                        <?php echo __('Geschäftsführer'); ?><br />
                        <span><ion-icon name="call"></ion-icon> 040 180 241 180</span><br />
                        <span>partners@paltron.com</span><br />
                    </p>
                </div>
            </div>
        </div>
    </section>  

</main>

<script>
    var news_limit = 8;

    function show_more_news() {
        <?php if(isset($_REQUEST["limit"])) : ?>
            news_limit += 8;
        <?php else : ?>
            news_limit = 16;
        <?php endif ?>

        <?php if(isset($_REQUEST["q"])) : ?>
            search_key = '<?php echo $_REQUEST["q"] ?>';
            window.location.href="?q=" + search_key + "&limit=" + news_limit;
        <?php else : ?>
            window.location.href="?limit=" + news_limit;
        <?php endif ?>
    }
</script>
<?php
include("./includes/foot.inc");