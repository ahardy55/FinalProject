$('.grades').click(function() { 

	//add a class to the selected grade that makes the background red
	$('.grades.selected_grade').removeClass('selected_grade');
	$(this).addClass('selected_grade');

	//put the value of the clicked grade in the user grade
	var clicked_grade = $(this).val();
	$('#user_grade').val(clicked_grade); 
});

