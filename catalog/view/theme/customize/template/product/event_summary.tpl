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


      <div class="events-booking-calendar"><!--events-booking-calendar-->
        <h2><?php echo $text_event_booking; ?></span></h2>
        <div class="calendar-con">
          <div class="row">
            <div class="col-md-4">
              <div class="accordion_example2">
                <!-- div 1 -->






                      <?php

function drowLeftMenu($menu,$product_id,$first=true){

$html='';


$html.=(!$first)? '<ul  class="sub-check">':'';

                      foreach($menu as $oneMenu){
$html.=($first)? '
                <div class="accordion_in">
                      <div class="acc_head">'.$oneMenu['name'].' </div>
                      <div class="acc_content">
                        <div class="demo-list clear">':'<li '.((isset($oneMenu['product_id']) && $oneMenu['product_id'] ==$product_id)? 'class="active"':'').'><label></label><a href="'.$oneMenu['href'].'"><i class="fa fa-circle" style="font-size: 8px;margin: 5px;"></i>'.$oneMenu['name'];

$html.=(isset($oneMenu['children']))?  drowLeftMenu($oneMenu['children'],$product_id,false):'';

                            $html.=($first)? '
                        </div>
                      </div>
                </div>

                                  ':'
                                  </label></a></li>';


                          }

                            $html.=(!$first)? '</ul>':'';

                      return $html;
                      }

                      ?>
<?= drowLeftMenu($leftMenu,0);?>



              </div>
            </div>
              <style type="text/css">
                  .accordion_example2 li a{
                      color:#000000;
                  }
                  .accordion_example2 li.active i{
                      color:red;
                  }
                  .accordion_example2 li.active a{
                      color:blue;
                  }


              </style>
              <script>
                  function activeMenu(){

                  $('.accordion_example2 li.active').closest('.accordion_in').addClass('acc_active');
                  }
                activeMenu();
              </script>
            <div class="col-md-8">
              <!-- Responsive calendar - START -->
              <div class="responsive-calendar">
                <div class="controls">
                  <a class="pull-left cal-prev" data-go="prev"></a>
                  <h4><span data-head-month></span><span class="year" data-head-year></span></h4>
                  <a class="pull-right cal-next" data-go="next"></a>
                </div><hr/>
                <div class="day-headers">
                  <div class="day header">Mon</div>
                  <div class="day header">Tue</div>
                  <div class="day header">Wed</div>
                  <div class="day header">Thu</div>
                  <div class="day header">Fri</div>
                  <div class="day header">Sat</div>
                  <div class="day header">Sun</div>
                </div>
                <div class="days" data-group="days">

                </div>
              </div>
              <!-- Responsive calendar - END -->
              <div class="row"><!--row-->
                <div class="col-md-5 pull-right"><!--calender-status-->
                  <div class="calender-status">
                    <ul>
                      <li class="red"><div></div><?php echo $text_booked; ?></li>
                      <li class="blue"><div></div><?php echo $text_available; ?></li>
                    </ul>
                  </div>
                </div>
              </div><!--row-->




                <div class="selected-items-wrapper"><!--Selected Items-->
                    <div class="row">
                        <div class="col-md-12">
                            <div class="selected-items">
                                <h4><?php echo $text_selected_items; ?></h4>
                                <table>
                                    <thead>
                                    <tr class="hidden-xs tablehead">
                                        <th><?php echo $text_services; ?></th>
                                        <th><?php echo $text_timing; ?></th>
                                        <th><?php echo $text_date; ?> </th>
                                        <th><?php echo $text_price; ?> </th>
                                        <th><?php echo $text_total; ?></th>
                                        <th></th>
                                    </tr>
                                    </thead>
                                    <tbody>

                                    <?php foreach($products as $product) { ?>
                                    <tr class="tablecontent">
                                        <td><span class="td-name visible-xs">Services</span><?php echo $product['name']; ?></td>
                                        <?php foreach($product['option'] as $option) {
                                        echo '<td><span class="td-name visible-xs">'.$option['name'].'</span>'.$option['value'].'</td>';
                                        }
                                        ?>
                                        <td><span class="td-name visible-xs"><?php echo $text_price; ?> </span><?php echo $product['price']; ?></td>
                                        <td><span class="td-name visible-xs"><?php echo $text_total; ?></span> <?php echo $product['total']; ?></td>
                                        <td><a  class="remove-button visible-xs" ></a><a   onclick="cart.remove('<?php echo $product['cart_id']; ?>');window.location.reload();"><img class="preview" src="image/catalog/icons/close.png" alt=""></a></td>
                                    </tr>
                                    <?php } ?>



                                    </tbody>
                                </table>

                            </div>
                            <div class="proceed">
                                <a class="" href="<?=$eventSummaryFinalLink;?>"><?php echo $text_button_proceed; ?></a>
                            </div>
                        </div>
                    </div>
                </div>




            </div>
          </div>
        </div>
      </div><!--balloons-->













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