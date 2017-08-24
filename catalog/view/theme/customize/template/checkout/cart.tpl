<?php echo $header; ?>
<div class="container">
  <section class="banner-section"><!--Banner Section-->
    <div class="inner-banner"><!--banner-->
        <img src="catalog/view/theme/customize/image/inner-banner1.jpg" alt=""/>
     </div><!--banner-->
  </section><!--Banner Section-->
  
  <section class="content-section">
      <div class="bredcrumb"><!--bredcrumb-->      
            <ul>
                <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                <?php } ?>
            </ul> 
      </div> <!--bredcrumb-->
      
      <div class="wrap_notfiy">  
        <?php if ($attention) { ?>
        <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $attention; ?>
          <button type="button" class="close" data-dismiss="alert">&times;</button>
        </div>
        <?php } ?>
        <?php if ($success) { ?>
        <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
          <button type="button" class="close" data-dismiss="alert">&times;</button>
        </div>
        <?php } ?>

        <?php if ($error_warning) { ?>
        <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
          <button type="button" class="close" data-dismiss="alert">&times;</button>
        </div>
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
                    <h2><?php echo $heading_title; ?></h2>
                    <div class="list-item full-width">
                        <ul>
                            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
                          <?php foreach ($products as $product) { ?>
                              <li class="spcbor">
                                <div class="row">

                                    <div class="col-md-3 col-sm-3 col-xs-4 for-small image">
                                    <?php if ($product['thumb']) { ?>
                                      <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail" /></a>
                                           <?php } ?>       
                                    </div> <!-- /.image -->
                                    <div class="col-md-9 col-sm-9 col-xs-8 for-small text_part">
                                        <h2><?php echo $product['name']; ?>
                                        <?php if (!$product['stock']) { ?>
                                        <span class="text-danger">***</span>
                                        <?php } ?>
                                        </h2>
                                        <p class="price"><?php echo $text_price; ?> : <span><?php echo $product['price']; ?></span></p>
                                        <div class="select_area full-width">
                                            <label><?php echo $text_quantity; ?> </label>
                                            <select class="quantity" name="quantity[<?php echo $product['cart_id']; ?>]">
                                                <?php for($cp=1; $cp<=$product['product_quantity']; $cp++){ ?>
                                                   <option  <?php if($product['quantity']==$cp){ echo 'selected'; } ?>
                                                              value="<?php echo $cp; ?>" ><?php echo $cp; ?></option>
                                                <?php } ?>
                                            </select> 
                                        </div><!-- /.select_area -->
                                        <div class="button_total full-width">
                                           <button id="remove" type="button" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn2 btn-danger" onclick="cart.remove('<?php echo $product['cart_id']; ?>');">Remove</button>
                                          <span class="total">
                                           <?php echo $text_total; ?> :<?php echo $product['total']; ?>
                                          </span><!-- /.total -->
                                        </div><!-- /.button_total -->
                                    </div><!-- /.text_part -->
                                </div> <!-- /.row --> 
                              </li>
                            <?php }?>
                          </form>
                        </ul>
                    </div><!-- /.list-item -->
                    <div class="continue_shopping">
                      <h3><?php echo $totals[1]['title']; ?>: <?php echo $totals[1]['text']; ?></h3>
                        <div class="pull-right checkout"><a href="<?php echo $checkout; ?> "><?php echo $button_checkout; ?></a></div>
                          <div class="pull-right continue-shop">  <a href="<?php echo $continue; ?>  "><?php echo $button_shopping; ?></a>
                          </div>
                    </div><!-- /.continue_shopping -->                                
            </div>
          </div>
      </div>
  </section>
    <?php echo $content_bottom; ?>
</div>
  <?php echo $column_right; ?></div>
</div>
<script type="text/javascript">
$(".quantity").change(function() {
    $(".quantity").closest('form').submit();
});
</script>
<?php echo $footer; ?>
