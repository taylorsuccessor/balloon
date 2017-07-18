
<section class="content-section"><!--content-section-->
    <div ><!--container-->
        <div class="latest-services"><!--latest-products-->
            <h2><?php echo $heading_title; ?></h2>
            <div class="row">
                <div id="owl-demo3" class="owl-carousel owl-theme">
                    <?php foreach ($products as $product) { ?>
                    <div class="item">
                        <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>"/>
                        <div class="caption-hover"><a href="<?php echo $product['href']; ?>"><?php echo $text_view_more;?></a></div>
                        <div class="slide-caption"><?php echo $product['name']; ?>  </div>
                    </div>
                    <?php } ?>
                </div>
            </div>
        </div>
    </div>
</section>
<script type="text/javascript"><!--
    // $('#carousel<?php echo $module; ?>').owlCarousel({
    //   items: 6,
    //   autoPlay: 3000,
    //   navigation: true,
    //   navigationText: ['<i class="fa fa-chevron-left fa-5x"></i>', '<i class="fa fa-chevron-right fa-5x"></i>'],
    //   pagination: true
    // });
    --></script>


