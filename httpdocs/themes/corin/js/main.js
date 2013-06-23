$(function(){
	var MAX_WIDTH = 480;
	//var MIN_WIDTH = 480*0.5;
	var $window = $(window);
	$window.resize(resize);
	/*var i = 0;*/
	function resize(){
		
		var width = $window.width();
		
		var columns = Math.floor(width / MAX_WIDTH)+1;
		var itemWidth = 100/columns +"%";
		console.log(itemWidth);
		$('.project').width(itemWidth);
		/*var itemWidth = Math.floor(width  / columns);

		//$('').width(itemWidth);
		$('.project > .rollover, .project').width(itemWidth);
		if(++i < 2)setTimeout(resize,0);
		else i = 0;*/
	}
	resize();
	
	
});