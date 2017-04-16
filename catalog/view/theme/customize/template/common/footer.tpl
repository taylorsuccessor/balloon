 <footer><!--footer-->
      <div class="footer-top"><!--footer-top-->
      <div class="container"><!--container-->
          <div class="row"><!--row-->
          <div class="col-md-7"><!--col-md-7-->
              <div class="footer-left"><!--footer-left-->
                  <h2>Join Our <span>Mailing List</span></h2>
                    <p>please sign up to the mailing list to receive updates on new arrivals, special offers and 
other discount information.</p>
                  <form action="<?php echo $newsletterLink;?>" method="post">
                      <h4>NEWSLETTER</h4>
                      <input type="text" name="email" placeholder="Your Email Address">
                      <button type="submit">Submit</button>
                  </form>
                </div><!--footer-left-->
            </div><!--col-md-7-->
            <div class="col-md-5 col-xs-12"><!--col-md-5-->
              <div class="footer-right"><!--footer-right-->
                  <h2>Get  <span>App</span></h2>
                    <p>(Choose your native platform and get started !</p>
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
                  <p>Copyright 2016 © <span>Balloonyland</span>. All rights reserved.</p>
                    <ul>
						<?php foreach ($informations as $information) { ?>
				          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
				        <?php } ?>
				    </ul>    
                </div><!--col-md-6-->
                <div class="col-md-4 col-xs-12 powered"><!--col-md-6-->
                  <p>Powered By :<a href="http://www.mawaqaa.com/" target="_blank"><img src="catalog/view/theme/customize/image/icons/mawaqaa-logo.png" alt=""/></a></p>
                </div><!--col-md-6-->
            </div><!--row-->
            </div>
        </div><!--footer-botm-->
    </footer><!--footer-->
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


                
</body></html>

