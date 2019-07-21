<section class="recent-news">
    <div class="news-list">
        <div class="container">
            <div class="row">
                <?php
                    $news_feed = $pages->get("/news-feed/");
                    $news_list = $pages->find("parent=/news-feed/, template=news, sort=-date, limit=4, title|header_title|header_description|content_text|news_summary%=$q");
                ?>
                <?php foreach($news_list as $news) : ?>
                    <div class="col-lg-3 col-md-6 col-sm-12 news-list-item">
                        <a href="/news-feed/<?php echo $news->name; ?>">
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
        </div>
    </div>
</section>
