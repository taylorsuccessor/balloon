<?php echo $header; ?>
<div class="container">
  <section class="banner-section"><!--Banner Section-->
    <div class="inner-banner"><!--banner-->
        <img src="catalog/view/theme/customize/image/inner-banner1.jpg" alt=""/>
     </div><!--banner-->
  </section><!--Banner Section-->
  
  
<!--  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  -->
  <section class="content-section">
  
   <div class="bredcrumb"><!--bredcrumb-->      
        <?php //print_r($breadcrumbs) ;?>
            <ul>
                <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                <?php } ?>
            </ul> 
      </div> <!--bredcrumb-->
      
   
  
  <?php if ($error_warning) { ?>
  <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
  <?php } ?>
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
     
      <div class="full-width common">
      
      <div class="row">
     
      <div class="col-md-3 col-sm-3 col-xs-12 side_navigation">
        
        <ul>
              <li><a href="user-profile-account-information.html" class="active">Account information</a></li>
              <li><a href="user-profile-address-book.html">Address book</a></li>
              <li><a href="user-profile-orders.html">your orders</a></li>
              <li><a href="user-profile-change-password.html">Change password</a></li>
                                        
        </ul>
        
          </div><!-- /.side_navigation -->
           
          <div class="col-md-9 col-sm-9 col-xs-12 content_area">
          
                           <h2><span><?php echo $text_your_details; ?></span></h2>

          <div class="row">
                 
                  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
                  
                  <fieldset>

            
           
            
             <div class="col-md-6 col-sm-6 col-xs-6 for-small required">
             
            
              <label class ='col-sm-2 control-label labelfloat' for="input-firstname"><?php echo $entry_firstname; ?> </label>
              

              <input type="text" name="firstname" value="<?php echo $firstname; ?>" placeholder="<?php echo $entry_firstname; ?>" id="input-firstname" class="form-control" />
              
              <?php if ($error_firstname) { ?>
              <div class="text-danger"><?php echo $error_firstname; ?></div>
              <?php } ?>
              
              
             </div>
          
             
                     
                  
                  
            
             <div class="col-md-6 col-sm-6 col-xs-6 for-small required">
                
                
                <label class ='control-label labelfloat'for="input-email"><?php echo $entry_email; ?></label>
                

                
              <input type="email" name="email" value="<?php echo $email; ?>" placeholder="<?php echo $entry_email; ?>" id="input-email" class="form-control" />
              
              <?php if ($error_email) { ?>
              <div class="text-danger"><?php echo $error_email; ?></div>
              <?php } ?>
                 </div>
           
                   

            

                                    
            <div class="col-md-6 col-sm-6 col-xs-6 for-small mobile required"><!--Mobile-->
            
               
                <label><?php echo $entry_telephone; ?></label>
           
             <select>
                					<option>+333</option>
                					<option>+333</option>
                					<option>+333</option>
             </select>
             
            <input type="tel" name="telephone" value="<?php echo $telephone; ?>" placeholder="<?php echo $entry_telephone; ?>" id="input-telephone" class="form-control" />
             
              
              <?php if ($error_telephone) { ?>
              <div class="text-danger"><?php echo $error_telephone; ?></div>
              <?php } ?>
            
         
            </div><!--/ Mobile-->
                   
                    
            
                    
                <div class="col-md-6 col-sm-6 col-xs-6 for-small required">
                               
                				<button>Edit Info</button>
                </div>
                      
                      
                      </fieldset> 
                      
              </form>
              
              </div>
              
              
              
                		<hr>
                		<h2><?php echo $text_edit_address; ?></h2>
                		
              <div class="row"><!--row 2 -->
              
            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
              
              <fieldset>

              
            <div class="col-md-6 col-sm-6 col-xs-6 for-small  required">
                	
        
         <label class="col-sm-2 control-label" for="input-address-1"><?php echo $entry_address_1; ?></label>
             
            
              <input type="text" name="address_1" value="<?php echo $address_1; ?>" placeholder="<?php echo $entry_address_1; ?>" id="input-address-1" class="form-control" />
              
              <?php if ($error_address_1) { ?>
              
              <div class="text-danger"><?php echo $error_address_1; ?></div>
              <?php } ?>
            
          
            
          </div>
            
            
             <div class="col-md-6 col-sm-6 col-xs-6 for-small">
                				<label>Area</label>
                				<input type="text" placeholder="Abu Halifa" />
                			</div><!-- /.for-small -->
             
             
             </fieldset>
                       
                           
            </form>

             
              </div><!--/row 2 -->
                		
                				
              </div>
          
          </div>
          
          </div><!-- /row-->
     
         </div><!-- /full-width common -->
        </div><!-- /balloons-->
      </div>
     
     
 




















<script type="text/javascript"><!--
// Sort the custom fields
$('.form-group[data-sort]').detach().each(function() {
	if ($(this).attr('data-sort') >= 0 && $(this).attr('data-sort') <= $('.form-group').length) {
		$('.form-group').eq($(this).attr('data-sort')).before(this);
	}

	if ($(this).attr('data-sort') > $('.form-group').length) {
		$('.form-group:last').after(this);
	}

	if ($(this).attr('data-sort') == $('.form-group').length) {
		$('.form-group:last').after(this);
	}

	if ($(this).attr('data-sort') < -$('.form-group').length) {
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
    </section>
</div>
<?php echo $footer; ?>
