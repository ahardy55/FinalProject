// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require jquery.color-2.1.2.min
//= require modernizr-2.6.2.min
//= require_tree .




$('.grades').click(function() { 

	//add a class to the selected grade that makes the background red
	$('.grades.selected_grade').removeClass('selected_grade');
	$(this).addClass('selected_grade');

	//put the value of the clicked grade in the user grade
	var clicked_grade = $(this).val();
	$('#user_grade').val(clicked_grade); 
});

//fading in text.  Each bit of text fades from transparent to black after
//2 seconds

$(document).ready(function() {
  $('.members').animate({ 
    opacity: '1',
  }, 2000, function() { 
    $('.approval').animate({ 
      opacity: '1',
  }, 2000, function() {
    $('.election').animate({ 
      opacity: '1',
  }, 2000, function() {
    $('.problem').animate({ opacity: '1',
  }, 2000, function() {
  });
  });
  });
  });
});

//animating images to fade in on page load, each one 2 seconds after the last
$(document).ready(function() {
  $('#capitol').animate({ 
    opacity: '1',
  }, 2000, function() { 
    $('#graph').animate({ 
      opacity: '1',
  }, 2000, function() {$('#nintypercent').animate({ opacity: '1',
  }, 2000, function() {$('#questionmark').animate({ opacity: '1',
  }, 2000, function() {
  });
  });
  });
  });
});





