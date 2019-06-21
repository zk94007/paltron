<?php
    if(!$data = $cache->get("featured_partner", 5000)) {
        $data .= '<section class="featured-partners" id="featured-partners">
                    <div class="container grid-xl">
                        <div class="featured-partners-carousel owl-carousel">';
        foreach($page->partners_image as $image) {
            $data .= '<img src="'.$image->url.'" alt="">';
        }
        $data .= '</div> </div> </section>';
    }
    echo $data;
?>