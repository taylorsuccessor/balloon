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
	    </div> <!--bredcrumb-->	
    <div class="wrap_notfiy">  
		<?php if ($success) { ?>
		<div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
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
		        <?php if ($products) { ?>
               	    <div class="list-item full-width">
	                	<ul>
	                	<?php foreach ($products as $product) { ?>
	                		<li class="spcbor">
		                		<div class="row">
		                			<div class="col-md-3 col-sm-3 col-xs-4 for-small image">
		                				<?php if ($product['thumb']) { ?>
					                        <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
					                    <?php } ?>
		                			</div> <!-- /.image -->
		                			<div class="col-md-9 col-sm-9 col-xs-8 for-small text_part">
		                				<h2>
		                				    <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
		                				</h2>
		                				<p class="price">
		                				    <?php if ($product['price']) { ?>
							                    <div class="price">
									               <?php echo $text_price; ?> :<span><?php echo $product['price']; ?></span>
							                    </div>
				                            <?php } ?>
		                				</p>
		                				
		                				<div class="button_total full-width">
                                            <a href="<?php echo $product['remove']; ?>" role="button"  id="remove"  data-toggle="tooltip" title="<?php echo $button_remove; ?>"><?php echo $button_remove; ?></a>
		                					<button type="button"  onclick="cart.add('<?php echo $product['product_id']; ?>');" data-toggle="tooltip" title="<?php echo $button_cart; ?>" id="addTocart"><?php echo $button_cart; ?>
		                					</button>
		                					<span class="total">
		                					<?php  echo $text_total;?>:<?php  echo $product['total'];?>
		                					</span><!-- /.total -->
		                				</div><!-- /.button_total -->
		                			</div><!-- /.text_part -->
		                		</div> <!-- /.row -->	
	                		</li>
	                    <?php } ?>
	                	</ul>
	                </div><!-- /.list-item -->
	                <div class="continue_shopping">
	                    <a href="<?php echo $continue_shopping; ?>" role="button"><?php echo $button_shopping; ?></a>
	                </div><!-- /.continue_shopping -->  
	                <?php } //end if products ?>                            
                </div><!--balloons-->	        
		    </div>
		    <?php echo $column_right; ?>
		</div>
    </section>		
</div>
<?php echo $footer; ?>