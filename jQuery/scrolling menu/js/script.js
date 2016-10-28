// $(document).mousemove(function(e)	{
// 	$('#mouse_axis').html("X Axis : " + e.pageX + " | Y Axis : " + e.pageY);
// });

// $(document).ready(function() {
// 	$('#offset').html("Top : " + $('#sidebar').offset().top + " | Left " + $('#sidebar').offset().left);
// });

// $('#menu li').length;

$(document).ready(function() {

	// background color, mouseover, and mouseout
	var colorOver = '#31b8da';
	var colorOut = '#1f1f1f';

	//padding, mouseOver
	var padLeft = '20px';
	var padRight = '20px';

	// default padding
	var defpadLeft = $('#menu li').css('paddingLeft');
	var defpadRight = $('#menu li').css('paddingRight');

	// animate the li on mouseover, mouseout
	$('#menu li').click(function() {
		// make li 'clickable'
		window.location = $(this).find('a').attr('href')

	}).mouseover(function() {

		// mouseover li and look for 'a' element for transition
		$(this).find('a')
		.animate( { paddingLeft: padLeft, paddingRight: padRight }, { queue:false, duration:100 })
		.animate( { backgroundColor: colorOver }, { queue:false, duration:200 });
	
	}).mouseout(function() {

		// mouse out li and look for 'a' element and discard the mouseover transistion
		$(this).find('a')
		.animate( { paddingLeft: defpadLeft, paddingRight: defpadRight }, { queue:false, duration:100 })
		.animate( { backgroundColor: colorOut }, { queue:false, duration:200 });
	});

	// scroll the menu on mouse move above the #sidebar layer
	$('#sidebar').mousemove(function(e) {
		
		// sidebar offset | top value
		var s_top = parseInt($('#sidebar').offset().top);

		// sidebar offset | bottom value
		var s_bottom = parseInt($('#sidebar').height() + s_top);

		// approximate the height of the menu by (li.height) x (li.total)
		var mheight = parseInt($('#menu li').height() * $('#menu li').length);

		// coordinates and offsets values for debugging
		$('#debugging_mouse_axis').html("x axis : " + e.pageX + "y axis" + e.pageY);
		$('#debugging_status').html(Math.round(((s_top - e.pageY) / 100) * mheight / 2))
		// $('#parse').html(parseInt($('#sidebar')).val(), 10)

		// calculate the top_value
		var top_value = Math.round(( (s_top - e.pageY) / 100) * mheight / 2)

		// animate the #menu by changing the top value
		$('#menu').animate({ top:top_value }, { queue:false, duration:500 });

	});
});