<div class="news-feed-page">
    <section class="contact" id="contact">
        <div class="container">
            <div class="contact-wrapper">
                <h3><?php echo $page->contact_subject; ?></h3>
                <hr class="short-divider">
                <div id="alert" role="alert"></div>
                <form action="" method="post" class="contact-form" name="contact" id="contact-form" data-ga-event="form-submit">
                    <div class="form-group">
                        <label class="form-label" for="name">Name</label>
                        <input class="form-input" id="name" name="name" type="text" placeholder="Name" required>
                    </div>
                    <div class="form-group">
                        <label class="form-label" for="email">Email</label>
                        <input class="form-input" id="email" name="email" type="email" placeholder="someone@abc.com" required>
                    </div>
                    <div class="form-group">
                        <label class="form-label" for="phone"><?php echo \ProcessWire\__('Telefon'); ?></label>
                        <input class="form-input" id="phone" name="phone" type="number" placeholder="(1)23 456 789" required>
                    </div>
                    <div class="form-group">
                        <label class="form-label float-left" for="message"><?php echo \ProcessWire\__('Ihre Nachricht'); ?></label><span class="optional">optional</span>
                        <textarea class="form-input" name="message" id="message" placeholder="<?php echo \ProcessWire\__('Ihre Nachricht'); ?>" ></textarea>
                    </div>
                    <div class="button-group">
                        <input class="btn btn-primary" type="submit" name="send_form" value="<?php echo \ProcessWire\__('Absenden'); ?>">
                    </div>
                </form>
            </div>
            <div class="contact-person">
                <div class="image">
                    <img class="contact-person-image" src="<?php echo $page->contact_image->url; ?>" alt="contact person image">
                </div>
                <div class="info">
                    <strong><?php echo \ProcessWire\__('Ihr Ansprechpartner'); ?></strong>
                    <p><?php echo $page->contact_name; ?></p>
                    <p>
                        <?php echo $page->contact_role; ?><br />
                        <span><ion-icon name="call"></ion-icon> <?php echo $page->contact_phone; ?></span><br />
                        <span><a href="mailto:contact@paltron.com"><?php echo $page->contact_email; ?></a></span><br />
                    </p>
                </div>
            </div>
        </div>
    </section>
</div>