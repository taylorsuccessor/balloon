 <footer><!--footer-->
      <div class="footer-top"><!--footer-top-->
      <div class="container"><!--container-->
          <div class="row"><!--row-->
          <div class="col-md-7"><!--col-md-7-->
            <!--  <div class="wrap_notfiy">

                  <?php // if ($success) { ?>
                  <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php // echo $success; ?>
                      <button type="button" class="close" data-dismiss="alert">&times;</button>
                  </div>
                  <?php // } ?>

              </div>-->
              <div class="footer-left"><!--footer-left-->
                  <h2><?php echo $join_mailing_list;?></h2>
                    <p><?php echo $paragraph_mailing_list;?></p>
                  <form action="<?php echo $newsletterLink;?>" method="post">
                      <h4><?php echo $h4_newsletter;?></h4>
                      <br>
                      <input type="text" name="email" placeholder="<?php echo $place_holder_newsletter;?>">
                      <button type="submit"><?php echo $submit_button;?></button>
                  </form>
                </div><!--footer-left-->
            </div><!--col-md-7-->
            <div class="col-md-5 col-xs-12"><!--col-md-5-->
              <div class="footer-right"><!--footer-right-->
                  <h2><?php echo $get_app;?></h2>
                    <p><?php echo $native_platform;?></p>
                    <ul class="store">
                      <li><a href="#"><img src="catalog/view/theme/customize/image/icons/play-store-icon.png" alt=""/></a></li>
                        <li><a href="#"><img src="catalog/view/theme/customize/image/icons/app-store-icon.png" alt=""/></a></li>
                    </ul>
                </div><!--footer-right-->
            </div><!--col-md-5-->
           </div><!--row--> 
        </div><!--container-->
        </div><!--footer-top-->

        <div class="footer-botm"><!--footer-botm-->
          <div class="container">
              <div class="row"><!--row-->
              <div class="col-md-7 col-xs-12"><!--col-md-6-->
                  <p><?php echo $copy_right;?></p>
                    <ul>
						<?php foreach ($informations as $information) { ?>
				          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
				        <?php } ?>
				    </ul>    
                </div><!--col-md-6-->
                <div class="col-md-4 col-xs-12 powered"><!--col-md-6-->
                  <p><?php echo $powered_by;?><a href="http://www.mawaqaa.com/" target="_blank"><img src="catalog/view/theme/customize/image/icons/mawaqaa-logo.png" alt=""/></a></p>
                </div><!--col-md-6-->
            </div><!--row-->
            </div>
        </div><!--footer-botm-->


    </footer><!--footer-->

 <script src="catalog/view/javascript/js/g=builder_js.js"></script><!--custom-->
 <script src="catalog/view/javascript/js/icheck.js"></script><!--bxslider.min-->
    <script>
      $(document).ready(function(){
        var callbacks_list = $('.demo-callbacks ul');
        $('.demo-list input').on('ifCreated ifClicked ifChanged ifChecked ifUnchecked ifDisabled ifEnabled ifDestroyed', function(event){
              callbacks_list.prepend('<li><span>#' + this.id + '</span> is ' + event.type.replace('if', '').toLowerCase() + '</li>');
        }).iCheck({
          checkboxClass: 'icheckbox_square-blue',
          radioClass: 'iradio_square-blue',
          increaseArea: '20%'
        });
      });
    </script>
   


<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->
<!--
هذا السكربت مفتوح المصدر ولك الحرية لحذف عبارة الدعم والترجمة اذا اردت ذلك
واذا أعجبك عمل فريق الترجمة إلى اللغة العربية يمكنك التبرع بأي مبلغ عن طريق باي بال إلى
info@opencartarab.com
//-->
<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->


                

