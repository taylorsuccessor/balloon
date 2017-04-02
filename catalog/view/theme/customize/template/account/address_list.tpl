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
    <div class="wrap_notfiy">
      <?php if ($success) { ?>
      <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?></div>
      <?php } ?>
      <?php if ($error_warning) { ?>
      <div class="alert alert-warning"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
      <?php } ?>
    </div>  
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
                <div class="row">     
                      <?php if ($addresses) { ?>
                          <?php foreach ($addresses as $result) { ?>
                            <td class="text-left"><?php echo $result['address']; ?></td>
                            <td class="text-right"><a href="<?php echo $result['update']; ?>" class="btn btn-info"><?php echo $button_edit; ?></a> &nbsp; <a href="<?php echo $result['delete']; ?>" class="btn btn-danger"><?php echo $button_delete; ?></a></td>
                          <?php } ?>

                      <?php } else { ?>
                      <p><?php echo $text_empty; ?></p>
                      <?php } ?>
                      <div class="buttons clearfix">
                        <div class="pull-left"><a href="<?php echo $back; ?>" class="btn btn-default"><?php echo $button_back; ?></a></div>
                        <div class="pull-right"><a href="<?php echo $add; ?>" class="btn btn-primary"><?php echo $button_new_address; ?></a></div>
                      </div>
                      <?php echo $content_bottom; ?>
              </div><!-- /.content_area -->      
            </div>
          </div>
      </div>
    </div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>