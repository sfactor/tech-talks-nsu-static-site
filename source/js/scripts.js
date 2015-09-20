$(document).ready(function() {
	var aHeight = $('.page-wrapper').height() - 700 - $('.feedback-box-wrapper').height() - 26 - $('.socials-box').height() - 30 - $('.footer-wrapper').height();
	$(document).scroll(function(){
		if($(document).scrollTop() > 80){
			$('.archive-links.fright').removeClass('sticky-to-footer').addClass('fixed');
		}
		if($(document).scrollTop() > aHeight ){
			$('.archive-links.fright').removeClass('fixed').addClass('sticky-to-footer');
		}
		if($(document).scrollTop() < 80){
			$('.archive-links.fright').removeClass('fixed').removeClass('fixed');
		}
	});
});