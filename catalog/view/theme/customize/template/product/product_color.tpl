<?php echo $header; ?>
<div class="container">

<section class="banner-section"><!--Banner Section-->
    <div class="inner-banner"><!--banner-->
        <?php $image_category = end($breadcrumbs);
      if(isset($image_category['image']) && !empty($image_category['image']))
      {
      ?>
        <img src="<?php echo  HTTP_SERVER.'/image/'.$image_category['image']; ?>" alt=""/>
        <?php }else{ ?>
        <img src="catalog/view/theme/customize/image/inner-banner1.jpg" alt=""/>
        <?php } ?>
    </div><!--banner-->
</section><!--Banner Section-->


    <form action="<?php echo $finalProductDetailLink;?>" method="post">




<section class="content-section"><!--content-section-->
    <div class="container"><!--container-->
    <div class="bredcrumb"><!--bredcrumb-->

        <ul>
            <?php foreach ($breadcrumbs as $breadcrumb) { ?>
            <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
            <?php  } ?>
        </ul>

    </div> <!--bredcrumb-->


    <div class="wrap_notfiy">

        <?php if ($success) { ?>
        <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
            <button type="button" class="close" data-dismiss="alert">&times;</button>
        </div>
        <?php } ?>

    </div>

<section class="content-section" id="product"><!--content-section-->
    <form action="<?php echo $finalProductDetailLink;?>" method="post">

        <div class="product-details-page"><!--balloons-->
            <h2><?php echo $text_regular_latest; ?></h2>
            <div class="confetti-con view-colors-con">
                <div class="row">
                    <div class="col-md-6 view-colors-left">
                        <div class="slider_cover">
                            <div class="bx-wrapper" style="max-width: 100%;"><div class="bx-viewport" style="width: 100%; overflow: hidden; position: relative; height: 382px;">
                                    <ul class="color-slider" style="width: auto; position: relative;">


                                        <?php if ($options) {
                                foreach($options as $option){
                                if(str_replace(' ','',strtolower($option['name']))=='ballooncolor'){
                                        $i=0;
                   foreach($option['product_option_value'] as $option_value){
                       echo '

                                     <li style="float: none; list-style: none; position: absolute; width: 530px; z-index: 0; display: none;">
                                        <img src="image/'.$option_value['image'].'">
                                        <h4>'.$option_value['name'].'</h4>
                                        </li>
                                        ';
                                        }
                                        }
                                        }
                                        }//if option
                                        ?>


                                    </ul>
                                </div>
                                <div class="bx-controls"></div>
                            </div>
                            <h4><?php echo $text_Rollover_swatches; ?></h4>

                            <div id="bx-pager">
                                <?php
                                $balloonColorOptionId=0;
                                $balloonColorValueId=0;
                                $colorName='';

                                if ($options) {
                                foreach($options as $option){

                                 if(str_replace(' ','',strtolower($option['name']))=='ballooncolor'){

                                      $i=0;
                                foreach($option['product_option_value'] as $option_value){
                                 if($balloonColorOptionId==0){


                                $balloonColorOptionId=$option['product_option_id'];
                                $balloonColorValueId=$option_value['product_option_value_id'];
                                $colorName=$option_value['name'];
                                                                                        }
             echo ' <a data-slide-index="'.$i.'" data-value="'.$option_value['product_option_value_id'].'" data-name="'.$option_value['name'].'" href="" style="background-color:'.$option_value['name'].'; height:44px;"></a>';$i++;

                                }
                                }
                                }
                                }//if option
                                ?>
                            </div>

                            <input type="hidden" name="option[<?php echo $balloonColorOptionId; ?>]" id="balloonColor" value="<?php echo $balloonColorValueId; ?>" >
                            <script >
                                $('#bx-pager a').mouseover(function(){
                                    $('#balloonColor').val($(this).data('value'));
                                    $('#colorNameLabel').text($(this).data('name'));
                                });
                            </script>

                        </div>
                    </div>
                    <div class="col-md-6 view-colors-right">
                        <div class="date-time"><!--date-time-->
                            <div class="row">
                                <div class="col-md-6">
                                    <label><?php echo $text_delivery_date; ?></label>

                                    <?php
                                    if ($options) {
                                    foreach($options as $option){

                                    if(str_replace(' ','',strtolower($option['name']))=='balloondeliverydate'){


                                    echo '<input type="text" name="option['.$option['product_option_id'].']" value="'.gmdate('d/m/Y').'" data-date-format="YYYY-MM-DD"  id="datepicker"   />';



                                    }
                                    }
                                    }//if option
                                    ?>

                                </div>
                                <div class="col-md-6">

                                    <label><?php echo $text_delivery_time; ?></label>


                                    <select name="balloondeliverytime">
                                        <option value="0"> <?=$text_option_time;?> </option>
                                        <?php foreach($balloondeliverytime_values[$languageCode] as $oneOptionValue){
                                        echo '<option value="'.$oneOptionValue['value'].'">'.$oneOptionValue['name'].'</option>';
                                        }?>
                                        </select>


                                    <?php if (false && $options) {
                                foreach($options as $option){
                                                                   if(str_replace(' ','',strtolower($option['name']))=='balloondeliverytime'){
                                                                   $i=0;


                                echo '<select id="input-option'.$option['product_option_id'].'" name="option['.$option['product_option_id'].']" > <option> '.$text_option_time.' </option>';
                                                                                        foreach($option['product_option_value'] as $option_value){

echo '
<option value="'.$option_value['product_option_value_id'].'">'.$option_value['name'].'</option>
';
                                    }
                                    echo '</select>';
                                    }
                                    }
                                    }//if option
                                    ?>

                                </div>
                            </div>
                        </div><!--date-time-->
                        <div class="filling">
                            <div class="row">

                                <?php if ($options) {
                                foreach($options as $option){
                                                                   if(str_replace(' ','',strtolower($option['name']))=='air'){
                                                                   $i=0;


                                foreach($option['product_option_value'] as $option_value){

                                echo '

                                <div class="col-md-6">
                                    <input type="radio"  id="'.$option_value['name'].'" name="option['.$option['product_option_id'].']" value="'. $option_value['product_option_value_id'].'" checked><label for="'.$option_value['name'].'">'.$option_value['name'].'</label>
                                </div>
                                ';
                                }

                                }
                                }
                                }//if option
                                ?>

                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <h3 id="colorNameLabel"><?php echo $colorName ?></h3>
                        <h4>


                            <?php if ($price) { ?>
                                <?php if (!$special) { ?>
                                                      <?php echo $price; ?>
                                <?php } else { ?>
                            <?php echo $special; ?><span style="text-decoration: line-through;"><?php echo $price; ?></span>
                                <?php } ?>


                            <?php } ?>

                        </h4>

                    </div>
                    <div class="col-md-6 col-md-offset-3">
                        <div class="confetti-btns">




                            <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
                            <button type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>"  class="confetti-cart"><?php echo $button_cart; ?></button>
                            <input class="confetti-input"  type="text" name="quantity" value="<?php echo $minimum; ?>" id="input-quantity" >
                            <button type="submit" name="finalProductDetail" value="1" class="confetti-view">  <?php echo $text_view; ?></button>
                        </div>
                    </div>
                </div>





            </div>
        </div><!--balloons-->
    </div><!--container-->
    </form>

</section>


<script>
    $( function() {
        $( "#datepicker" ).datepicker();
    } );
</script>






<script type="text/javascript"><!--
    $('select[name=\'recurring_id\'], input[name="quantity"]').change(function(){
        $.ajax({
            url: 'index.php?route=product/product/getRecurringDescription',
            type: 'post',
            data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
            dataType: 'json',
            beforeSend: function() {
                $('#recurring-description').html('');
            },
            success: function(json) {
                $('.alert, .text-danger').remove();

                if (json['success']) {
                    $('#recurring-description').html(json['success']);
                }
            }
        });
    });
    //--></script>
<script type="text/javascript"><!--
    $('#button-cart').on('click', function() {
        $.ajax({
            url: 'index.php?route=checkout/cart/add',
            type: 'post',
            data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
            dataType: 'json',
            beforeSend: function() {
                $('#button-cart').button('loading');
            },
            complete: function() {
                $('#button-cart').button('reset');
            },
            success: function(json) {
console.log(json);
                $('.alert, .text-danger').remove();
                $('.form-group').removeClass('has-error');

                if (json['error']) {
                    if (json['error']['option']) {
                        for (i in json['error']['option']) {
                            var element = $('#input-option' + i.replace('_', '-'));console.log('#input-option' + i.replace('_', '-'));

                            if (element.parent().hasClass('input-group')) {
                                element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
                            } else {
                                element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
                            }
                        }
                    }

                    if (json['error']['recurring']) {
                        $('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
                    }

                    // Highlight any found errors
                    $('.text-danger').parent().addClass('has-error');
                }

                if (json['success']) {
                    $('.breadcrumb').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

                    $('#cart > button').html('<span id="cart-total"><i class="fa fa-shopping-cart"></i> ' + json['total'] + '</span>');

                    $('html, body').animate({ scrollTop: 0 }, 'slow');

                    $('#cart > ul').load('index.php?route=common/cart/info ul li');
                }
            },
            error: function(xhr, ajaxOptions, thrownError) {

                console.log(xhr.responseText);
                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
        });
    });
    //--></script>
<script type="text/javascript"><!--
    $('.date').datetimepicker({
        pickTime: false
    });

    $('.datetime').datetimepicker({
        pickDate: true,
        pickTime: true
    });

    $('.time').datetimepicker({
        pickDate: false
    });

    $('button[id^=\'button-upload\']').on('click', function() {
        var node = this;

        $('#form-upload').remove();

        $('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

        $('#form-upload input[name=\'file\']').trigger('click');

        if (typeof timer != 'undefined') {
            clearInterval(timer);
        }

        timer = setInterval(function() {
            if ($('#form-upload input[name=\'file\']').val() != '') {
                clearInterval(timer);

                $.ajax({
                    url: 'index.php?route=tool/upload',
                    type: 'post',
                    dataType: 'json',
                    data: new FormData($('#form-upload')[0]),
                    cache: false,
                    contentType: false,
                    processData: false,
                    beforeSend: function() {
                        $(node).button('loading');
                    },
                    complete: function() {
                        $(node).button('reset');
                    },
                    success: function(json) {
                        $('.text-danger').remove();

                        if (json['error']) {
                            $(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
                        }

                        if (json['success']) {
                            alert(json['success']);

                            $(node).parent().find('input').val(json['code']);
                        }
                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
            }
        }, 500);
    });
    //--></script>
<script type="text/javascript"><!--
    $('#review').delegate('.pagination a', 'click', function(e) {
        e.preventDefault();

        $('#review').fadeOut('slow');

        $('#review').load(this.href);

        $('#review').fadeIn('slow');
    });

    $('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

    $('#button-review').on('click', function() {
        $.ajax({
            url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
            type: 'post',
            dataType: 'json',
            data: $("#form-review").serialize(),
            beforeSend: function() {
                $('#button-review').button('loading');
            },
            complete: function() {
                $('#button-review').button('reset');
            },
            success: function(json) {
                $('.alert-success, .alert-danger').remove();

                if (json['error']) {
                    $('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
                }

                if (json['success']) {
                    $('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

                    $('input[name=\'name\']').val('');
                    $('textarea[name=\'text\']').val('');
                    $('input[name=\'rating\']:checked').prop('checked', false);
                }
            }
        });
    });

    $(document).ready(function() {
        $('.thumbnails').magnificPopup({
            type:'image',
            delegate: 'a',
            gallery: {
                enabled:true
            }
        });
    });

    <?php foreach($optionsWithName as $product_option_id =>$option){
       echo '$("[name=\''.$option['alias'].'\']").attr("id","input-option'.$product_option_id.'");';
    }?>
    //--></script>
























<?php if(false) { ?>

<div class="container">

  <section class="banner-section"><!--Banner Section-->
    <div class="inner-banner"><!--banner-->
        <img src="catalog/view/theme/customize/image/inner-banner1.jpg" alt=""/>
     </div><!--banner-->
  </section><!--Banner Section-->

   <section class="content-section"><!--content-section-->


   <div class="bredcrumb"><!--bredcrumb-->
        <?php //print_r($breadcrumbs) ;?>
            <ul>
                <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                <?php } ?>
            </ul>
      </div> <!-- /bredcrumb-->


  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>


    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>

     <div class="product-details-page"><!--balloons-->

        <h2><?php echo $heading_title; ?></h2>


     <div class="confetti-con view-colors-con">

    <div class="row">


      <div class="row">
        <?php if ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-8'; ?>
        <?php } ?>




          <?php if ($thumb || $images) { ?>


        <div class="col-md-6 view-colors-left">
              <div class="slider_cover">

          <ul  class="color-slider">
            <?php if ($thumb) { ?>
            <li><a class="thumbnail" href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>"><img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a></li>
            <?php } ?>
            <?php if ($images) { ?>
            <?php foreach ($images as $image) { ?>
            <li><a class="thumbnail" href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>"> <img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a></li>
            <?php } ?>
            <?php } ?>
          </ul>


          <?php } ?>



           <div class="tab-content"> <!-- tab-content -->

           <ul class="nav nav-tabs"> <!-- tabas for description and reviews -->
            <li class="active"><a href="#tab-description" data-toggle="tab"><?php echo $tab_description; ?></a></li>
            <?php if ($attribute_groups) { ?>
            <li><a href="#tab-specification" data-toggle="tab"><?php echo $tab_attribute; ?></a></li>
            <?php } ?>
            <?php if ($review_status) { ?>
            <li><a href="#tab-review" data-toggle="tab"><?php echo $tab_review; ?></a></li>
            <?php } ?>
          </ul>


    <div class="tab-pane active" id="tab-description"><?php echo $description; ?></div><!-- text of description to add , it's realated with tab above with id -->


            <?php if ($attribute_groups) { ?>
            <div class="tab-pane" id="tab-specification">
              <table class="table table-bordered">
                <?php foreach ($attribute_groups as $attribute_group) { ?>
                <thead>
                  <tr>
                    <td colspan="2"><strong><?php echo $attribute_group['name']; ?></strong></td>
                  </tr>
                </thead>
                <tbody>
                  <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
                  <tr>
                    <td><?php echo $attribute['name']; ?></td>
                    <td><?php echo $attribute['text']; ?></td>
                  </tr>
                  <?php } ?>
                </tbody>
                <?php } ?>
              </table>
            </div>
            <?php } ?><!-- end of text description  -->


             <?php if ($review_status) { ?>
            <div class="tab-pane" id="tab-review">
              <form class="form-horizontal" id="form-review">
                <div id="review"></div>
                <h2><?php echo $text_write; ?></h2>
                <?php if ($review_guest) { ?>
                <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label" for="input-name"><?php echo $entry_name; ?></label>
                    <input type="text" name="name" value="<?php echo $customer_name; ?>" id="input-name" class="form-control" />
                  </div>
                </div>
                <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label" for="input-review"><?php echo $entry_review; ?></label>
                    <textarea name="text" rows="5" id="input-review" class="form-control"></textarea>
                    <div class="help-block"><?php echo $text_note; ?></div>
                  </div>
                </div>
                <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label"><?php echo $entry_rating; ?></label>
                    &nbsp;&nbsp;&nbsp; <?php echo $entry_bad; ?>&nbsp;
                    <input type="radio" name="rating" value="1" />
                    &nbsp;
                    <input type="radio" name="rating" value="2" />
                    &nbsp;
                    <input type="radio" name="rating" value="3" />
                    &nbsp;
                    <input type="radio" name="rating" value="4" />
                    &nbsp;
                    <input type="radio" name="rating" value="5" />
                    &nbsp;<?php echo $entry_good; ?></div>
                </div>

                <?php echo $captcha; ?>
                <div class="buttons clearfix">
                  <div class="pull-right">
                    <button type="button" id="button-review" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary"><?php echo $button_continue; ?></button>
                  </div>
                </div>
                <?php } else { ?>
                <?php echo $text_login; ?>
                <?php } ?>
              </form>
            </div>
            <?php } ?>

            </div> <!-- /tab-content -->






     <h4>Rollover swatches to view colors.</h4>


         <div id="bx-pager">
                                  <a data-slide-index="0" href=""><img src="../../image/color1.jpg" /></a>
                                  <a data-slide-index="1" href=""><img src="../../image/color2.jpg" /></a>
                                  <a data-slide-index="2" href=""><img src="image/catalog/color3.jpg" /></a>
                                  <a data-slide-index="3" href=""><img src="image/catalog/color4.jpg" /></a>
                                  <a data-slide-index="4" href=""><img src="image/catalog/color5.jpg" /></a>
                                  <a data-slide-index="5" href=""><img src="image/catalog/color6.jpg" /></a>
                                  <a data-slide-index="6" href=""><img src="image/catalog/color7.jpg" /></a>
                                  <a data-slide-index="7" href=""><img src="image/catalog/color8.jpg" /></a>
                                  <a data-slide-index="8" href=""><img src="image/catalog/color9.jpg" /></a>
                                  <a data-slide-index="9" href=""><img src="image/catalog/color10.jpg" /></a>
                                  <a data-slide-index="10" href=""><img src="image/catalog/color11.jpg" /></a>
                                  <a data-slide-index="11" href=""><img src="image/catalog/color12.jpg" /></a>
                                  <a data-slide-index="12" href=""><img src="image/catalog/color13.jpg" /></a>
                                  <a data-slide-index="13" href=""><img src="image/catalog/color14.jpg" /></a>
                                  <a data-slide-index="14" href=""><img src="image/catalog/color15.jpg" /></a>
                                  <a data-slide-index="15" href=""><img src="image/catalog/color16.jpg" /></a>

             ?>
         </div>

         </div>
            </div>




        <?php if ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-4'; ?>
        <?php } ?>


         <div class="btn-group margin-botom"><!--Wishlist and compare-->

            <button type="button" data-toggle="tooltip" class="btn btn-default" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product_id; ?>');"><i class="fa fa-heart"></i></button>

            <button type="button" data-toggle="tooltip" class="btn btn-default" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product_id; ?>');"><i class="fa fa-exchange"></i></button>

          </div><!-- /Wishlist and compare-->

                      <br>

         <h1><?php echo $heading_title; ?></h1> <!--name of the product , it's declears in controller -->

          <br>

           <ul class="list-unstyled"> <!--  for manufacturer , model , and reward-->
            <?php if ($manufacturer) { ?>
            <li><?php echo $text_manufacturer; ?> <a href="<?php echo $manufacturers; ?>"><?php echo $manufacturer; ?></a></li>
            <?php } ?>

                      <br>

            <li><?php echo $text_model; ?> <?php echo $model; ?></li>

                                  <br>


            <?php if ($reward) { ?>
            <li><?php echo $text_reward; ?> <?php echo $reward; ?></li>
            <?php } ?>

                                              <br>

            <li><?php echo $text_stock; ?> <?php echo $stock; ?></li>


          </ul><!-- /for manufacturer , model , and reward-->





        <br>



             <div class="col-md-6 view-colors-right">

                        	<div class="date-time"><!--date-time-->

                            <div class="row">

                            	<div class="col-md-6">
                                	<label>Pick a delivery date:</label>
                                    <input type="text" id="datepicker">
                                </div>

                                <div class="col-md-6">
                                	<label>Pick a delivery time:</label>
                                    <select>
                                    	<option>Please select delivery time</option>
                                        <option>Morning (09:00 to 14:00)</option>
                                        <option>Afternoon (13:00 to 16:00)</option>
                                        <option>Evening (17:00 to 21:30)</option>
                                    </select>
                                </div>

                            </div>

                            </div><!--date-time-->


                            <div class="filling">
                            	<div class="row">
                                	<div class="col-md-6">
                                    	<input type="radio" id="helium" name="radio1"><label for="helium">Helium</label>
                                    </div>
                                    <div class="col-md-6">
                                    	<input type="radio" id="air" name="radio1"><label for="air">Air</label>
                                    </div>
                                </div>
                            </div>
                        </div>







        <div class="col-md-12">


                <h3><?php echo $heading_title; ?></h3>

      <h4>


        <?php if ($price) { ?>
          <ul class="list-unstyled">
            <?php if (!$special) { ?>
            <li>
              <h2><?php echo $price; ?></h2>
            </li>
            <?php } else { ?>
            <li><span style="text-decoration: line-through;"><?php echo $price; ?></span></li>
            <li>
              <h2><?php echo $special; ?></h2>
            </li>
            <?php } ?>

            <br>

            <?php if ($tax) { ?>
            <li><?php echo $text_tax; ?> <?php echo $tax; ?></li>
            <?php } ?>

            <?php if ($points) { ?>
            <li><?php echo $text_points; ?> <?php echo $points; ?></li>
            <?php } ?>

            <?php if ($discounts) { ?>
            <li>
              <hr>
            </li>
            <?php foreach ($discounts as $discount) { ?>
            <li><?php echo $discount['quantity']; ?><?php echo $text_discount; ?><?php echo $discount['price']; ?></li>
            <?php } ?>
            <?php } ?>
          </ul>
        <?php } ?>


     </h4>




                        </div>


       <div class="col-md-6 col-md-offset-3">

                <div class="confetti-btns">

            <a   href="cart.tpl" class="confetti-cart" id="button-cart" data-loading-text="<?php echo $text_loading; ?>"><?php echo $button_cart; ?></a>

                    <input type="text" name="quantity" value="<?php echo $minimum; ?>" size="2" id="input-quantity" class="confetti-input">

                                <a href="#" class="confetti-view">View</a>
                            </div>
                        </div>





                    </div>









      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>

        </div>

      </div>
       </div><!--balloons-->



      </div>

    </section><!-- /content-section-->
</div>

<?php } ?>



<?php echo $footer; ?>
