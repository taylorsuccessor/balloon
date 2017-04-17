<section class="content-section"><!--content-section-->
  <div><!--container-->
    <div class="featured-products"><!--Featured Products-->
      <h2><?php echo $heading_title; ?></h2>
    <div class="row">
      <div id="owl-demo2" class="owl-carousel owl-theme">
      <?php 
       $chunks = array_chunk($products, 2);
      ?>
      <?php foreach ($chunks as $products) { ?>
          <div class="item"><!--item-->
          <?php foreach ($products as $product) {; ?>
            <div class="product"><!--product1-->
              <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>"/>
              <h4><?php echo $product['name']; ?></h4>
              <h5>
              <?php if ($product['price']) { ?>
                  <?php echo $product['price']; ?>
              <?php } ?>
              </h5>
              <p><?php echo $product['description']; ?></p>
              <a href="<?php echo $product['href'] ?>"><?php echo $text_more; ?></a>
            </div>
          <?php } ?>
          </div>
      <?php } ?>
  </div>
</div>
</div><!--Featured Products-->
</div><!--container-->
</section><!--content-section-->


   
        
        