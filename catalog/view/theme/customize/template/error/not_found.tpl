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
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <h1><?php echo $heading_title; ?></h1>
      <p class="txt_error"><?php echo $text_error; ?></p>
      <div class="buttons clearfix">
        <div class="pull-right"><a href="<?php echo $continue; ?>" id="continueOrder"><?php echo $button_continue; ?></a></div>
      </div>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>
