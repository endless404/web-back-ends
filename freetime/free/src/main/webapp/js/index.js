$(function(){
	
	$(".nav_check > li").click(function(){
		$(this).addClass("active").siblings("li").removeClass("active");
	});
	$(".show_main").eq(0).show();
	$(".nav_check > li").click(function(){
		var index = $(this).index();
		if(index == 4){return};
		$(".show_main").eq(index).show().siblings("div").hide();
	})
	$(".menu_two > li").click(function(){
		var index = $(this).index()/2 + 3;
		$(".show_main").eq(index).show().siblings("div").hide();
	})
})
