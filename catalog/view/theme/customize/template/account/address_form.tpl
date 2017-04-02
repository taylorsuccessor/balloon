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
    <div id="content" class="<?php echo $class; ?>"> <?php echo $content_top; ?>
        <div class="product-details-page"><!--balloons-->
			<h2><?php echo $text_address_book; ?></h2>
			<div class="full-width common">
                <div class="row">
                    <div class="col-md-3 col-sm-3 col-xs-12 side_navigation">
                        <ul class="list-unstyled">
		                    <li><a href="<?php echo $edit; ?>"><?php echo $text_edit; ?></a></li>
		                    <li><a href="<?php echo $address; ?>"><?php echo $text_address; ?></a></li>
		                    <li><a href="<?php echo $orders; ?>"><?php echo $text_my_orders; ?></a></li>
		                    <li><a href="<?php echo $password; ?>"><?php echo $text_password; ?></a></li>
                        </ul>
                    </div><!-- .side_navigation --> 
                    <div class="col-md-9 col-sm-9 col-xs-12 content_area">
                        <h2>Delivery <span>Address1</span></h2>
                		<div class="row">
						    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
						        <fieldset>
						            <div class="col-md-6 col-sm-6 col-xs-6 for-small required">
		                				<label class="control-label labelfloat" for="input-address-1"><?php echo $entry_address_1; ?> </label>
		                				<input type="text" name="address_1" value="<?php echo $firstname; ?>" placeholder="<?php echo $entry_address_1; ?>" id="input-address-1" class="form-control" />
							                <?php if ($error_address_1) { ?>
								        <div class="text-danger"><?php echo $error_address_1; ?></div>
								            <?php } ?>
	                			    </div><!-- /.for-small -->
	                			    <div class="col-md-6 col-sm-6 col-xs-6 for-small required">
						            <label class="col-sm-2 control-label labelfloat" for="input-area"><?php echo $entry_area; ?></label>
						              <input type="text" name="area" value="<?php echo $area; ?>" placeholder="<?php echo $entry_area; ?>" id="input-area" class="form-control" />
						              <?php if ($error_area) { ?>
						              <div class="text-danger"><?php echo $error_area; ?></div>
						              <?php } ?>
						            </div>
						            <div class="col-md-3 col-sm-4 col-xs-6 for-small">
						            <label class="col-sm-2 control-label labelfloat" for="input-governorate"><?php echo $entry_governorate; ?></label>
						              <input type="text" name="governorate" value="<?php echo $governorate; ?>" placeholder="<?php echo $entry_governorate; ?>" id="input-governorate" class="form-control" />
						            </div>
						            <div class="col-md-3 col-sm-4 col-xs-6 for-small">
						            <label class="col-sm-2 control-label labelfloat" for="input-block"><?php echo $entry_block; ?></label>
						              <input type="text" name="block" value="<?php echo $block; ?>" placeholder="<?php echo $entry_block; ?>" id="input-block" class="form-control" />
						            </div>
						            <div class="col-md-3 col-sm-4 col-xs-6 for-small">
						            <label class="col-sm-2 control-label labelfloat" for="input-street"><?php echo $entry_street; ?></label>
						              <input type="text" name="street" value="<?php echo $street; ?>" placeholder="<?php echo $entry_street; ?>" id="input-street" class="form-control" />
						            </div>
						            <div class="col-md-3 col-sm-4 col-xs-6 for-small">
						            <label class="col-sm-2 control-label labelfloat" for="input-avenue"><?php echo $entry_avenue; ?></label>
						              <input type="text" name="avenue" value="<?php echo $avenue; ?>" placeholder="<?php echo $entry_avenue; ?>" id="input-avenue" class="form-control" />
						            </div>
						            <div class="col-md-3 col-sm-4 col-xs-6 for-small">
						            <label class="col-sm-2 control-label labelfloat" for="input-company"><?php echo $entry_company; ?></label>
						              <input type="text" name="company" value="<?php echo $company; ?>" placeholder="<?php echo $entry_company; ?>" id="input-company" class="form-control" />
						            </div>
						            <div class="col-md-3 col-sm-4 col-xs-6 for-small">
						            <label class="col-sm-2 control-label labelfloat" for="input-company"><?php echo $entry_company; ?></label>
						              <input type="text" name="company" value="<?php echo $company; ?>" placeholder="<?php echo $entry_company; ?>" id="input-company" class="form-control" />
						            </div>
						            <div class="col-md-3 col-sm-4 col-xs-6 for-small">
						            <label class="col-sm-2 control-label labelfloat" for="input-company"><?php echo $entry_company; ?></label>
						              <input type="text" name="company" value="<?php echo $company; ?>" placeholder="<?php echo $entry_company; ?>" id="input-company" class="form-control" />
						            </div>






						          
						         
						          
						          
						          
						          
						          <?php foreach ($custom_fields as $custom_field) { ?>
						          <?php if ($custom_field['location'] == 'address') { ?>
						          <?php if ($custom_field['type'] == 'select') { ?>
						          <div class="form-group<?php echo ($custom_field['required'] ? ' required' : ''); ?> custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
						            <label class="col-sm-2 control-label" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
						            <div class="col-sm-10">
						              <select name="custom_field[<?php echo $custom_field['custom_field_id']; ?>]" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control">
						                <option value=""><?php echo $text_select; ?></option>
						                <?php foreach ($custom_field['custom_field_value'] as $custom_field_value) { ?>
						                <?php if (isset($address_custom_field[$custom_field['custom_field_id']]) && $custom_field_value['custom_field_value_id'] == $address_custom_field[$custom_field['custom_field_id']]) { ?>
						                <option value="<?php echo $custom_field_value['custom_field_value_id']; ?>" selected="selected"><?php echo $custom_field_value['name']; ?></option>
						                <?php } else { ?>
						                <option value="<?php echo $custom_field_value['custom_field_value_id']; ?>"><?php echo $custom_field_value['name']; ?></option>
						                <?php } ?>
						                <?php } ?>
						              </select>
						              <?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
						              <div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
						              <?php } ?>
						            </div>
						          </div>
						          <?php } ?>
						          <?php if ($custom_field['type'] == 'radio') { ?>
						          <div class="form-group<?php echo ($custom_field['required'] ? ' required' : ''); ?> custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
						            <label class="col-sm-2 control-label"><?php echo $custom_field['name']; ?></label>
						            <div class="col-sm-10">
						              <div>
						                <?php foreach ($custom_field['custom_field_value'] as $custom_field_value) { ?>
						                <div class="radio">
						                  <?php if (isset($address_custom_field[$custom_field['custom_field_id']]) && $custom_field_value['custom_field_value_id'] == $address_custom_field[$custom_field['custom_field_id']]) { ?>
						                  <label>
						                    <input type="radio" name="custom_field[<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo $custom_field_value['custom_field_value_id']; ?>" checked="checked" />
						                    <?php echo $custom_field_value['name']; ?></label>
						                  <?php } else { ?>
						                  <label>
						                    <input type="radio" name="custom_field[<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo $custom_field_value['custom_field_value_id']; ?>" />
						                    <?php echo $custom_field_value['name']; ?></label>
						                  <?php } ?>
						                </div>
						                <?php } ?>
						              </div>
						              <?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
						              <div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
						              <?php } ?>
						            </div>
						          </div>
						          <?php } ?>
						          <?php if ($custom_field['type'] == 'checkbox') { ?>
						          <div class="form-group<?php echo ($custom_field['required'] ? ' required' : ''); ?> custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
						            <label class="col-sm-2 control-label"><?php echo $custom_field['name']; ?></label>
						            <div class="col-sm-10">
						              <div>
						                <?php foreach ($custom_field['custom_field_value'] as $custom_field_value) { ?>
						                <div class="checkbox">
						                  <?php if (isset($address_custom_field[$custom_field['custom_field_id']]) && in_array($custom_field_value['custom_field_value_id'], $address_custom_field[$custom_field['custom_field_id']])) { ?>
						                  <label>
						                    <input type="checkbox" name="custom_field[<?php echo $custom_field['custom_field_id']; ?>][]" value="<?php echo $custom_field_value['custom_field_value_id']; ?>" checked="checked" />
						                    <?php echo $custom_field_value['name']; ?></label>
						                  <?php } else { ?>
						                  <label>
						                    <input type="checkbox" name="custom_field[<?php echo $custom_field['custom_field_id']; ?>][]" value="<?php echo $custom_field_value['custom_field_value_id']; ?>" />
						                    <?php echo $custom_field_value['name']; ?></label>
						                  <?php } ?>
						                </div>
						                <?php } ?>
						              </div>
						              <?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
						              <div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
						              <?php } ?>
						            </div>
						          </div>
						          <?php } ?>
						          <?php if ($custom_field['type'] == 'text') { ?>
						          <div class="form-group<?php echo ($custom_field['required'] ? ' required' : ''); ?> custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
						            <label class="col-sm-2 control-label" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
						            <div class="col-sm-10">
						              <input type="text" name="custom_field[<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo (isset($address_custom_field[$custom_field['custom_field_id']]) ? $address_custom_field[$custom_field['custom_field_id']] : $custom_field['value']); ?>" placeholder="<?php echo $custom_field['name']; ?>" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
						              <?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
						              <div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
						              <?php } ?>
						            </div>
						          </div>
						          <?php } ?>
						          <?php if ($custom_field['type'] == 'textarea') { ?>
						          <div class="form-group<?php echo ($custom_field['required'] ? ' required' : ''); ?> custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
						            <label class="col-sm-2 control-label" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
						            <div class="col-sm-10">
						              <textarea name="custom_field[<?php echo $custom_field['custom_field_id']; ?>]" rows="5" placeholder="<?php echo $custom_field['name']; ?>" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control"><?php echo (isset($address_custom_field[$custom_field['custom_field_id']]) ? $address_custom_field[$custom_field['custom_field_id']] : $custom_field['value']); ?></textarea>
						              <?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
						              <div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
						              <?php } ?>
						            </div>
						          </div>
						          <?php } ?>
						          <?php if ($custom_field['type'] == 'file') { ?>
						          <div class="form-group<?php echo ($custom_field['required'] ? ' required' : ''); ?> custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
						            <label class="col-sm-2 control-label"><?php echo $custom_field['name']; ?></label>
						            <div class="col-sm-10">
						              <button type="button" id="button-custom-field<?php echo $custom_field['custom_field_id']; ?>" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-default"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
						              <input type="hidden" name="custom_field[<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo (isset($address_custom_field[$custom_field['custom_field_id']]) ? $address_custom_field[$custom_field['custom_field_id']] : ''); ?>" />
						              <?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
						              <div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
						              <?php } ?>
						            </div>
						          </div>
						          <?php } ?>
						          <?php if ($custom_field['type'] == 'date') { ?>
						          <div class="form-group<?php echo ($custom_field['required'] ? ' required' : ''); ?> custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
						            <label class="col-sm-2 control-label" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
						            <div class="col-sm-10">
						              <div class="input-group date">
						                <input type="text" name="custom_field[<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo (isset($address_custom_field[$custom_field['custom_field_id']]) ? $address_custom_field[$custom_field['custom_field_id']] : $custom_field['value']); ?>" placeholder="<?php echo $custom_field['name']; ?>" data-date-format="YYYY-MM-DD" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
						                <span class="input-group-btn">
						                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
						                </span></div>
						              <?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
						              <div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
						              <?php } ?>
						            </div>
						          </div>
						          <?php } ?>
						          <?php if ($custom_field['type'] == 'time') { ?>
						          <div class="form-group<?php echo ($custom_field['required'] ? ' required' : ''); ?> custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
						            <label class="col-sm-2 control-label" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
						            <div class="col-sm-10">
						              <div class="input-group time">
						                <input type="text" name="custom_field[<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo (isset($address_custom_field[$custom_field['custom_field_id']]) ? $address_custom_field[$custom_field['custom_field_id']] : $custom_field['value']); ?>" placeholder="<?php echo $custom_field['name']; ?>" data-date-format="HH:mm" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
						                <span class="input-group-btn">
						                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
						                </span></div>
						              <?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
						              <div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
						              <?php } ?>
						            </div>
						          </div>
						          <?php } ?>
						          <?php if ($custom_field['type'] == 'datetime') { ?>
						          <div class="form-group<?php echo ($custom_field['required'] ? ' required' : ''); ?> custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
						            <label class="col-sm-2 control-label" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
						            <div class="col-sm-10">
						              <div class="input-group datetime">
						                <input type="text" name="custom_field[<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo (isset($address_custom_field[$custom_field['custom_field_id']]) ? $address_custom_field[$custom_field['custom_field_id']] : $custom_field['value']); ?>" placeholder="<?php echo $custom_field['name']; ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
						                <span class="input-group-btn">
						                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
						                </span></div>
						              <?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
						              <div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
						              <?php } ?>
						            </div>
						          </div>
						          <?php } ?>
						          <?php } ?>
						          <?php } ?>


						          <!-- <div class="form-group">
						            <label class="col-sm-2 control-label"><?php echo $entry_default; ?></label>
						            <div class="col-sm-10">
						              <?php if ($default) { ?>
						              <label class="radio-inline">
						                <input type="radio" name="default" value="1" checked="checked" />
						                <?php echo $text_yes; ?></label>
						              <label class="radio-inline">
						                <input type="radio" name="default" value="0" />
						                <?php echo $text_no; ?></label>
						              <?php } else { ?>
						              <label class="radio-inline">
						                <input type="radio" name="default" value="1" />
						                <?php echo $text_yes; ?></label>
						              <label class="radio-inline">
						                <input type="radio" name="default" value="0" checked="checked" />
						                <?php echo $text_no; ?></label>
						              <?php } ?>
						            </div>
						          </div> -->
						            <div class="col-md-3 col-sm-4 col-xs-6 for-small">
                		                <input type="submit" class="editinfo" value="<?php echo $button_continue; ?>" />
                		            </div>
						        </fieldset>
						    </form>
			           <?php echo $content_bottom; ?>
			          </div>
			        </div>
			    </div>  
			</div>
		</div>	      
    </div>
    <?php echo $column_right; ?>
    </div>
</div>
<script type="text/javascript"><!--
// Sort the custom fields
$('.form-group[data-sort]').detach().each(function() {
	if ($(this).attr('data-sort') >= 0 && $(this).attr('data-sort') <= $('.form-group').length-2) {
		$('.form-group').eq(parseInt($(this).attr('data-sort'))+2).before(this);
	}

	if ($(this).attr('data-sort') > $('.form-group').length-2) {
		$('.form-group:last').after(this);
	}

	if ($(this).attr('data-sort') == $('.form-group').length-2) {
		$('.form-group:last').after(this);
	}

	if ($(this).attr('data-sort') < -$('.form-group').length-2) {
		$('.form-group:first').before(this);
	}
});
//--></script>
<script type="text/javascript"><!--
$('button[id^=\'button-custom-field\']').on('click', function() {
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
					$(node).parent().find('.text-danger').remove();

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
//--></script>
<script type="text/javascript"><!--
$('select[name=\'country_id\']').on('change', function() {
	$.ajax({
		url: 'index.php?route=account/account/country&country_id=' + this.value,
		dataType: 'json',
		beforeSend: function() {
			$('select[name=\'country_id\']').after(' <i class="fa fa-circle-o-notch fa-spin"></i>');
		},
		complete: function() {
			$('.fa-spin').remove();
		},
		success: function(json) {
			if (json['postcode_required'] == '1') {
				$('input[name=\'postcode\']').parent().parent().addClass('required');
			} else {
				$('input[name=\'postcode\']').parent().parent().removeClass('required');
			}

			html = '<option value=""><?php echo $text_select; ?></option>';

			if (json['zone'] && json['zone'] != '') {
				for (i = 0; i < json['zone'].length; i++) {
					html += '<option value="' + json['zone'][i]['zone_id'] + '"';

					if (json['zone'][i]['zone_id'] == '<?php echo $zone_id; ?>') {
						html += ' selected="selected"';
			  		}

			  		html += '>' + json['zone'][i]['name'] + '</option>';
				}
			} else {
				html += '<option value="0" selected="selected"><?php echo $text_none; ?></option>';
			}

			$('select[name=\'zone_id\']').html(html);
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});

$('select[name=\'country_id\']').trigger('change');
//--></script>
<?php echo $footer; ?>
