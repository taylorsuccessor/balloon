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
    <?php if ($error_warning) { ?>
      <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
    </div>
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
      <div class="well">
      <h1 class="forg"><?php echo $heading_title; ?></h1>
      <p class="forg"><?php echo $text_email; ?></p>
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
        <fieldset>
          <legend><?php //echo $text_your_email; ?></legend>
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-email"><?php echo $entry_email; ?></label>
            <div class="col-sm-10">
              <input type="text" name="email" value="<?php echo $email; ?>" placeholder="<?php echo $entry_email; ?>" id="input-email" class="form-control" />
            </div>
          </div>
        </fieldset>
        <div class="buttons clearfix">
          <div class="pull-right">
            <input type="submit" value="<?php echo $button_continue; ?>" class="login" />
          </div>
        </div>
        </div>
      </form>
      </section>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>