/*===============================
 	Author's Custom JavaScript
  ===============================*/

$(document).ready(function() {

/*banner*/
$('.banner-slider').bxSlider({
	auto:true,
	mode:'fade',
	nextText:"",
	prevText:"",
	pager:false,
	controls:false,
	speed:1000
});

/*Product Image Thumb*/
$('#product-thumb').bxSlider({
  pagerCustom: '#bx-pager2',
  mode:'fade',
  controls:false,
});


var $hideElement = $('#menuDiv');
$('#menu').on('click', function(){
		$hideElement.addClass('opend');
	});
	$('#active_menu').on('click', function(){
		$hideElement.removeClass('opend');
});



/*selcet color*/
$('.color-slider').bxSlider({
  pagerCustom: '#bx-pager',
  mode:'fade',
  controls:false,
});

$('.slider_cover').on('mouseenter', '#bx-pager a', function(){
	$(this).trigger('click');
});



/*Latest Product Slide*/
        $("#owl-demo").owlCarousel({
 
      autoPlay: 3000, //Set AutoPlay to 3 seconds
      items : 3,
      itemsDesktop : [1199,3],
      itemsDesktopSmall : [979,3],
	  navigation : true
 
  });
	 
/*Featured Products Slide*/
       $("#owl-demo2").owlCarousel({
 
      autoPlay: 3000, //Set AutoPlay to 3 seconds
      items : 4,
      itemsDesktop : [1199,3],
      itemsDesktopSmall : [979,3],
	    navigation : true
 
  });
  
/*Latest Product services*/
        $("#owl-demo3").owlCarousel({
 
      autoPlay: 3000, //Set AutoPlay to 3 seconds
      items : 3,
      itemsDesktop : [1199,3],
      itemsDesktopSmall : [979,3],
	  navigation : true
	  
 
  });
    /*Latest Product services*/
    $("#owl-demo4").owlCarousel({

       // autoPlay: 3000, //Set AutoPlay to 3 seconds
        items : 3,
        itemsDesktop : [1199,3],
        itemsDesktopSmall : [979,3],
        navigation : false


    });


}); 

/*Number Count*/  
$(function(){
	$('#up').on('click', function(){
		var value = $('#value').val();
		value++;
		$('#value').val(value);
	});	
	$('#down').on('click', function(){
		var value = $('#value').val();
		value--;
		$('#value').val(value);
	});	
});


/*Vertical Slider*/

  jQuery(document).ready(function($) {
 
        $('#myCarousel').carousel({
                interval: 5000
        });
 
        //Handles the carousel thumbnails
        $('[id^=carousel-selector-]').click(function () {
        var id_selector = $(this).attr("id");
        try {
            var id = /-(\d+)$/.exec(id_selector)[1];
            console.log(id_selector, id);
            jQuery('#myCarousel').carousel(parseInt(id));
        } catch (e) {
            console.log('Regex failed!', e);
        }
    });
        // When the carousel slides, auto update the text
        $('#myCarousel').on('slid.bs.carousel', function (e) {
                 var id = $('.item.active').data('slide-number');
                $('#carousel-text').html($('#slide-content-'+id).html());
        });
});

 $(document).ready(function(e) {
       $(".accordion_example9").smk_Accordion({
      //closeAble: true, //boolean 
      });
  });

     
     


