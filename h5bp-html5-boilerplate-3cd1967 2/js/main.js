$('.grades').click(function() { 

	//add a class to the selected grade that makes the background red
	$('.grades.selected_grade').removeClass('selected_grade');
	$(this).addClass('selected_grade');

	//put the value of the clicked grade in the user grade
	var clicked_grade = $(this).val();
	$('#user_grade').val(clicked_grade); 
});

$(document).ready(function() {
  $('#members').animate({ color: 'black',
  }, 3000, function() { $('.approval').animate({ color: 'black',
  }, 3000, function() {$('.election').animate({ color: 'black',
  }, 3000, function() {$('.problem').animate({ color: 'black',
  }, 3000, function() {
  });
  });
  });
  });
});

$(document).ready(function() {
  $('#capitol').animate({ opacity: '1',
  }, 3000, function() { $('#graph').animate({ opacity: '1',
  }, 3000, function() {$('#nintypercent').animate({ opacity: '1',
  }, 3000, function() {$('#questionmark').animate({ opacity: '1',
  }, 3000, function() {
  });
  });
  });
  });
});


