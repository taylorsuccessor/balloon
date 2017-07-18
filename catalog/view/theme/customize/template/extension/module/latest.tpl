<?php if($serviceType == 'events'){ ?>




<section class="content-section"><!--content-section-->
    <div class="container"><!--container-->
        <div class="latest-services"><!--latest-services-->
            <h2> <span><?php echo $heading_title; ?></span></h2>

            <div class="row1">
                <div id="owl-demo3" class="owl-carousel owl-theme">



                    <?php if(true){ $i=0; foreach ($products as $product) {


                    if($i%3 ==0){ ?>


                    <div class="item" onclick="window.location.href='<?php echo $product['href']; ?>'" style="cursor:pointer;">
                        <img  src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" style="height:440px;"/>
                        <h4><?php echo $product['name']; ?> </h4>
                    </div>



                    <?php }else if($i%3 ==1){ ?>



                    <div class="item" onclick="window.location.href='<?php echo $product['href']; ?>'" style="cursor:pointer;">

                        <div class="small-item">
                        <img  src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>"  style="height:208px;"/>
                        <h4><?php echo $product['name']; ?> </h4>
                            </div>



                    <?php  }else if($i%3 ==2){ ?>


                        <div class="small-item2">

                        <img  src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>"  style="height:208px;"/>
                        <h4><?php echo $product['name']; ?> </h4>
                            </div>
                    </div>


                    <?php
                    }
                    $i++;

                    ?>

                    <?php }
                    }

                    ?>

                </div>
            </div>

        </div><!--latest-products-->

    </div><!--container-->
</section><!--content-section-->










<?php }else{ ?>

<section class="content-section"><!--content-section-->
  <div ><!--container-->
    <div class="latest-products"><!--latest-products-->
      <h2><?php echo $heading_title; ?></h2>
          <div class="row">
              <div id="owl-demo" class="owl-carousel owl-theme" style="display:block">
                  <?php foreach ($products as $product) { ?>
                  <div class="item">
                      <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>"/>
                        <div class="caption-hover"><a href="<?php echo $product['href']; ?>"><?php echo $text_view_more;?></a></div>
                        <div class="slide-caption"><?php echo $product['name']; ?> </div>
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


<?php } ?>

