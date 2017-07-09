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
        <div class="bredcrumb"><!--bredcrumb-->
            <ul>
                <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                <?php  } ?>
            </ul>
        </div> <!--bredcrumb-->
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>">



        <div class="summery-details-wrapper"><!--summery-details-->
            <h2><?php echo $text_summary_details; ?></h2>
            <div class="customer-info">
                <h4> <?php echo $text_customer_info; ?></h4>

                <p>
                    <?=$firstname;?>  <?=$lastname;?><br>
                    <?=$email;?><br>
                    <?=$telephone;?><br>
                    <?=$category;?>
                </p>
            </div>
            <div class="summery-selected-items"><!--Selected Items-->
                <h4><?php echo $text_selected_items; ?></h4>
                <table>
                    <thead>
                    <tr class="hidden-xs tablehead">
                        <th><?php echo $text_services; ?></th>
                        <th class="text-center padding"><?php echo $text_timing; ?> </th>
                        <th class="text-center padding"><?php echo $text_date; ?> </th>
                        <th class="text-center padding"><?php echo $text_price; ?> </th>
                        <th class="text-right padding"><?php echo $text_total; ?></th>

                    </tr>


                    </thead>
                    <tbody class="table-body">



                    <?php foreach($products as $product) { ?>

                    <tr class="tablecontent">
                        <td class="selected-first">
                            <span class="td-name visible-xs">Services1</span>
                            <?php if( $product['thumb']!=''){ ?>
                            <img src="image/<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>"/>
                            <?php } ?>
                            <div class="select-name"><?php echo $product['name']; ?></div>
                        </td>
                        <?php foreach($product['option'] as $option) {


echo '
                        <td class="text-center">
                            <span class="td-name visible-xs">'.$option['name'].'</span>
                             <span class="digit">'.$option['value'].'</span>
                        </td>
                        ';
                        }
                        ?>


                        <td class="text-center">
                            <span  class="td-name visible-xs"><?php echo $text_price; ?></span>
                            <span class="digit"><?php echo $product['price']; ?></span>
                        </td>
                        <td class="text-right">
                            <span class="td-name visible-xs"><?php echo $text_total; ?></span>
                            <span class="digit"> <?php echo $product['total']; ?></span>
                        </td>

                    </tr>
                    <?php } ?>






                    </tbody>
                </table>
            </div><!--Selected Items-->

            <div class="payment-method"><!--Choose Payment Method-->
                <h4> <?php echo $text_choose_payment_method; ?></h4>
                <div class="row"><!--row-->
                    <div class="col-md-8">
                        <div class="demo-list">
                            <ul>
                                <li>
                                    <input tabindex="1" type="checkbox" id="input-1" checked >
                                    <label for="input-1">KNET</label><img src="image/catalog/knet.jpg" alt=""/>
                                </li>
                                <li>
                                    <input tabindex="2" type="checkbox" id="input-2" >
                                    <label for="input-2">CREDIT CARD</label>
                                    <img src="image/catalog/visa-master.jpg" alt=""/>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-4 right-price">
                        <ul class="row">

                            <?php foreach($totals as $total){ ?>
                            <li>
                                <div class="col-md-6"><?php echo $total['title']; ?> :</div>
                                <div class="col-md-6 text-right digit"><?php echo $total['text']; ?></div>
                            </li>
                            <?php } ?>

                        </ul>
                    </div>
                </div><!--row-->
            </div><!--Choose Payment Method-->

            <div class="grand-total-wrapper">
                <div class="grand-total">
                    <?php echo $totals[count($totals) - 1]['title']; ?> : <span class="digit"><?php echo $totals[count($totals) - 1]['text']; ?></span>
                </div>
                <a href="<?php echo $checkout; ?> "><?php echo $button_checkout; ?></a>
                <a href="<?php echo $continue; ?> "><?php echo $button_shopping; ?></a>

            </div>
        </div><!--summery-details-->













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
				if (json['error']['option']) {console.log(json['error']['option']);
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
//$('.date').datetimepicker({
//	pickTime: false
//});
//
//$('.datetime').datetimepicker({
//	pickDate: true,
//	pickTime: true
//});
//
//$('.time').datetimepicker({
//	pickDate: false
//});

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

//  $('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').on('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php /* echo $product_id; */ ?>',
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

//$(document).ready(function() {
//	$('.thumbnails').magnificPopup({
//		type:'image',
//		delegate: 'a',
//		gallery: {
//			enabled:true
//		}
//	});
//});
//--></script>
<?php echo $footer; ?>

<script>
  $(document).ready(function(e) {
    $(".accordion_example1").smk_Accordion({
      closeAble: true, //boolean
    });
    $(".accordion_example2").smk_Accordion({
      closeAble: true, //boolean
    });
  });
  //Live Chat hide
  $(window).scroll(function() {
    if ($(this).scrollTop()>500)
    {
      $('.livechat-btn').hide();
    }
    else
    {
      $('.livechat-btn').fadeIn();
    }
  });
</script>








<script src="catalog/view/javascript/js/responsive-calendar.js"></script>
<script type="text/javascript">
  //http://w3widgets.com/responsive-calendar/
  /*
   onInit()	Runs on calendar initialization. Use `this` here to access responsiveCalendar object including events object.
   onDayClick(events)
   onDayHover(events)
   onActiveDayClick(events)
   onActiveDayHover(events)
   onMonthChange()
   */
  function addLeadingZero(num) {
    if (num < 10) {
      return "0" + num;
    } else {
      return "" + num;
    }
  }

  var d = new Date();

  var month = d.getMonth()+1;
  var day = d.getDate();
var year =d.getFullYear();
  var fullDate = year + '-' +
          (month<10 ? '0' : '') + month + '-' +
          (day<10 ? '0' : '') + day;
$('.eventDate').val(fullDate);
  $(document).ready(function () {
    $(".responsive-calendar").responsiveCalendar({
      time: year+'-'+month,
      events: {

 <?php foreach ($eventsDate as $eventDate) {
              echo '"'.$eventDate.'": {"number":"1"},';
            }


              ?>
      },
      onDayClick: function(events) {
    var fullDate=$(this).data('year')+'-'+ addLeadingZero($(this).data('month'))+'-'+ addLeadingZero($(this).data('day'));

    //setDateTimeOptions(fullDate);
        if(false && $(this).parent().hasClass('active')){
          return false;
        }else{
$(this).parent().parent().find('div:not(.active) a').css('background-color','#1d86c8 !important');
          $(this).css('background-color','#0ff !important');
        }

        $('.eventDate').val(fullDate);
  },
  onInit:function(events){
//    setTimeout("setDateTimeOptions('"+fullDate+"')",500);
   // setTimeout("checkTheFullReserveDay()",500);
  },
  onMonthChange:function(events){
   // setTimeout("checkTheFullReserveDay()",1000);
  }

    });



  });

</script>

    <style type="text/css">
      .notFull a{background-color:#c3cf5a !important;}
      </style>