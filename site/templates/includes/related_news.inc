    <section class="paltron-news">
        <div class="container">
            <h2><?php echo __("PALTRON News"); ?></h2>
            <div class="row">
                <?php foreach($page->paltron_news as $news) : ?>
                    <div class="col-lg-4 col-sm-12">
                        <div class="news-item">
                            <img src="<?php echo $td.'images/news/'.$news->images ?>" alt="news" >
                            <?php echo $news->content_text ?>
                        </div>
                    </div>
                <?php endforeach ?>
            </div>
        </div>
    </section>