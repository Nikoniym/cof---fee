// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery2
//= require jquery_ujs
//= require turbolinks
//= require ckeditor/init
//= require owl.carousel
//= require bootstrap-sprockets
//= require_tree ./plagin





var owl = function(){
	$('#Fowl').owlCarousel({
    loop:true,
    margin:10,
    nav:true,
    items: 1,
    navText: ["<i class='fa fa-angle-left' aria-hidden='true'></i>",'<i class="fa fa-angle-right" aria-hidden="true"></i>'],
    dots:true

})
};

var Sowl = function(){
	var owl = $('.sowl');
owl.owlCarousel({
    items:7,
    loop:true,
    margin:1,
    autoplay:true,
    autoplayTimeout:1000,
    autoplayHoverPause:true,
    dots:false
});
};

var partners = function(){
	$( ".hexagon" ).click(function() {
		var idHex= $(this).attr('id');
				 $('.partner-img').css({"filter": "grayscale(100%)"});
			$('.hexagon').removeClass('hex1');
		$('.hexagon').find( '.hexTop' ).removeClass('hex2');
		$('.hexagon').find( '.hexBottom' ).removeClass('hex3');
		 $(".partners-hidden").hide();
		 $('.span-border').css({"opacity": "0"});
		$(this).parent().parent().parent().parent().parent().next().find("#"+idHex).show();
		$( this ).next().css({"opacity": "1"});
		$( this ).addClass('hex1');
		$( this ).find( '.hexTop' ).addClass('hex2');
		$( this ).find( '.hexBottom' ).addClass('hex3');
		 $( this ).find('.partner-img').css({"filter": "none"});


})



};


hide =function(){

   $(document).mouseup(function (e)
{
    var container = $(".partners-hidden");

    if (!container.is(e.target) // if the target of the click isn't the container...
        && container.has(e.target).length === 0) // ... nor a descendant of the container
    {
        container.hide();
        $('.hexagon').removeClass('hex1');
		$('.hexagon').find( '.hexTop' ).removeClass('hex2');
		$('.hexagon').find( '.hexBottom' ).removeClass('hex3');
        $('.span-border').css({"opacity": "0"});
        $('.partner-img').css({"filter": "grayscale(100%)"});


    }
});

};


var isFirefox = function(){
var firefox = typeof InstallTrigger !== 'undefined';
 if (firefox == true) {
  $('.menu a li span').css({"font-size":"11px"});


    }


};




moreinfevent =function() {
  //select all the a tag with name equal to modal
  $('.photo-single').click(function(e) {

    //Cancel the link behavior
    e.preventDefault();
    var photo = $(this).attr('src');
    $('#dialog').css('background-image', 'url(' + photo + ')');
    //$('.forsrc').attr('src', photo);

    console.log(photo);
    var id = $('#dialog');

    //Get the screen height and width
    var maskHeight = $(document).height();
    var maskWidth = $(window).width();
    //Set height and width to mask to fill up the whole screen
    $('#mask').css({'width':maskWidth,'height':maskHeight});
    //transition effect
    $('#mask').fadeIn(1000);
    $('#mask').fadeTo("slow",0.8);

    //Get the window height and width
    var winH = $(window).height();
    var winW = $(window).width();
              if(winW > 450){
    //Set the popup window to center
   $('#dialog').css('top',  winH/2-$(id).height()/2);
    $('#dialog').css('left', winW/2-$(id).width()/2);
    };
    //transition effect

$(".window").fadeIn(2000);
  });

  //if close button is clicked
  $('.window .close').click(function (e) {
    //Cancel the link behavior
    e.preventDefault();
    $('#mask, .window').hide();
  });

  //if mask is clicked
  $('#mask').click(function () {
    $(this).hide();
    $('.window').hide();
  });

};



// var main = function() {
//   $('.article').click(function() {
//     $('.article').removeClass('current');
//     $('.description').hide();
//
//     $(this).addClass('current');
//     $(this).children('.description').show();
//   });
//
//   $(document).keypress(function(event) {
//     if(event.which === 111) {
//       $('.description').hide();
//
//       $('.current').children('.description').show();
//     }
//
//     else if(event.which === 110) {
//       var currentArticle = $('.current');
//       var nextArticle = currentArticle.next();
//       hidden-sh
//       currentArticle.removeClass('current');
//       nextArticle.addClass('current');
//     }
//   });
// };

//
// var mainmore = function() {
//     var qwer = false;
//   $('.text-more').click(function() {
//
//     if(qwer){
//
//         $(this).parent().next().hide();
//         qwer = false;
//         return;
//     }
//       $(this).parent().next().show();
//   qwer = true;
//   });
// };


var  tabs = function(){
$('#myTabs a').click(function (e) {
  e.preventDefault()
  $(this).tab('show')
})
};

var faq = function() {
  $('.article-faq').click(function() {

    $('.description-faq').hide();

    $(this).children('.description-faq').show();
  });


};


var powl = function(){
    var owl = $('.powl');
owl.owlCarousel({
    items:7,
    loop:true,
    margin:1,
    autoplay:true,
    autoplayTimeout:1000,
    autoplayHoverPause:true,
    dots:false
});
};




var cowl = function(){
    var owl = $('.cowl');
owl.owlCarousel({
    items:7,
    loop:true,
    margin:1,
    autoplay:true,
    autoplayTimeout:1000,
    autoplayHoverPause:true,
    dots:false
});
};

var mowl = function(){
    var owl = $('.mowl');
owl.owlCarousel({
    items:7,
    loop:true,
    margin:1,
    autoplay:true,
    autoplayTimeout:1000,
    autoplayHoverPause:true,
    dots:false
});
};

var mouse = function(){
  $(".hexagoncup").click(function(){
    $(".hexagoncup").removeClass('hexaf');
    $(".hexagoncup").removeClass('biggerhex');
    $(".hexagoncup").children().children().removeClass('h2forbig');

    $(this).addClass('hexaf');
     var idBig= $(this).attr('id');

       if (idBig === '4' ) {
        $(this).addClass('biggerhex');
        $(this).children().children().addClass('h2forbig');
    }

  });


};

var mousehover = function(){
  $(".hexagoncup").mouseenter(function(){
    $(".hexagoncup").removeClass('hexaf');
    $(".hexagoncup").removeClass('biggerhex');
    $(".hexagoncup").children().children().removeClass('h2forbig');

    $(this).addClass('hexaf');
     var idBig= $(this).attr('id');

       if (idBig.length > 10 && idBig.indexOf('-') == -1 ) {
        $(this).addClass('biggerhex');
        $(this).children().children().addClass('h2forbig');
    }

  });

    $(".hexagoncup").mouseleave(function(){
    $(".hexagoncup").removeClass('hexaf');
    $(".hexagoncup").removeClass('biggerhex');
    $(".hexagoncup").children().children().removeClass('h2forbig');



  });




};


var mousemap = function(){
  var flag=false;
  var content = $('.coffeehouse-single');
  $(".map-png div").mouseenter(function(){
    flag=false;

    var idMap= $(this).attr('id');

    $(this).children().animate({ height: '100%' }, 500);

     $('.array').find('#'+idMap).show();


  });


$( ".map-png div" ).click(function(e) {


 content.hide();
  idMap= $(this).attr('id');

  if( $(".map-png div").attr('id') !== idMap){
    $(".map-png div").children().animate({ height: '0%' }, 300);
  };

 $(this).children().stop(true, true).delay(500).animate({ height: '100%' }, 500);

   $('.array').find('#'+idMap).show();
  flag=true;




});

   $(".map-png div").mouseleave(function(){
        if(flag){

    return;
  }

      $(".map-png div").children().stop(true, true).delay(300).animate({ height: '0%' }, 300);
      content.hide();
});
};






var editlink = function() {




    var content = $('.edit-link');

    var sqz = $(".map-png div");

    $(sqz).click(function() {

    var idMap= $(this).attr('id');

    $('.id-l').hide()

     $(content).find('#'+idMap).show();







  });


};




var submit = function() {

    $('.sightbutton').click(function() {

      if($(".sightinput").val().length !== 0){

      //$(".sightinput").val('');
      $(".signup-p span").html('ГОТОВО');
    }
  });


};


var crop = function(){
  var croptext = $('.zxcv').text();


$('.zxcv').each(function (i) {
  var this_item = $(this);
  console.log(this_item.text().length)
  if (this_item.text().length > 300) {

   this_item.addClass('croped');
  }
})
};






var partnersv2 = function(){
  $( ".hexagon" ).click(function() {
    var idHex= $(this).attr('id');
         $('.partner-img').css({"filter": "grayscale(100%)"});
      $('.hexagon').removeClass('hex1');
    $('.hexagon').find( '.hexTop' ).removeClass('hex2');
    $('.hexagon').find( '.hexBottom' ).removeClass('hex3');
     $(".partners-hidden").hide();
     $('.span-border').css({"opacity": "0"});
    $(this).parent().parent().next().find("#"+idHex).show();
    $( this ).next().css({"opacity": "1"});
    $( this ).addClass('hex1');
    $( this ).find( '.hexTop' ).addClass('hex2');
    $( this ).find( '.hexBottom' ).addClass('hex3');
     $( this ).find('.partner-img').css({"filter": "none"});


})



};





var removecityheader = function(){

  $('.hrenhide').mouseover(function(){
    $(this).find('.qhead').hide();
    $(this).find('.fixedbl').css('margin-top','-43px');
  });

    $('.hrenhide').mouseleave(function(){
    $(this).find('.qhead').show();
    $(this).find('.fixedbl').css('margin-top','0');
  });
};

var mobilemenu = function(){
  var open = false;
$('.mobile-button').click(function(){
  if(open){
$('.menu').hide();
 open = false;
 return;
}
$('.menu').show();
 open = true;

});
};


var azxd = function(){
  $('.m-d').click(function(){
    $('.m-d').hide();
    $('.m-u').show();
    $('.m-s-down').css({'height':'100%'});
  })
};
var azxdu = function(){
  $('.m-u').click(function(){
    $('.m-d').show();
    $('.m-u').hide();
    $('.m-s-down').css({'height':'157px'});
  })
};




var rules =function() {
  //select all the a tag with name equal to modal
  $('.rules').click(function(e) {

    //Cancel the link behavior
    e.preventDefault();


    var id = $('#dialogrules');

    //Get the screen height and width
    var maskHeight = $(document).height();
    var maskWidth = $(window).width();
    //Set height and width to mask to fill up the whole screen
    $('#mask').css({'width':maskWidth,'height':maskHeight});
    //transition effect
    $('#mask').fadeIn(1000);
    $('#mask').fadeTo("slow",0.8);

    //Get the window height and width
    var winH = $(window).height();
    var winW = $(window).width();
              if(winW > 450){
    //Set the popup window to center
   $('#dialogrules').css('top',  winH/2-$(id).height()/2);
    $('#dialogrules').css('left', winW/2-$(id).width()/2);
    };
    //transition effect

$(".window").fadeIn(2000);
  });

  //if close button is clicked
  $('.window .close').click(function (e) {
    //Cancel the link behavior
    e.preventDefault();
    $('#mask, .window').hide();
  });

  //if mask is clicked
  $('#mask').click(function () {
    $(this).hide();
    $('.window').hide();
  });

};






var trim = function(){
var hover = $('.snip1080');

hover.mouseenter(function(){
$(this).find('.v2v').hide();
$(this).find('.h2h').show();
});

hover.mouseleave(function(){
$(this).find('.v2v').show();
$(this).find('.h2h').hide();
});





};


var trimsocials = function(){
var hover = $('.a-img');

hover.mouseenter(function(){
$(this).find('.v-img').hide();
$(this).find('.h-img').show();
});

hover.mouseleave(function(){
$(this).find('.h-img').hide();
$(this).find('.v-img').show();
});





};


var triggerF = function(){
$('.trig-f').click(function(){


$( "iframe" ).trigger( "click" );
})
};

var triggerVk = function(){
$('.trig-vk').click(function(){


$( ".vk-s a" ).trigger( "click" );
})
};


var noMobile = function(){
  if(window.innerWidth > 801){
    $('.time-s').css('width','13.7%');

  }
};



$(document).on('turbolinks:load', noMobile);
$(document).ready(noMobile);



$(document).on('turbolinks:load', triggerF);
$(document).ready(triggerF);

$(document).on('turbolinks:load', mousehover);
$(document).ready(mousehover);

$(document).on('turbolinks:load', trimsocials);
$(document).ready(trimsocials);

$(document).on('turbolinks:load', trim);
$(document).ready(trim);




$(document).on('turbolinks:load', azxdu);
$(document).ready(azxdu);

$(document).on('turbolinks:load', azxd);
$(document).ready(azxd);

$(document).on('turbolinks:load', mobilemenu);
$(document).ready(mobilemenu);

$(document).on('turbolinks:load', removecityheader);
$(document).ready(removecityheader);





$(document).on('turbolinks:load', submit);
$(document).ready(submit);


$(document).on('turbolinks:load', editlink);
$(document).ready(editlink);


$(document).on('turbolinks:load', mousemap);
$(document).ready(mousemap);


//$(document).on('turbolinks:load', mouse);
//$(document).ready(mouse);

$(document).on('turbolinks:load', mowl);
$(document).ready(mowl);



$(document).on('turbolinks:load', cowl);
$(document).ready(cowl);



$(document).on('turbolinks:load', powl);
$(document).ready(powl);

$(document).on('turbolinks:load', faq);
$(document).ready(faq);

// $(document).on('turbolinks:load', mainmore);
// $(document).ready(mainmore);

// $(document).on('turbolinks:load', main);
// $(document).ready(main);

$(document).on('turbolinks:load', tabs);
$(document).ready(tabs);

$(document).on('turbolinks:load', isFirefox);
$(document).ready(isFirefox);


$(document).on('turbolinks:load', owl);
$(document).ready(owl);

$(document).on('turbolinks:load', Sowl);
$(document).ready(Sowl);

$(document).on('turbolinks:load', partnersv2);
$(document).ready(partnersv2);

$(document).on('turbolinks:load', hide);
$(document).ready(hide);

$(document).on('turbolinks:load', moreinfevent);
$(document).ready(moreinfevent);

function showText() {
    $('.text-more').click(function() {
        $('.hidden-sh').css('display', 'block');
    });
    $('.article').click(function() {
        $('.article').removeClass('current');
        $('.description').hide();

        $(this).addClass('current');
        $(this).children('.description').show();
    });

    $(document).keypress(function(event) {
        if(event.which === 111) {
            $('.description').hide();

            $('.current').children('.description').show();
        }

        else if(event.which === 110) {
            var currentArticle = $('.current');
            var nextArticle = currentArticle.next();
            hidden-sh
            currentArticle.removeClass('current');
            nextArticle.addClass('current');
        }
    });
    $('.nav-tabs li').click(function() {
        $('.nav-tabs li').removeClass('active');
        $(this).addClass('active');
    });

}

var main_function = function (){

    $("#gallery").unitegallery({
        tile_enable_textpanel: false,
        gallery_width:"100%",
        tile_border_color:"#7a7a7a",
        tile_outline_color:"#8B8B8B",

        tile_overlay_opacity:0.3,

        tile_image_effect_type:"sepia",
        tile_image_effect_reverse:true,

        lightbox_textpanel_title_color:"e5e5e5",
        tiles_col_width:230,
        tiles_space_between_cols:20
    });


    $('.tablist li:first-child').addClass('active')
    $('.banner_close').on('click', function(){
        $(this).parent().fadeOut();
    });

    $('.text-more').click(function() {
        $('.hidden-sh').css('display', 'block');
    });
    $('.article').click(function() {
        $('.article').removeClass('current');
        $('.description').hide();

        $(this).addClass('current');
        $(this).children('.description').show();
    });

    $(document).keypress(function(event) {
        if(event.which === 111) {
            $('.description').hide();

            $('.current').children('.description').show();
        }

        else if(event.which === 110) {
            var currentArticle = $('.current');
            var nextArticle = currentArticle.next();
            hidden-sh
            currentArticle.removeClass('current');
            nextArticle.addClass('current');
        }
    });
    $('.nav-tabs li').click(function() {
        $('.nav-tabs li').removeClass('active');
        $(this).addClass('active');
    });
}

$(document).ready(main_function);
$(document).on('turbolinks:load', main_function);
$(document).ready(function(){
    showText();
});