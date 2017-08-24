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
    </section>

    <!--Banner Section-->
    <section class="content-section" id="product"><!--content-section-->
        <div class="container"><!--container-->

            <div class="bredcrumb"><!--bredcrumb-->
                <ul>

                    <?php foreach ($breadcrumbs as $breadcrumb) { ?>

                    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                    <?php  } ?>
                </ul>
            </div>

            <div class="wrap_notfiy">
                <?php if ($success) { ?>
                <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?></div>
                <?php } ?>
            </div>
            <!--bredcrumb-->
            <div class="product-details-page"><!--balloons-->

                <h2><?php echo $heading_title; ?></h2>

                <div class="row">
                    <div class="product-details">
                        <div class="col-lg-6 col-md-6">
                            <div class="product-details-image"><!--product-details-image-->
                             <?php if ($thumb || $images) { ?>
                                <ul id="product-thumb">
                                    <?php if ($thumb) { ?>
                                     <li><a class="thumbnail" href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>"><img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a></li>
                                    <?php } ?>
                                </ul>
                                <div id="bx-pager2"><!--bx-pager-->
                                    <?php if ($images) { ?>
                                    <?php $i=0; foreach ($images as $image) { ?>
                                        <a data-slide-index="<?=$i;?>" href=""><img src="<?php echo $image['thumb']; ?>"
                                        title="<?php echo $heading_title; ?>"
                                        alt="<?php echo $heading_title; ?>"/></a>
                                        <?php $i++; } ?>
                                        <?php } ?>
                                </div>
                                    <!--bx-pager-->
                                <?php } ?>
                            </div>
                            <!--product-details-image-->
                        </div>
                        <div class="col-lg-6 col-md-6 product-details-content"><!--col-md-6-->
                            <p><?php echo $text_option; ?> <?php echo $heading_title; ?></p>

                            <div class="price">


                                <?php if ($price) { ?>
                                <?php if (!$special) { ?>

                                <p><?php echo $text_price; ?> <span><?php echo $price; ?></span></p>
                                <?php } else { ?>
                                <p><?php echo $text_price; ?><span> <?php echo $special; ?></span><span
                                            style="text-decoration: line-through;"><?php echo $price; ?></span></p>
                                <?php } ?>

                                <?php } ?>
                            </div>
                            <div class="share">
                                <p class="text_share"><?php echo $text_share_product; ?></p>
                                <ul>
                                    <!-- AddThis Button BEGIN -->
                                    <!-- Go to www.addthis.com/dashboard to customize your tools --> <div class="addthis_inline_share_toolbox"></div>
                                    <!-- Go to www.addthis.com/dashboard to customize your tools --> <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-5901df5f5f7f4bba"></script>
                                    <!-- AddThis Button END -->
                                </ul>
                            </div>
                            <div class="stock"><p><?php echo $availabilty; ?> <span><?php echo $stock; ?></span></p></div>


                            <div class="date-time"><!--date-time-->
                                <div class="row">
                                    <div class="col-md-6">
                                        <label><?php echo $text_delivery_date; ?></label>
                                        <?php
                                    if ($options) {
                                    foreach($options as $option){

                                    if(str_replace(' ','',strtolower($option['name']))=='balloondeliverydate'){


                                    echo '<input type="text" name="option['.$option['product_option_id'].']" value="'. ((isset($request['option'][$option['product_option_id']]))? $request['option'][$option['product_option_id']]: gmdate('d/m/Y')).'" data-date-format="YYYY-MM-DD"  id="datepicker"   />
                                        ';


                                        }
                                        }
                                        }//if option
                                        ?>
                                    </div>
                                    <div class="col-md-6">
                                        <label><?php echo $text_delivery_time; ?></label>

                                        <?php if ($options) {
                                foreach($options as $option){
                                                                   if(str_replace(' ','',strtolower($option['name']))=='balloondeliverytime'){
                                                                   $i=0;


                                echo '<select id="input-option'.$option['product_option_id'].'" name="option['.$option['product_option_id'].']" >
                                        <option value="">  '.$text_option_time.'</option>
                                        ';
                                        foreach($option['product_option_value'] as $option_value){

                                        echo '
                                        <option value="'.$option_value['product_option_value_id'].'"
                                        '.((isset($request['option'][$option['product_option_id']]) &&
                                        $request['option'][$option['product_option_id']] ==
                                        $option_value['product_option_value_id'])?
                                        'selected':'').'>'.$option_value['name'].'</option>
                                        ';
                                        }
                                        echo '</select>';
                                        }
                                        }
                                        }//if option
                                        ?>
                                    </div>
                                    <div class="col-md-6">
                                        <label><?php echo $text_delivery_location; ?></label>

                                        <?php if ($options) {
                                foreach($options as $option){
                                                                   if(str_replace(' ','',strtolower($option['name']))=='cities'){
                                                                   $i=0;


                                echo '<select id="input-option'.$option['product_option_id'].'" name="option['.$option['product_option_id'].']" >
                                        <option value="">  '.$text_option_time.'</option>
                                        ';
                                        foreach($option['product_option_value'] as $option_value){

                                        echo '
                                        <option value="'.$option_value['product_option_value_id'].'"
                                        '.((isset($request['option'][$option['product_option_id']]) &&
                                        $request['option'][$option['product_option_id']] ==
                                        $option_value['product_option_value_id'])?
                                        'selected':'').'>'.$option_value['name'].'</option>
                                        ';
                                        }
                                        echo '</select>';
                                        }
                                        }
                                        }//if option
                                        ?>
                                    </div>

                                </div>
                            </div>
                            <!--date-time-->
                            <div class="product-btns"><!--product-btns-->
                                <div class="product-btns-row">
                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 product-btns-box">
                                        <div class="numb-box">
                                            <label><?php echo $Qty; ?></label>
                                            <input class="confetti-input" type="number" name="quantity"
                                                   value="<?php echo ((isset($request['quantity']))? $request['quantity']:$minimum) ?>"
                                                   data-minimum="<?php echo $minimum; ?>" id="input-quantity">
                                            <button id="up"><img src="image/catalog/icons/up.jpg" alt=""/></button>
                                            <button id="down"><img src="image/catalog/icons/down.jpg" alt=""/></button>
                                            <script>
                                                $('#up').click(function () {
                                                    $('#input-quantity').val($('#input-quantity').val() * 1 + 1);
                                                });

                                                $('#down').click(function () {
                                                    var quantityNode = $('#input-quantity');
                                                    var quantity = quantityNode.val();
                                                    if (quantity > quantityNode.data('minimum')) {

                                                        quantityNode.val(quantity - 1);
                                                    }
                                                });
                                            </script>
                                        </div>
                                        <!-- /.numbox -->
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 product-btns-box">
                                        <div class="addtocart">

                                            <?php if ($options) {
                                foreach($options as $option){
                                                                   if(str_replace(' ','',strtolower($option['name']))=='air'){



                                echo '

                                        <input type="hidden"  id="'.$option_value['name'].'" name="option['.$option['product_option_id'].']" value="'. ((isset($request['option'][$option['product_option_id']]))? $request['option'][$option['product_option_id']]: '').'" >

                                            ';


                                            }
                                            }
                                            }//if option
                                            ?>

                                            <?php
                                $balloonColorOptionId=0;
                                $balloonColorValueId=0;
                                $colorName='';

                                if ($options) {
                                foreach($options as $option){

                                                                   if(str_replace(' ','',strtolower($option['name'])) == 'ballooncolor'){
             echo ' <input type="hidden" name="option['.$option['product_option_id'].']" id="balloonColor" value="'. ((isset($request['option'][$option['product_option_id']]))? $request['option'][$option['product_option_id']]: '').'" >
                                            ';
                                            }

                                            if(str_replace(' ','',strtolower($option['name'])) == 'size'){
                                            echo ' <input type="hidden" name="option['.$option['product_option_id'].']"
                                                          value="'. ((isset($request['option'][$option['product_option_id']]))? $request['option'][$option['product_option_id']]: '').'">';
                                            }

                                            if(str_replace(' ','',strtolower($option['name'])) == 'confetti'){
                                            echo ' <input type="hidden" name="option['.$option['product_option_id'].']"
                                                          value="'. ((isset($request['option'][$option['product_option_id']]))? $request['option'][$option['product_option_id']]: '').'">';
                                            }

                                            if(str_replace(' ','',strtolower($option['name'])) == 'tail' ){
                                            echo ' <input type="hidden" name="option['.$option['product_option_id'].']"
                                                          value="'. ((isset($request['option'][$option['product_option_id']]))? $request['option'][$option['product_option_id']]: '').'">';
                                            }

                                            if(str_replace(' ','',strtolower($option['name'])) == 'textarea' ){
                                            echo ' <input type="hidden" name="option['.$option['product_option_id'].']"
                                                          value="'. ((isset($request['option'][$option['product_option_id']]))? $request['option'][$option['product_option_id']]: '').'">';
                                            }


                                            }
                                            }//if option
                                            ?>


                                            <input type="hidden" name="product_id" value="<?php echo $product_id; ?>"/>

                                            <a type="button" id="button-cart"
                                               data-loading-text="<?php echo $text_loading; ?>"
                                               class="confetti-cart"><?php echo $button_cart; ?></a>

                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 product-btns-box">
                                        <div class="addfav">

                                            <a id="wishlist" title="<?php echo $button_wishlist; ?>"
                                                  onclick="wishlist.add('<?php echo $product_id; ?>');"><?php echo $text_add_favourite; ?></a>

                                    </div>
                                    </div>
                                </div>
                            </div>
                            <!--product-btns-->
                        </div>
                        <!--col-md-6-->
                        <div class="col-lg-12 col-md-12">
                            <div class="description">
                                <h3><?php echo $text_description; ?></h3>

                                <p>
                                    <?php echo $description; ?>

                                </p></div>

                        </div>
                    </div>
                </div>
            </div>
            <!--balloons-->
        </div>
        <!--container-->
    </section>
    <!--content-section-->


    <?php if(false){ ?>
    <section class="content-section" id="product"><!--content-section-->
        <div class="container"><!--container-->
            <div class="bredcrumb"><!--bredcrumb-->
                <ul>
                    <li>Home</li>
                    <li>/</li>
                    <li>Ballons</li>
                    <li>/</li>
                    <li class="active">Regular Latest Balloons</li>
                </ul>
            </div>
            <!--bredcrumb-->
            <div class="product-details-page"><!--balloons-->
                <h2>Regular Latest Balloons</h2>

                <div class="confetti-con view-colors-con">
                    <div class="row">
                        <div class="col-md-6 view-colors-left">
                            <div class="slider_cover">
                                <div class="bx-wrapper" style="max-width: 100%;">
                                    <div class="bx-viewport"
                                         style="width: 100%; overflow: hidden; position: relative; height: 382px;">
                                        <ul class="color-slider" style="width: auto; position: relative;">


                                            <?php if ($options) {
                                foreach($options as $option){
                                                                   if($option['name']=='balloon color'){
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
                                <h4>Rollover swatches to view colors.</h4>

                                <div id="bx-pager">
                                    <?php
                                $balloonColorOptionId=0;
                                $balloonColorValueId=0;
                                $colorName='';

                                if ($options) {
                                foreach($options as $option){

                                                                   if($option['name']=='balloon color'){

                                                                   $i=0;
                                                                                        foreach($option['product_option_value'] as $option_value){
                                                                                        if($balloonColorOptionId==0){


                                $balloonColorOptionId=$option['product_option_id'];
                                $balloonColorValueId=$option_value['product_option_value_id'];
                                $colorName=$option_value['name'];
                                                                                        }
             echo ' <a data-slide-index="'.$i.'" data-value="'.$option_value['product_option_value_id'].'" data-name="'.$option_value['name'].'" href="" style="background-color:'.$option_value['name'].'; height:44px;"></a>
                                    ';$i++;

                                    }
                                    }
                                    }
                                    }//if option
                                    ?>
                                </div>

                                <input type="hidden" name="option[<?php echo $balloonColorOptionId; ?>]"
                                       id="balloonColor" value="<?php echo $balloonColorValueId; ?>">
                                <script>
                                    $('#bx-pager a').mouseover(function () {
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
                                        <label>Pick a delivery date:</label>

                                        <?php
                                    if ($options) {
                                    foreach($options as $option){

                                    if($option['name']=='balloon delivery  date'){

                                    echo '<input type="text" name="option['.$option['product_option_id'].']" value="'. ((isset($request['option'][$option['product_option_id']]))? $request['option'][$option['product_option_id']]: gmdate('d/m/Y')).'" data-date-format="YYYY-MM-DD"  id="datepicker"   />
                                        ';


                                        }
                                        }
                                        }//if option
                                        ?>

                                    </div>
                                    <div class="col-md-6">
                                        <label>Pick a delivery time:</label>

                                        <?php if ($options) {
                                foreach($options as $option){
                                                                   if($option['name']=='balloon delivery time'){
                                                                   $i=0;


                                echo '<select id="input-option'.$option['product_option_id'].'" name="option['.$option['product_option_id'].']" >
                                        <option>Please select delivery time</option>
                                        ';
                                        foreach($option['product_option_value'] as $option_value){

                                        echo '
                                        <option value="'.$option_value['product_option_value_id'].'">
                                            '.$option_value['name'].'
                                        </option>
                                        ';
                                        }
                                        echo '</select>';
                                        }
                                        }
                                        }//if option
                                        ?>

                                    </div>
                                </div>
                            </div>
                            <!--date-time-->
                            <div class="filling">
                                <div class="row">

                                    <?php if ($options) {
                                foreach($options as $option){
                                                                   if($option['name']=='air'){
                                                                   $i=0;


                                foreach($option['product_option_value'] as $option_value){

                                echo '

                                <div class="col-md-6">
                                    <input type="radio" id="'.$option_value['name'].'"
                                           name="option['.$option['product_option_id'].']"
                                           value="'. $option_value['product_option_value_id'].'" checked><label
                                            for="'.$option_value['name'].'">'.$option_value['name'].'</label>
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
                            <?php echo $special; ?><span
                                    style="text-decoration: line-through;"><?php echo $price; ?></span>
                            <?php } ?>


                            <?php } ?>

                        </h4>

                    </div>
                    <div class="col-md-6 col-md-offset-3">
                        <div class="confetti-btns">


                            <input type="hidden" name="product_id" value="<?php echo $product_id; ?>"/>
                            <button type="button"  id="button-cart" data-loading-text="<?php echo $text_loading; ?>"
                                    class="confetti-cart"><?php echo $button_cart; ?></button>
                            <input class="confetti-input" type="text" name="quantity" value="<?php echo $minimum; ?>"
                                   id="input-quantity">
                            <a href="javascript:void(0)" class="confetti-view">View</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--balloons-->
</div><!--container-->
</section>
<?php }// if false ?>

<script>
    $(function () {
        $("#datepicker").datepicker();
    });
</script>


<script type="text/javascript"><!--
    $('select[name=\'recurring_id\'], input[name="quantity"]').change(function () {
        $.ajax({
            url: 'index.php?route=product/product/getRecurringDescription',
            type: 'post',
            data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
            dataType: 'json',
            beforeSend: function () {
                $('#recurring-description').html('');
            },
            success: function (json) {
                $('.alert, .text-danger').remove();

                if (json['success']) {
                    $('#recurring-description').html(json['success']);
                }
            }
        });
    });
    //--></script>
<script type="text/javascript"><!--
    $('#button-cart').on('click', function () {
        $.ajax({
            url: 'index.php?route=checkout/cart/add',
            type: 'post',
            data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
            dataType: 'json',
            beforeSend: function () {

                $('#button-cart').button('loading');
            },
            complete: function () {
                $('#button-cart').button('reset');
            },
            success: function (json) {

                $('.alert, .text-danger').remove();
                $('.form-group').removeClass('has-error');

                if (json['error']) {
                    if (json['error']['option']) {
                        for (i in json['error']['option']) {
                            var element = $('#input-option' + i.replace('_', '-'));
                            console.log('#input-option' + i.replace('_', '-'));

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
                    $('.wrap_notfiy').parent().addClass('has-error');
                }

                if (json['success']) {

                    $('.wrap_notfiy').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

                    $('#cart > button').html('<span id="cart-total"><i class="fa fa-shopping-cart"></i> ' + json['total'] + '</span>');

                    $('html, body').animate({scrollTop: 0}, 'slow');

                    $('#cart > ul').load('index.php?route=common/cart/info ul li');
                }
            },
            error: function (xhr, ajaxOptions, thrownError) {
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

    $('button[id^=\'button-upload\']').on('click', function () {
        var node = this;

        $('#form-upload').remove();

        $('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

        $('#form-upload input[name=\'file\']').trigger('click');

        if (typeof timer != 'undefined') {
            clearInterval(timer);
        }

        timer = setInterval(function () {
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
                    beforeSend: function () {
                        $(node).button('loading');
                    },
                    complete: function () {
                        $(node).button('reset');
                    },
                    success: function (json) {
                        $('.text-danger').remove();

                        if (json['error']) {
                            $(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
                        }

                        if (json['success']) {
                            alert(json['success']);

                            $(node).parent().find('input').val(json['code']);
                        }
                    },
                    error: function (xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
            }
        }, 500);
    });
    //--></script>
<script type="text/javascript"><!--
    $('#review').delegate('.pagination a', 'click', function (e) {
        e.preventDefault();

        $('#review').fadeOut('slow');

        $('#review').load(this.href);

        $('#review').fadeIn('slow');
    });

    $('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

    $('#button-review').on('click', function () {
        $.ajax({
            url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
            type: 'post',
            dataType: 'json',
            data: $("#form-review").serialize(),
            beforeSend: function () {
                $('#button-review').button('loading');
            },
            complete: function () {
                $('#button-review').button('reset');
            },
            success: function (json) {
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

    $(document).ready(function () {
        $('.thumbnails').magnificPopup({
            type: 'image',
            delegate: 'a',
            gallery: {
                enabled: true
            }
        });
    });
    //--></script>


<?php echo $footer; ?>
