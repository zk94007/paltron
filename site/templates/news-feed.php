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
            <div class="news-tab-wrapper row">
                <?php foreach($page->news_tabs as $tab) : ?>
                    <div class="news-tab-item">
                        <a href="<?php echo $lang_url.$tab->link_url ?>">
                            <img src="<?php echo $tab->image->url ?>" alt="<?php echo $tab->title; ?>" >
                            <div class="overlay"></div>
                            <div class="overlay-text">
                                <p><?php echo $tab->title; ?></p>
                            </div>
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
                <input type="text" id="search-news-input" name ="q" placeholder="Search" value="<?php echo $_REQUEST["q"]; ?>">
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
                    $filtered_news = array();
                    $news_all = $pages->find("parent=/news-feed/, template=news");
                    $total_count = 0;

                    if (isset($_REQUEST["category"])) {
                        foreach($news_all as $news) {
                            if($news->news_categories->last()->name == $_REQUEST["category"]) {
                                $total_count ++;
                                if($total_count <= $news_limit) array_push($filtered_news, $news);
                            }
                        }
                        $news_list = $filtered_news;
                    }
                    else if(isset($_REQUEST["author"])) {
                        foreach($news_all as $news) {
                            if($news->author->last()->name == $_REQUEST["author"]) {
                                $total_count ++;
                                if($total_count <= $news_limit) array_push($filtered_news, $news);
                            }
                        }
                        $news_list = $filtered_news;
                    }
                    else {
                        $news_list = $pages->find("parent=/news-feed/, template=news, title|header_title|header_description|content_text|news_summary%=$q");
                        $total_count = $news_list->count();
                        $news_list = $pages->find("parent=/news-feed/, template=news, sort=-date, limit=$news_limit, title|header_title|header_description|content_text|news_summary%=$q");    
                    }
                ?>
                <?php foreach($news_list as $news) : ?>
                    <div class="col-lg-3 col-md-6 col-sm-12 news-list-item">
                        <a href="<?php echo $lang_url; ?>/news-feed/<?php echo $news->name ?>">
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

    <?php include("./includes/contact.inc"); ?>
     
</main>

<script>
    var news_limit = 8;

    function show_more_news() {
        <?php if(isset($_REQUEST["limit"])) : ?>
            news_limit += 8;
        <?php else : ?>
            news_limit = 16;
        <?php endif ?>

        <?php if(isset($_REQUEST["category"])) : ?>
            category = '<?php echo $_REQUEST["category"]; ?>';
            
            <?php if(isset($_REQUEST["q"])) : ?>
                search_key = '<?php echo $_REQUEST["q"]; ?>';
                window.location.href="?category=" + category + "&q=" + search_key + "&limit=" + news_limit;
            <?php else : ?>
                window.location.href="?category=" + category + "&limit=" + news_limit;
            <?php endif ?>
        <?php else : ?>
            <?php if(isset($_REQUEST["q"])) : ?>
                search_key = '<?php echo $_REQUEST["q"]; ?>';
                window.location.href="?q=" + search_key + "&limit=" + news_limit;
            <?php else : ?>
                window.location.href="?limit=" + news_limit;
            <?php endif ?>
        <?php endif ?>
    }
</script>
<?php
include("./includes/foot.inc");