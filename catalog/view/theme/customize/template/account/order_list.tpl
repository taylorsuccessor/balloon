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
          <h2><?php echo $heading_title; ?></h2>
          <div class="full-width common">
            <div class="row">
              <div class="col-md-3 col-sm-3 col-xs-12 side_navigation">
                <ul class="list-unstyled">
                  <li><a href="<?php echo $edit; ?>"><?php echo $text_edit; ?></a></li>
                  <li><a href="<?php echo $address; ?>"><?php echo $text_address; ?></a></li>
                  <li><a href="<?php echo $order_link; ?>"><?php echo $text_my_orders; ?></a></li>
                  <li><a href="<?php echo $password; ?>"><?php echo $text_password; ?></a></li>
                </ul>
              </div><!-- .side_navigation -->
              <div class="col-md-9 col-sm-9 col-xs-12 content_area">
                <div class="row">
                    <?php if ($orders) { ?>
                      <div class="col-xs-12 orders">
                        <select  onchange="location = this.value;">
                          <option>

                          </option>

                        </select>
                        <label><?php echo $text_sort_by; ?></label>
                      </div><!-- /.col-xs-12 -->
                      <?php  ?>
                      <?php foreach ($orders as $order) { ?>
                    <div class="col-xs-12 order-details">
                      <h2> <a href="<?php echo $order['view']; ?>" title="<?php echo $button_view; ?>"><?php echo $text_order_id; ?><span><?php echo $order['order_id']; ?></span> </a> </h2>
                      <span class="date_time"><?php echo $text_date; ?> <?php echo $order['date_added']; ?> <!--23 Jan 2017 | <span>10 : 35 AM</span>--></span>
                      <span class="status"><?php echo $text_status; ?> <span><?php echo $order['status']; ?></span></span>
                    </div><!-- /.col-xs-12 -->
                    <?php } ?>
                    <?php } ?>

                      <a href="<?php echo $continue; ?>" role="button" id="continueOrder"><?php echo $button_continue; ?></a>

                  <?php echo $content_bottom; ?>
                </div> <!-- /.row -->
              </div><!-- /.content_area -->
            </div><!-- /.row -->
          </div><!-- /.common -->
      </div>  <!-- /.products -->
    </div><!-- /.content -->
  </div><!-- /.row -->
  </section>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>
