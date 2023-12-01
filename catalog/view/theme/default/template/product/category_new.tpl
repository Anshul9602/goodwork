<?php echo $header; ?>

<!-- <section>
    <div class="container">
        <div class="row">
            <?php if ($categories) { ?>
                <?php if (count($categories) <= 5) { ?>
                    <?php foreach ($categories as $category) { ?>
                    <div class="col-lg-4 col-md-4 col-sm-12">
                        <img src="" alt="">
                        <h3><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></h3>
                    </div>
                    <?php } ?>
                    <?php } else { ?>
                        <?php foreach (array_chunk($categories, ceil(count($categories) / 4)) as $categories) { ?>
                        <?php foreach ($categories as $category) { ?>
                            <div class="col-lg-4 col-md-4 col-sm-12">
                                <img src="" alt="">
                                <h3><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></h3>
                            </div>
                            <?php } ?>
                            <?php } ?>
                    <?php } ?>
            <?php } ?>
        </div>
    </div>
</section> -->

<section>
    <div class="container">
        <div class="row">
            <?php foreach ($categories as $category) { ?>
            <div class="col-lg-4 col-md-4 col-sm-12">
                <img src="<?php echo $thumb; ?>" alt="">
                <h4><a href="<?php echo $category['href']; ?>"> <?php echo $category['name']; ?></a></h4>
            </div>
            <?php } ?>
        </div>
    </div>
</section>

<?php echo $footer; ?>