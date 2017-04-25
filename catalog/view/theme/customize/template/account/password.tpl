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
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <div class="product-details-page"><!--balloons-->
        <h2><?php echo $text_user_profile; ?></h2>
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
              <h2><?php echo $text_password; ?></h2>
              <div class="row"> 
                <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
                  <fieldset>
                  <div class="full-width">
                      <div class="col-md-6 col-sm-6 col-xs-6 for-small required">
                        <label class="col-sm-2 control-label labelfloat" for="input-password"><?php echo $entry_password; ?></label>
                         <input type="password" name="password" value="<?php echo $password; ?>" placeholder="<?php echo $entry_password; ?>" id="input-password" class="form-control" />
                        <?php if ($error_password) { ?>
                        <div class="text-danger"><?php echo $error_password; ?></div>
                        <?php } ?>
                      </div><!-- /.for-small -->
                      <div class="col-md-6 col-sm-6 col-xs-6 for-small required">
                        <label class="col-sm-2 control-label labelfloat" for="input-confirm"><?php echo $entry_confirm; ?></label>
                          <input type="password" name="confirm" value="<?php echo $confirm; ?>" placeholder="<?php echo $entry_confirm; ?>" id="input-confirm" class="form-control" />
                        <?php if ($error_confirm) { ?>
                        <div class="text-danger"><?php echo $error_confirm; ?></div>
                        <?php } ?>
                      </div><!-- /.for-small -->
                  </div><!-- /.full-width -->
                  </fieldset>
                  <div class="col-md-12 col-sm-12 col-xs-12 for-small">
                    <input type="submit" role="button" class="updatePassword" value="<?php echo $button_continue; ?>" />
                  </div>
                </form>
                <?php echo $content_bottom; ?>
              </div><!-- /.row -->
            </div><!-- /.content_area -->
          </div><!-- /.row -->  
      </div><!-- /.common --> 
    </div>  <!-- /.products -->      
    </div><!-- /.content -->    
    </div><!-- /.row --> 
    </section> 
    <?php echo $column_right; ?></div>
<?php echo $footer; ?>