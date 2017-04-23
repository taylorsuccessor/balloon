  <?php echo $header;  ?>


  <div class="container">
    <div class="row">
      <div id="content"  >
        <?php echo $content_top; ?>


 <form method="post" action="">
        <section class="events-booking-warapper"><!--Events Booking Section-->

          <div class="container"><!--container-->

            <div class="events-booking">
              <h2>Events <span>Booking</span></h2>
              <div class="col-md-4">

                <input type="text" name="firstname" value="<?=$firstname;?>" placeholder="Frist Name">
                <input type="text" name="lastname" value="<?=$lastname;?>" placeholder="Last Name">
                <div class="cards">
                  <h5>Accepted Payments  - </h5>
                  <a href="#"><img src="image/catalog/knet.jpg"/></a>
                  <a href="#"><img src="image/catalog/visa.jpg"/></a>
                  <a href="#"><img src="image/catalog/master.jpg"/></a>
                  <a href="#"><img src="image/catalog/blue-card.jpg"/></a>
                </div>
              </div>

              <div class="col-md-4">
                <input type="text"  name="email" value="<?=$email;?>" placeholder="Email">
                <input type="text" name="telephone" value="<?=$telephone;?>" placeholder="Mobile">
              </div>
              <div class="col-md-4" >
                <select  name="location">
                  <option>Location</option>
                  <option>Location 1</option>
                  <option>Location 2</option>
                  <option>Location 3</option>
                  <option>Location 4</option>
                  <option>Location 5</option>
                </select>
                <select name="category">
                  <?php
                  function drowCategoryWithChildren($categories){
                  foreach($categories as $oneCategory){
                  echo '<option value="'.$oneCategory['category_id'].'" '.(($oneCategory['category_id'] ==$category)? 'selected':'' ).'>'.$oneCategory['name'].'</option>';

                  if(isset($oneCategory['children']) && count($oneCategory['children'])){
                  drowCategoryWithChildren($oneCategory['children']);
                  }
                  }
                  }
                  drowCategoryWithChildren($categories);
                  ?>
                </select>
                <button type="submit" name="bookNow">Book Now</button>
              </div>
            </div>
          </div><!--container-->
        </section><!--Events Booking Section-->
</form>




        <?php echo $content_bottom; ?></div>
      <?php echo $column_right; ?></div>
  </div>






<?php echo $footer; ?>

