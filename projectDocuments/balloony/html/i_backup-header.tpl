<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
<?php if ($direction == 'rtl') { ?>
<link href="catalog/view/javascript/bootstrap/css/bootstrap-a.css" rel="stylesheet" media="screen" />
<link href="catalog/view/theme/customize/stylesheet/stylesheet-a.css" rel="stylesheet">
<?php } else { ?>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.css" rel="stylesheet" media="screen" />
<link href="catalog/view/theme/customize/stylesheet/stylesheet.css" rel="stylesheet">
<?php } ?>
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
</head>
<body class="<?php echo $class; ?>">
<nav id="top">
  <div class="container">
    <?php echo $currency; ?>
    <?php echo $language; ?>
    <div id="top-links" class="nav pull-right">
      <ul class="list-inline">
        <li><a href="<?php echo $contact; ?>"><i class="fa fa-phone"></i></a> <span class="hidden-xs hidden-sm hidden-md"><?php echo $telephone; ?></span></li>
        <li class="dropdown"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_account; ?></span> <span class="caret"></span></a>
          <ul class="dropdown-menu dropdown-menu-right">
            <?php if ($logged) { ?>
            <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
            <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
            <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
            <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
            <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
            <?php } else { ?>
            <li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
            <li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
            <?php } ?>
          </ul>
        </li>
        <li><a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"><i class="fa fa-heart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_wishlist; ?></span></a></li>
        <li><a href="<?php echo $shopping_cart; ?>" title="<?php echo $text_shopping_cart; ?>"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_shopping_cart; ?></span></a></li>
        <li><a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"><i class="fa fa-reply"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_checkout; ?></span></a></li>
      </ul>
    </div>
  </div>
</nav>
<header>
  <div class="container">
    <div class="row">
      <div class="col-sm-4">
        <div id="logo">
          <?php if ($logo) { ?>
          <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
          <?php } else { ?>
          <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
          <?php } ?>
        </div>
      </div>
      <div class="col-sm-5"><?php echo $search; ?>
      </div>
      <div class="col-sm-3"><?php echo $cart; ?></div>
    </div>
  </div>
</header>
<?php if ($categories) { ?>
<div class="container"><!--container-->
<div class="main-nav"><!--main-nav-->
                  <nav class="navbar navbar-default">
  <div class="row">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    <div class="row">
<div class="pull-left">
          <ul class='<?php echo $class; ?>'>
           <li><a href="<?php echo $home; ?>">Home</a></li>
          <li>
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">About Us <span class="caret"></span></a>
            <ul class="dropdown-menu">
              <li><a href="#">About Balloony</a></li>
              <li><a href="#">Location Map</a></li>
              <li><a href="#">Our Staff</a></li>
            </ul>
          </li>
          <?php  
          // send gift item
          foreach ($categories as $category_1) { //print_r($category_1['children'][0]); 
          if ($category_1['children'][0]) { ?>
        <?php //foreach ($category_1['children'][0] as $category_2) { ?>
               <li><a href="<?php echo $category_1['children'][0]['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category_1['children'][0]['name']; ?><span class="caret"></span></a>
            <?php if ($category_1['children'][0]['children']) { ?>
                <ul >
              <?php foreach ($category_1['children'][0]['children'] as $category_3) { ?>

                    <li class="dropdown-submenu"><a href="<?php echo $category_3['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category_3['name']; ?></a>

                 <?php if ($category_3['children']) { ?>
                  <ul>
                    <?php foreach ($category_3['children'] as $category_4) { ?>
                    <li><a href="<?php echo $category_4['href']; ?>"><?php echo $category_4['name']; ?></a></li>
                    <?php } ?>
                  </ul>
                  <?php } ?>

              <?php } ?>
                  </li>
            <?php } ?>
                </ul>
        <?php } ?>
              </li>
          <?php //} ?>
          <?php } ?>
          
          </ul>  
</div>
</div><hr/><br/>
<div class="pull-right"></div>
  <?php  foreach ($categories as $category_1) { ?>
 <?php       /* if($category_1['sort_order'] == 1)
          {
           $class="nav navbar-nav navbar-left";
          }
          else{
           $class="nav navbar-nav navbar-right";
          }*/

           
?>
      <?php if ($category_1['children']) { ?>
     
          <ul class='<?php echo $class; ?>'>
           <li><a href="<?php echo $home; ?>">Home</a></li>
          <li>
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">About Us <span class="caret"></span></a>
            <ul class="dropdown-menu">
              <li><a href="#">About Balloony</a></li>
              <li><a href="#">Location Map</a></li>
              <li><a href="#">Our Staff</a></li>
            </ul>
          </li>

        <?php foreach ($category_1['children'] as $category_2) { ?>
               <li><a href="<?php echo $category_2['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category_2['name']; ?><span class="caret"></span></a>
            <?php if ($category_2['children']) { ?>
                <ul class="dropdown-menu">
              <?php foreach ($category_2['children'] as $category_3) { ?>

                    <li class="dropdown-submenu"><a href="<?php echo $category_3['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category_3['name']; ?></a>

                 <?php if ($category_3['children']) { ?>
                  <ul class="dropdown-menu">
                    <?php foreach ($category_3['children'] as $category_4) { ?>
                    <li><a href="<?php echo $category_4['href']; ?>"><?php echo $category_4['name']; ?></a></li>
                    <?php } ?>
                  </ul>
                  <?php } ?>

              <?php } ?>
                  </li>
            <?php } ?>
                </ul>
        <?php } ?>
              </li>
      <?php } ?>
            <li><a href="<?php echo $contact; ?>">Contact Us</a></li>
            </ul>
  <?php break; } ?>
          
        </div>            

<?php } ?>
