<section class="references" id="references">
    <div class="testimonials" id="testimonials">
        <div class="container grid-lg">
            <div class="testimonials-carousel owl-carousel">
            <?php foreach($page->testimonials as $item) : ?>
                <div class="row">
                    <div class="col-lg-6 col-md-12 col-sm-12 testimonial-person">
                        <div class="wrap">
                            <div class="wrapper">
                                <img class="testimonial-image" src="<?php echo $item->contact_image->url; ?>" alt="<?php echo $item->contact_name; ?>" >
                                <div class="testimonial-person-details">
                                    <p class="name"><?php echo $item->contact_name; ?></p>
                                    <p><?php echo $item->contact_role; ?></p>
                                    <p><?php echo $item->company; ?></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-12 col-sm-12 testimonial-body">
                        <?php echo $item->content_text; ?>
                    </div>
                </div>
            <?php endforeach ?>
            </div>
        </div>
    </div>   
</section>
    