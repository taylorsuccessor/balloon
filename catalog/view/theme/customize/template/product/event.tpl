<?php echo $header; ?>

<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
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
        <h2>Events <span>Booking</span></h2>
        <div class="calendar-con">
          <div class="row">
            <div class="col-md-4">
              <div class="accordion_example2">
                <!-- div 1 -->
                <div class="accordion_in">
                  <div class="acc_head">Entertainment </div>
                  <div class="acc_content">
                    <div class="demo-list clear">
                      <ul>
                        <li>
                          <input tabindex="1" type="checkbox" id="input-1" checked>
                          <label for="input-1">Magic Show</label>
                        </li>
                        <li>
                          <input tabindex="2" type="checkbox" id="input-2" >
                          <label for="input-2">Bubble Show (Booked)</label>
                          <ul class="sub-check">
                            <li>
                              <input tabindex="2-1" type="checkbox" id="input-2-1">
                              <label for="input-2-1">Option 1</label>
                            </li>
                            <li>
                              <input tabindex="2-2" type="checkbox" id="input-2-2">
                              <label for="input-2-2">Option 2</label>
                            </li>
                            <li>
                              <input tabindex="2-3" type="checkbox" id="input-2-3">
                              <label for="input-2-3">Option 3</label>
                            </li>
                          </ul>

                        </li>
                        <li>
                          <input tabindex="3" type="checkbox" id="input-3" >
                          <label for="input-3"> Balloon Twister</label>
                        </li>
                        <li>
                          <input tabindex="4" type="checkbox" id="input-4" >
                          <label for="input-4">Clown</label>
                        </li>
                        <li>
                          <input tabindex="5" type="checkbox" id="input-5" >
                          <label for="input-5">Face Painting (Booked)</label>
                        </li>
                        <li>
                          <input tabindex="6" type="checkbox" id="input-6">
                          <label for="input-6">Henna</label>
                        </li>
                        <li>
                          <input tabindex="7" type="checkbox" id="input-7" >
                          <label for="input-7">Juggler (Booked)</label>
                        </li>
                        <li>
                          <input tabindex="8" type="checkbox" id="input-8" >
                          <label for="input-8">Stilt Walker</label>
                        </li>
                        <li>
                          <input tabindex="9" type="checkbox" id="input-9" >
                          <label for="input-9">Unicycyclist</label>
                        </li>
                        <li>
                          <input tabindex="10" type="checkbox" id="input-10" >
                          <label for="input-10">Mascot Character</label>
                        </li>
                        <li>
                          <input tabindex="11" type="checkbox" id="input-11" >
                          <label for="input-11">Puppet Show</label>
                        </li>
                        <li>
                          <input tabindex="12" type="checkbox" id="input-12" >
                          <label for="input-12">Mickey & Minnie Mouse</label>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
                <!-- div 2 -->
                <div class="accordion_in">
                  <div class="acc_head">Art & Creativity Station </div>
                  <div class="acc_content">
                    <div class="sub_links">
                      <ul>
                        <li>Sub</li>
                      </ul>
                    </div>
                  </div>
                </div>
                <!-- div 2 -->
                <div class="accordion_in">
                  <div class="acc_head">Rental </div>
                  <div class="acc_content">
                    <div class="sub_links">
                      <ul>
                        <li>Sub</li>
                      </ul>
                    </div>
                  </div>
                </div>
                <!-- div 2 -->
                <div class="accordion_in">
                  <div class="acc_head">SweetCart </div>
                  <div class="acc_content">
                    <div class="sub_links">
                      <ul>
                        <li>Sub</li>
                      </ul>
                    </div>
                  </div>
                </div>
                <!-- div 2 -->
                <div class="accordion_in">
                  <div class="acc_head">Party Services </div>
                  <div class="acc_content">
                    <div class="sub_links">
                      <ul>
                        <li>Sub</li>
                      </ul>
                    </div>
                  </div>
                </div>
                <!-- div 2 -->
                <div class="accordion_in">
                  <div class="acc_head">Decorations </div>
                  <div class="acc_content">
                    <div class="sub_links">
                      <ul>
                        <li>Sub</li>
                      </ul>
                    </div>
                  </div>
                </div>

              </div>
            </div>
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
                      <li class="red"><div></div>Booked</li>
                      <li class="blue"><div></div>Available</li>
                    </ul>
                  </div>
                </div>
              </div><!--row-->
              <div class="delevery_time" id="product">
                <div class="date-time"><!--date-time-->
                  <div class="row">
                    <div class="col-md-4">
                      <label>Pick an event time:</label>
                    </div>
                    <div class="col-md-5">


                      <?php
                      $eventTimeProductOptionId=0;

                      if ($options) {
                                foreach($options as $option){
                                                                   if(str_replace(' ','',strtolower($option['name']))=='eventtime'){
                                                                   $i=0;


                                echo '<select id="input-option'.$option['product_option_id'].'" name="option['.$option['product_option_id'].']" > <option value="0">Please select delivery time</option>';
                      $eventTimeProductOptionId=$option['product_option_id'];
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
                    <div class="col-md-3">



                      <?php if ($options) {
                                foreach($options as $option){
                                                                   if(str_replace(' ','',strtolower($option['name']))=='eventdate'){


                     echo '<input name="option['.$option['product_option_id'].']" id="input-option'.$option['product_option_id'].'"type="hidden"value="2017-03-05" class="eventDate">';
                      }
                      }
                      }//if option
                      ?>


                        <input type="text" name="quantity" value="<?php echo $minimum; ?>" size="2" id="input-quantity" class="form-control" style="display:none" />
                        <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />

                      <a href="javascript: void(0)"  id="button-cart" data-loading-text="<?php echo $text_loading; ?>" ><?php echo $button_cart; ?></a>
                    </div>
                  </div>
                </div><!--date-time-->
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
        <?php


            foreach($existReservation as $date=>$times){
              sort($times['times']);
              echo '"'.$date.'": {"number":"'.join(',',$times['times']).'"},';
            }


              ?>
      },
      onDayClick: function(events) {
    var fullDate=$(this).data('year')+'-'+ addLeadingZero($(this).data('month'))+'-'+ addLeadingZero($(this).data('day'));

    setDateTimeOptions(fullDate);
        if(false && $(this).parent().hasClass('active')){
          return false;
        }else{
$(this).parent().parent().find('div:not(.active) a').css('background-color','#1d86c8 !important');
          $(this).css('background-color','#0ff !important');
        }

        $('.eventDate').val(fullDate);
  },
  onInit:function(events){
    setTimeout("setDateTimeOptions('"+fullDate+"')",500);
    setTimeout("checkTheFullReserveDay()",500);
  },
  onMonthChange:function(events){
    setTimeout("checkTheFullReserveDay()",1000);
  }

    });



  });

  function setDateTimeOptions(selectedDate){
   var allEventTimesList=<?=json_encode($eventTimesList); ?>;
var dateArray=selectedDate.split('-');
    var year=dateArray[0];
    var month= dateArray[1] * 1;
    var day=dateArray[2] * 1;

    var dayNode=$("a[data-year='"+ year+"'][data-month='"+ month+"'][data-day='"+ day+"']");

    var reservedDayTime=dayNode.parent().find('span').text().split(',');

    var timeSelectNode= $('#input-option<?=$eventTimeProductOptionId;?>');

    timeSelectNode.find('option').each(function(){ if($(this).attr('value') >0 ){$(this).remove(); } });
    for(oneEventTime in allEventTimesList  ){
      if(reservedDayTime.indexOf(oneEventTime) == -1){timeSelectNode.append('<option value="'+oneEventTime+'" >'+allEventTimesList[oneEventTime]+'</option>');}
    }
  }


      function checkTheFullReserveDay(){
        var allEventTimesList="<?php $eventTimesKeyList=array_keys($eventTimesList);sort($eventTimesKeyList); echo join(',',$eventTimesKeyList); ?>";

        $('.responsive-calendar .days div span').each(function(){
          $(this).parent().removeClass('active notFull');
          if($(this).text() == allEventTimesList){
            $(this).parent().addClass('active');
          }else if($(this).text() != ''){
            $(this).parent().addClass('notFull');
          }else{

          }
        });

          }
</script>

    <style type="text/css">
      .notFull a{background-color:#c3cf5a !important;}
      </style>