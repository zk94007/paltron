
    <section class="contact" id="contact">
        <div class="container grid-lg">
            <div class="row">
                <div class="col-lg-6 col-md-12 col-sm-12">
                    <h1><?php echo __('Wie können wir Sie am besten unterstützen?'); ?></h1>
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
                        <input class="btn btn-primary" type="button" name="send_form" value="<?php echo __('Absenden'); ?>">
                    </form>
                </div>
                <div class="col-lg-5 offset-lg-1 col-md-12 col-sm-12 contact-person">
                    <img class="contact-person-image" src="<?php echo $config->urls->templates?>images/gf-josef-guenthner.jpg" alt="">

                    <h6><?php echo __('Ihr Ansprechpartner'); ?></h6>
                    <p>
                        <strong>Josef Günthner</strong><br />
                        <?php echo __('Geschäftsführer'); ?><br />
                        <span><ion-icon ios="ios-arrow-forward" md="md-arrow-forward"></ion-icon> 040 180 241 180</span><br />
                        <span>partners@paltron.com</span><br />
                    </p>
                </div>
            </div>
        </div>
    </section>  
