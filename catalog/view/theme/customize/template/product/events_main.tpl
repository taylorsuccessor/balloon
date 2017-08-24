<?php echo $header;  ?>
<div class="container">

    <div class="row">
      <div id="content"  >



        <?php echo $content_top; ?>
 <form method="post" action="">
        <section class="events-booking-warapper"><!--Events Booking Section-->


            <div class="events-booking">
              <h2> <?php echo $text_events_book; ?></h2>
              <div class="col-md-4">


                <input type="text" name="firstname" value="<?=$firstname;?>" placeholder="<?php echo $placeholder_first_name; ?>">
                <?php   if (isset($error_firstname) ){ ?>
                <div class="text-danger"><?php  echo $error_firstname; ?></div>
                <?php  } ?>


                <input type="text" name="lastname" value="<?=$lastname;?>" placeholder="<?php echo $placeholder_last_name; ?>" >
                <?php  if (isset($error_lastname)) { ?>
               <div class="text-danger"><?php echo $error_lastname; ?></div>
                <?php  } ?>

                <?php  ?>


                <div class="cards">
                  <h5><?php echo $text_accepted_payments; ?> </h5>
                  <a href="#"><img src="image/catalog/knet.jpg"/></a>
                  <a href="#"><img src="image/catalog/visa.jpg"/></a>
                  <a href="#"><img src="image/catalog/master.jpg"/></a>
                  <a href="#"><img src="image/catalog/blue-card.jpg"/></a>
                </div>
              </div>

              <div class="col-md-4">

                <input type="text"  name="email" value="<?=$email;?>" placeholder="<?php echo $placeholder_email; ?>">
                <?php  if (isset($error_email)) { ?>
                <div class="text-danger"><?php echo $error_email; ?></div>
                <?php  } ?>



            <input type="text" name="telephone" value="<?=$telephone;?>" placeholder="<?php echo $placeholder_mobile; ?>">
            <?php  if (isset($error_telephone)) { ?>
            <div class="text-danger"><?php echo $error_telephone; ?></div>
            <?php  } ?>


              </div>
              <div class="col-md-4" >
                <select name="category">


                  <?php

                  function drowCategoryWithChildren($categories){
                  foreach($categories as $oneCategory){
                  echo '<option value="'.$oneCategory['category_id'].'" '.(($oneCategory['category_id'] ==$oneCategory['category_id'] /*$category*/)? 'selected':'' ).'>
                                    '.$oneCategory['name'].'</option>';
                                    if(isset($oneCategory['children']) && count($oneCategory['children'])){
                                    drowCategoryWithChildren($oneCategory['children']);

                    }
                                    }
                                    }
                                    drowCategoryWithChildren($categories);

                    ?>
                                </select>

                                <button type="submit" name="bookNow"><?php echo $placeholder_book_now; ?></button>
                            </div>
                        </div>

                    <!--container-->
                </section>
                <!--Events Booking Section-->
            </form>


            <?php echo $content_bottom; ?></div>
        <?php echo $column_right; ?></div>
    </div>
</div>
<?php echo $footer; ?>

