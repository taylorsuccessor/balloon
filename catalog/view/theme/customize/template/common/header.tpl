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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script><!--jquery.min-->
<!-- <script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>  -->
<script src="catalog/view/javascript/js/custom.js"></script><!--custom-->
<script src="catalog/view/javascript/js/bootstrap.min.js"></script><!--custom--> 
<script src="catalog/view/javascript/jquery/owl-carousel/owl.carousel.js"></script><!--custom-->  
<script type="text/javascript" src="catalog/view/javascript/js/smk-accordion.js"></script> 
<script src="catalog/view/javascript/js/jquery.bxslider.min.js"></script><!--bxslider.min-->
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
<?php if ($direction == 'rtl') { ?>
<link href="catalog/view/javascript/bootstrap/css/bootstrap-a.css" rel="stylesheet" media="screen" />
<link href="catalog/view/theme/customize/stylesheet/stylesheet-a.css" rel="stylesheet">
<link href="catalog/view/theme/customize/stylesheet/smk-accordion-ar.css" rel="stylesheet">
<link href="catalog/view/theme/customize/stylesheet/owl.carousel-ar.css" rel="stylesheet">

<?php } else { ?>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.css" rel="stylesheet" media="screen" />
<link href="catalog/view/theme/customize/stylesheet/stylesheet.css" rel="stylesheet">
<link href="catalog/view/theme/customize/stylesheet/smk-accordion.css" rel="stylesheet">

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
<section><!--Header Section-->
    <header><!--header-->
<?php if ($categories) { ?>
<div class="container"><!--container-->
        <div class="logo"><!--logo-->
        <?php if ($logo) { ?>
           <a href="<?php echo $home; ?>"><img src="catalog/view/theme/customize/image/icons/logo.png" alt=""/></a>
        <?php } else { ?>
          <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
        <?php } ?>
        </div><!--logo-->
        
        
        <div class="top-nav"><!--top-nav-->
            <div class="top-nav-left"><!--Top nav Left-->
                <ul>
                    <li><a href="https://www.facebook.com/BalloonyLand/"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                    <li><a href="https://twitter.com/balloonyland?lang=en"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                    <li><a href="https://www.instagram.com/balloonylan"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                    <li><a href="<?php echo $wishlist;?>"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                    <li><a href="<?php echo $shopping_cart;?>"><i class="fa fa-shopping-cart" aria-hidden="true"></i>
                        </a></li>
                    <li><a href="http://openc/index.php?route=product/search"><i class="fa fa-search"  aria-hidden="true"></i></a></li>
                </ul>
            </div><!--Top nav Left-->
            <div class="top-nav-right"><!--top-nav-right-->
                <ul>
                <?php if ($logged) { ?>
		            <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
		            <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
		            <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
                <li><a href=""><?php echo $language; ?></a></li>
                <?php } else { ?>
                    <li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
                    <li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
                    <li><a href=""><?php echo $language; ?></a></li>

                <?php } ?>    
                </ul>
            </div><!--top-nav-right-->
        </div><!--top-nav-->
        
        
        
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
  <?php foreach ($categories as $category_1) { ?>
     <?php
         
     if($category_1['children'][0])
              {
               //$class="nav navbar-nav navbar-left";
               //start add be me ?>
                    <ul class='nav navbar-nav navbar-left'>
                       <li><a href="<?php echo $home; ?>">Home</a></li>
                      <li>
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">About Us <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                          <li><a href="http://openc//index.php?route=information/information&information_id=7">About Balloony</a></li>
                          <li><a href="http://openc//index.php?route=information/information&information_id=8">Location Map</a></li>
                          <li><a href="http://openc//index.php?route=information/information&information_id=9">Our Staff</a></li>
                        </ul>
                      </li>
                      <li>
                        <?php 
                          $values = array_values($category_1['children'][0]);
                        ?>
                      <a href="#" class="dropdown-toggle" data-toggle="dropdown"><?php echo $values[0];?><span class="caret"></span></a>
                      <ul class="dropdown-menu">
                   <?php foreach ($category_1['children'][0] as $category_level2) { ?> 
                    <?php if (is_array($category_level2) || is_object($category_level2)){ foreach ($category_level2 as $categorysublevel2) {?>
                           <li class="dropdown-submenu"><a href="<?php echo $categorysublevel2['href']; ?>"><?php echo $categorysublevel2['name']; ?></a>
                        <?php if ($categorysublevel2) { ?>
                            <ul class="dropdown-menu">
                          <?php foreach ($categorysublevel2 as $category3) { ?>

                             <?php if (is_array($category3) || is_object($category3)) { ?>
                                <?php foreach ($category3 as $categorysublevel3) { ?>
                              
                               <li class="dropdown-submenu"><a href="<?php echo  $categorysublevel3['href']; ?>"><?php echo $categorysublevel3['name']; ?></a></li>
                                <?php  }?>
                              <?php } ?>

                          <?php } ?>
                        <?php } ?>
                         <!-- end last li-->
                            </ul>

                    <?php } }}?>
                    </li>
                    </ul>
                    </li>
                    </ul>
              
            <?php //var_dump($category_1['children'][0]);
              //end add right menu
              }
             if($category_1['children'][1] && $category_1['children'][2])
              {
               //start add be me ?>
                      <ul class='nav navbar-nav navbar-right'> 
                      <li>
                        <?php 
                          $values = array_values($category_1['children'][1]);
                          // print_r($values);
                        ?>
                      <a href="#" class="dropdown-toggle" data-toggle="dropdown"><?php echo $values[0];?><span class="caret"></span></a>
                      <ul class="dropdown-menu">
                   <?php foreach ($category_1['children'][1] as $category_2) { ?> 
                    <?php if (is_array($category_2) || is_object($category_2)){ foreach ($category_2 as $categorysub) {?>
                           <li class="dropdown-submenu"><a href="<?php echo $categorysub['href']; ?>"><?php echo $categorysub['name']; ?></a>
                        <?php if ($categorysub) { ?>
                            <ul class="dropdown-menu">
                          <?php foreach ($categorysub as $categoryuubfinal) { ?>

                             <?php if (is_array($categoryuubfinal) || is_object($categoryuubfinal)) { ?>
                                <?php foreach ($categoryuubfinal as $categorylastlevel) { ?>
                              
                               <li><a href="<?php echo  $categorylastlevel['href']; ?>"><?php echo $categorylastlevel['name']; ?></a></li> 
                                <?php  }?>
                              <?php } ?>

                          <?php } ?>
                        <?php } ?>
                            </ul>
                    <?php } }}?>
                    </li>
                    </ul>
                    </li>


                   <!-- for party suppliys -->
                    <li>
                        <?php 
                          $values = array_values($category_1['children'][2]);
                        ?>
                      <a href="#" class="dropdown-toggle" data-toggle="dropdown"><?php echo $values[0];?><span class="caret"></span></a>
                      <ul class="dropdown-menu">
                   <?php foreach ($category_1['children'][2] as $category_2) { ?> 
                    <?php if (is_array($category_2) || is_object($category_2)){ foreach ($category_2 as $categorysub) {?>
                           <li class="dropdown-submenu"><a href="<?php echo $categorysub['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $categorysub['name']; ?></a>
                        <?php if ($categorysub) { ?>
                            <ul class="dropdown-menu">
                          <?php foreach ($categorysub as $categoryuubfinal) { ?>

                             <?php if (is_array($categoryuubfinal) || is_object($categoryuubfinal)) { ?>
                                <?php foreach ($categoryuubfinal as $categorylastlevel) { ?>
                              
                               <li><a href="<?php echo  $categorylastlevel['href']; ?>"><?php echo $categorylastlevel['name']; ?></a></li> 
                                <?php  }?>
                              <?php } ?>

                          <?php } ?>
                        <?php } ?>
                            </ul>
                    <?php } }}?>
                    </li>
                    </ul>
                    </li>
                    <li><a href="<?php echo $contact; ?>">Contact Us</a></li>
              </ul>
              
            <?php
              //end add by me
              }

           }
          ?>
       </div><!-- /.navbar-collapse -->
     </div><!-- /.container-->
    </nav>
   </div>  <!--main-nav--> 
   
   

   <!--Mobile Only Nav-->
    <div class="mob-nav">
        <a href="#" id="menu"><img src="catalog/view/theme/customize/image/icons/menu.png" alt="menu"></a></div>
        <div id="menuDiv"><!-- /.menuDiv -->
	<a href="#" id="active_menu"><img src="catalog/view/theme/customize/image/icons/active_menu.png" alt="active_menu"/></a>
	<div class="accordion_example9">
		
			<!-- div 1 -->
			<div class="nosubnav">
				<div class="acc_head active"><a href="<?php echo $home; ?>">Home</a></div>
			</div>
            <!-- div 2 -->
			<div class="accordion_in">
				<div class="acc_head">About Us</div>
				<div class="acc_content">
					<div class="sub_links second-sub">
						<ul>
							<li><a href="#">About Balloony</a></li>
							<li><a href="#">Location Map + Contacts</a></li>
						    <li><a href="#">Our Staff</a></li>
						</ul>
          </div>	
			  </div>
			</div>
   
            <!-- div 3 -->
           
           <?php foreach ($categories as $category_1) 
           { ?>
           <?php
             if($category_1['children'])
                {?>
                 <?php foreach ($category_1['children'] as $category_2) 
                   { ?>
			  <div class="accordion_in">
					<div class="acc_head">
					 <?php echo $category_2['name'];?></div>
				     <?php if($category_2['children']) 
				      { ?>
				    
						<div class="acc_content">
							<div class="accordion_example9">
							<?php foreach ($category_2['children'] as $category_3) 
								    { ?>
								<div class="accordion_in">
									
										<div class="acc_head">
											
											<?php echo $category_3['name']; ?>
										 		
										</div>
									<?php  if ($category_3['children'])
												   { ?>
												    
														<div class="acc_content">
															<div class="sub_links second-sub">
																<ul>
												            <?php foreach ($category_3['children'] as $category_4) 
																	{  ?>
																		<li>
																		<a href="<?php echo $category_4['href']; ?>">
																		<?php echo $category_4['name']; ?>
																		</a>
																		</li>
															 <?php } ?>	
																</ul>
						                  </div> 
													  </div>
													   
						                      <?php }//end if category 3 ?>	
						                      
								</div><?php }//foreach category_2 child?>
						  </div>
				    </div>
			    </div>
			 <?php }//acc_head?>
				<?php }//if category?>
		  <?php }//for_each category1?>
		   <?php }//if category1?>
          <!-- <div class="nosubnav">
             <div class="acc_head"><a href="<?php echo $home; ?>">Home</a></div>
          </div> -->
      </div>
		</div>
</div><!-- /.menuDiv -->  
</header>
</section>
<?php } ?>
