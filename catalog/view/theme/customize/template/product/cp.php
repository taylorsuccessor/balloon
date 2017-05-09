<?php echo $header; ?>
<div class="container">
    <section class="banner-section"><!--Banner Section-->
        <div class="inner-banner"><!--banner-->
            <img src="catalog/view/theme/customize/image/inner-banner1.jpg" alt=""/>
        </div><!--banner-->
    </section><!--Banner Section-->
    <section class="content-section"><!--content-section-->
        <div class="bredcrumb"><!--bredcrumb-->
            <ul>
                <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                <?php  } ?>
            </ul>
        </div><!--bredcrumb-->
        <div class="row"><?php echo $column_left; ?>
            <?php if ($column_left && $column_right) { ?>
                <?php $class = 'col-sm-6'; ?>
            <?php } elseif ($column_left || $column_right) { ?>
                <?php $class = 'col-sm-9'; ?>
            <?php } else { ?>
                <?php $class = 'col-sm-12'; ?>
            <?php } ?>
            <div id="content" class="<?php echo $class; ?>">
                <div class="product-details-page"><!--balloons-->
                    <div class="confetti-con">
                        <?php echo $content_top; ?>
                        <div class="row">
                            <div class="col-md-6 col-md-offset-3">
                                <div class="confetti">
                                    <?php if ($thumb || $images) { ?>
                                        <ul class="thumbnails">
                                            <?php if ($thumb) { ?>
                                                <li><a class="thumbnail" href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>"><img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a></li>
                                            <?php } ?>
                                        </ul>
                                    <?php } ?>
                                    <h4><?php echo $heading_title; ?></h4>
                                    <?php if ($price) { ?>
                                        <ul class="list-unstyled">
                                            <?php if (!$special) { ?>
                                                <li>
                                                    <h5><?php echo $price; ?></h5>
                                                </li>
                                            <?php } else { ?>
                                                <li>
                                                    <h5><?php echo $special; ?></h5>
                                                </li>
                                            <?php } ?>
                                        </ul>
                                    <?php } ?>
                                    <div class="confetti-btns">
                                        <button type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="confetti-cart"><?php echo $button_cart; ?></button>
                                        <input type="text" name="quantity" class="confetti-input" value="<?php echo $minimum; ?>" size="2" id="input-quantity" class="form-control" />
                                        <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
                                        <a href="#" class="confetti-view">View</a>
                                    </div>

                                    <div id="product">


                                        <?php if ($options) { ?>
                                            <hr>
                                            <h3><?php echo $text_option; ?></h3>
                                            <?php foreach ($options as $option) { ?>
                                                <?php if ($option['type'] == 'select') { ?>
                                                    <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                                        <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                                                        <select name="option[<?php echo $option['product_option_id']; ?>]" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control">
                                                            <option value=""><?php echo $text_select; ?></option>
                                                            <?php foreach ($option['product_option_value'] as $option_value) { ?>
                                                                <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                                                                    <?php if ($option_value['price']) { ?>
                                                                        (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                                                                    <?php } ?>
                                                                </option>
                                                            <?php } ?>
                                                        </select>
                                                    </div>
                                                <?php } ?>
                                                <?php if ($option['type'] == 'radio') { ?>
                                                    <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                                        <label class="control-label"><?php echo $option['name']; ?></label>
                                                        <div id="input-option<?php echo $option['product_option_id']; ?>">
                                                            <?php foreach ($option['product_option_value'] as $option_value) { ?>
                                                                <div class="radio">
                                                                    <label>
                                                                        <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                                                                        <?php if ($option_value['image']) { ?>
                                                                            <img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" />
                                                                        <?php } ?>
                                                                        <?php echo $option_value['name']; ?>
                                                                        <?php if ($option_value['price']) { ?>
                                                                            (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                                                                        <?php } ?>
                                                                    </label>
                                                                </div>
                                                            <?php } ?>
                                                        </div>
                                                    </div>
                                                <?php } ?>
                                                <?php if ($option['type'] == 'text') { ?>
                                                    <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                                        <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                                                        <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                                                    </div>
                                                <?php } ?>
                                                <?php if ($option['type'] == 'textarea') { ?>
                                                    <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                                        <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                                                        <textarea name="option[<?php echo $option['product_option_id']; ?>]" rows="5" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control"><?php echo $option['value']; ?></textarea>
                                                    </div>
                                                <?php } ?>

                                                <?php if ($option['type'] == 'date') { ?>
                                                    <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                                        <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                                                        <div class="input-group date">
                                                            <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
                </span></div>
                                                    </div>
                                                <?php } ?>
                                                <?php if ($option['type'] == 'datetime') { ?>
                                                    <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                                        <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                                                        <div class="input-group datetime">
                                                            <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                </span></div>
                                                    </div>
                                                <?php } ?>
                                                <?php if ($option['type'] == 'time') { ?>
                                                    <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                                        <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                                                        <div class="input-group time">
                                                            <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                </span></div>
                                                    </div>
                                                <?php } ?>
                                            <?php } ?>
                                        <?php } ?>
                                        <?php if ($recurrings) { ?>
                                            <hr>
                                            <h3><?php echo $text_payment_recurring; ?></h3>
                                            <div class="form-group required">
                                                <select name="recurring_id" class="form-control">
                                                    <option value=""><?php echo $text_select; ?></option>
                                                    <?php foreach ($recurrings as $recurring) { ?>
                                                        <option value="<?php echo $recurring['recurring_id']; ?>"><?php echo $recurring['name']; ?></option>
                                                    <?php } ?>
                                                </select>
                                                <div class="help-block" id="recurring-description"></div>
                                            </div>
                                        <?php } ?>
                                        <div class="form-group">
                                            <label class="control-label" for="input-quantity"><?php echo $entry_qty; ?></label>
                                            <input type="text" name="quantity" value="<?php echo $minimum; ?>" size="2" id="input-quantity" class="form-control" />
                                            <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
                                            <br />
                                            <button type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary btn-lg btn-block"><?php echo $button_cart; ?></button>
                                        </div>
                                        <?php if ($minimum > 1) { ?>
                                            <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $text_minimum; ?></div>
                                        <?php } ?>
                                    </div>


                                </div>
                                <?php echo $content_bottom; ?>
                            </div>
                            <?php echo $column_right; ?>
                        </div>
                    </div>
                </div>
            </div>
    </section>
</div>
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
                $('.alert, .text-danger').remove();
                $('.form-group').removeClass('has-error');

                if (json['error']) {
                    if (json['error']['option']) {
                        for (i in json['error']['option']) {
                            var element = $('#input-option' + i.replace('_', '-'));

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
    //--></script>
<?php echo $footer; ?>
