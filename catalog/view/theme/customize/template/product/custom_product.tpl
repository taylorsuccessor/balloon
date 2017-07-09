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
  <section class="content-section"><!--content-section-->

    <form action="<?php echo $finalProductDetailLink;?>" method="post">
    <div class="bredcrumb"><!--bredcrumb-->
      <ul>
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php  } ?>
      </ul>
    </div> <!--bredcrumb-->
    
    <div class="wrap_notfiy">

    </div>
    
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
            <div id="product">
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
                    <button type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="confetti-cart"><?php  echo $button_cart; ?></button>
                    <input type="text" name="quantity" class="confetti-input" value="<?php echo $minimum; ?>" size="2" id="input-quantity" class="form-control" />
                    <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
                    <?php $flag = "&preview=1"; ?>

                    <button type="submit" name="finalProductDetail" value="1" class="confetti-view">View</button>
                  </div>
                </div>
              </div>
            </div>

            <div class="confetti-select"><!--confetti-select-->
              <div class="row">
                <?php if ($options) { ?>
                  <?php foreach ($options as $option) { ?>
                  <?php if ($option['type'] == 'select') { ?>
                  <?php if(str_replace(' ','',strtolower($option['name'])) == 'size'){ ?>
                   <div class="col-md-4 col-sm-4 col-xs-4">
                      <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">

                        <select name="option[<?php echo $option['product_option_id']; ?>]" id="input-option<?php echo $option['product_option_id']; ?>">
                          <option value=""><?php echo $text_size; ?></option>
                          <?php foreach ($option['product_option_value'] as $option_value) { ?>
                          <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                            <?php if ($option_value['price']) { ?>
                            (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                            <?php } ?>
                          </option>
                          <?php } ?>
                        </select>
                      </div>
                   </div>

                  <?php } ?>
                  <?php if (str_replace(' ','',strtolower($option['name'])) ==  'confetti' ) { ?>
                    <div class="col-md-4 col-sm-4 col-xs-4">
                       <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">

                          <select name="option[<?php echo $option['product_option_id']; ?>]" class="conffetti-type" id="input-option<?php echo $option['product_option_id']; ?>" >
                            <option value=""><?php echo $text_confetti; ?></option>
                            <?php foreach ($option['product_option_value'] as $option_value) { ?>
                            <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                              <?php if ($option_value['price']) { ?>
                              (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                              <?php } ?>
                            </option>
                            <?php } ?>
                          </select>
                       </div>
                    </div>
                  <?php } ?>
                  <?php if (str_replace(' ','',strtolower($option['name'])) == 'tail' ) { ?>
                    <div class="col-md-4 col-sm-4 col-xs-4">
                        <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">

                            <select name="option[<?php echo $option['product_option_id']; ?>]" id="input-option<?php echo $option['product_option_id']; ?>">
                              <option value=""><?php echo $text_tail; ?></option>
                              <?php foreach ($option['product_option_value'] as $option_value) { ?>
                              <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                                <?php if ($option_value['price']) { ?>
                                (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                                <?php } ?>
                              </option>
                              <?php } ?>
                            </select>
                        </div>
                    </div>
                  <?php } ?>
                  <?php } //type select ?>
                  <?php if ($option['type'] == 'textarea') { ?>
                   <?php if(str_replace(' ','',strtolower($option['name'])) == 'textarea'){ ?>
                     <div class="confetti-text">
                        <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">

                           <textarea name="option[<?php echo $option['product_option_id']; ?>]" rows="5" placeholder="<?php echo $option['name']; ?>" class="col-text"  id="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['value']; ?></textarea>
                        </div>
                     </div>
                   <?php } ?>
                  <?php } ?>
                  <?php if ($option['type'] == 'select') { ?>
                   <?php if($option['name'] == 'Font color'){ ?>
                     <div class="col-md-4 col-sm-4 col-xs-4 col-text">
                        <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">

                           <select name="option[<?php echo $option['product_option_id']; ?>]" id="input-option<?php echo $option['product_option_id']; ?>">
                              <option value=""><?php echo "Font Color"; ?></option>
                              <?php foreach ($option['product_option_value'] as $option_value) { ?>
                              <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                                <?php if ($option_value['price']) { ?>
                                (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                                <?php } ?>
                              </option>
                              <?php } ?>
                            </select>
                        </div>
                     </div>
                   <?php } ?>
                  <?php } ?>
            <?php } ?>
            <?php } ?>

              </div>

            </div><!--confetti-select-->
            <?php echo $content_bottom; ?>
            <?php echo $column_right; ?>








  </form></section>
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
          $('.wrap_notfiy').html('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

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
<script type="text/javascript">
  $(function () {
    $(".conffetti-type").change(function() {
      var val = $(this).val();
      if(val == 20) {
        $(".col-text").hide();
        $(".col-text").show();
      }else
      {
          $(".col-text").show();
          $(".col-text").hide();
      }

    });
  });
</script>

<?php echo $footer; ?>
