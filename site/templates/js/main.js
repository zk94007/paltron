$(document).ready(function(){

		$(".pop-in").delay(1000).animate({
			right: '0px'
		});
		$(".closer").on("click", function() {
			$(".pop-in").animate({
				right: '-600px'
			}, 400, function() {
				$(this).hide()
			})
		});
		var langtrigger = $("#language-trigger"),
			languages = $("#languages");
		langtrigger.on("click", function(event) {
			event.stopPropagation();
			languages.slideToggle(200)
		});

		var elementHeights = $('#leistungen .one-third').map(function() {
			return $(this).height()
		}).get();
		var maxHeight = Math.max.apply(null, elementHeights);
		$('#leistungen .one-third').height(maxHeight);
		$(".mobile-nav-container").html($(".primary-nav-container").html());
		$(".mobile-nav-container > ul").removeClass("primary").addClass("mobile");
		$("#nav-trigger").on("click", function(e) {
			
			e.stopPropagation();
			if ($("ul.mobile").hasClass("expanded")) {
				$("ul.mobile.expanded").removeClass("expanded").slideUp(250);
				$(this).removeClass("open")
			} else {
				$("ul.mobile").addClass("expanded").slideDown(250);
				$(this).addClass("open")
			}
		});
		$('html').on("click", function() {
			$("ul.mobile.expanded").removeClass("expanded").slideUp(250);
			$("#nav-trigger").removeClass("open");
			languages.slideUp(200)
		});
		
		var $root = $('html, body');
		$('.scroll-to').on('click', function(e) {
			e.preventDefault();
			$root.animate({
				scrollTop: $($.attr(this, 'href')).offset().top
			}, 500);
			return !1
		});
		$(".datenschutz").hide();
		$("#datenschutz_toggle").on("click", function(e) {
			e.preventDefault();
			$(".datenschutz").slideToggle("fast")
		});
		$("#show-team").hide();
		$("#show-team-toggle").on("click", function(e) {
			e.preventDefault();
			$("#show-team").slideToggle("fast")
		});
		$('ul.location-tabs li').on("click", function() {
			var tab_id = $(this).attr('data-tab');
			$('ul.location-tabs li').removeClass('current');
			$('.location-tab-item').removeClass('current');
			$(this).addClass('current');
			$("#" + tab_id).addClass('current')
		});
		$(".search-process-tabs a").click(function(event) {
			event.preventDefault();
			$(this).parent().addClass("current");
			$(this).parent().siblings().removeClass("current");
			var tab = $(this).attr("href");
			$(".exec-search-process-tab-content").not(tab).css("display", "none");
			$(tab).fadeIn()
		});
		$(".case-studies-tabs a").click(function(event) {
			event.preventDefault();
			$(this).parent().addClass("current");
			$(this).parent().siblings().removeClass("current");
			var tab = $(this).attr("href");
			$(".case-studies-tab-content").not(tab).css("display", "none");
			$(tab).fadeIn()
		});
		$(".referenzen-tabs a").click(function(event) {
			event.preventDefault();
			$(this).parent().addClass("current");
			$(this).parent().siblings().removeClass("current");
			var tab = $(this).attr("href");
			$(".referenzen-tab-content").not(tab).css("display", "none");
			$(tab).fadeIn()
		});
		$(".branchen-tabs a").click(function(event) {
			event.preventDefault();
			$(this).parent().addClass("current");
			$(this).parent().siblings().removeClass("current");
			var tab = $(this).attr("href");
			$(".branchen-tab-content").not(tab).css("display", "none");
			$(tab).fadeIn()
		});

	/*---------------------------------------------------------
	 * FAQ Accordion
	 --------------------------------------------------------*/

	var $container = $('dl.accordion'),
		$icon = $('.accordion-icon');

	$container.find('dd').hide();

	$container.on('click', 'dt:not(.active)', function(){
		$container.find('dt.active').removeClass('active');
		$container.find('dd').slideUp();
		$icon.attr('name', 'add');
		$(this).addClass('active').next('dd').slideDown();
		$(this).find('.accordion-icon').attr('name', 'remove');
	});

	$container.on('click', 'dt.active', function(){
		$(this).removeClass('active').next('dd').slideUp();
		$icon.attr('name', 'add');
	});

	/*---------------------------------------------------------
	 * Carousels
	 --------------------------------------------------------*/

	$(".featured-partners-carousel").owlCarousel({
		items: 8,
		margin: 25,
		loop: true,
		nav: true,
		dots: false,
		autoplay: true,
		autoplayTimeout: 5000
	});

	$(".besetzung-carousel").owlCarousel({
		items: 1,
		loop: true,
		nav: false,
		dots: true,
		autoplay: true,
		autoplayTimeout: 4000,
		// autoHeight:true,
	});
	
	$(".attractive-partners-carousel").owlCarousel({
		items: 5,
		margin: 25,
		loop: true,
		nav: true,
		dots: false,
		autoplay: true,
		autoplayTimeout: 3000,
		navText: ["<ion-icon name='ios-arrow-dropleft-circle'></ion-icon>","<ion-icon name='ios-arrow-dropright-circle'></ion-icon>"]
	});

	$(".aboutus-notes-carousel").owlCarousel({
		items: 1,
		margin: 25,
		loop: true,
		nav: true,
		dots: false,
		autoplay: true,
		autoplayTimeout: 3000,
		navText: ["<ion-icon name='ios-arrow-dropleft-circle'></ion-icon>","<ion-icon name='ios-arrow-dropright-circle'></ion-icon>"]
	});
	
	$(".testimonials-carousel").owlCarousel({
		items: 1,
		margin: 25,
		loop: true,
		nav: true,
		dots: false,
		autoplay: true,
		autoplayTimeout: 30000,
		navText: ["<ion-icon name='ios-arrow-dropleft-circle'></ion-icon>","<ion-icon name='ios-arrow-dropright-circle'></ion-icon>"]
	});
	


	$(".job-find-page .filtered-job").hover(function() {
		$(this).find('.go-to-job').show();
	});

	$(".job-find-page .filtered-job").mouseleave(function() {
		$(this).find('.go-to-job').hide();
	});

	$(".current-vacancies .recommended-job").hover(function() {
		$(this).find('.go-to-job').show();
	});

	$(".current-vacancies .recommended-job").mouseleave(function() {
		$(this).find('.go-to-job').hide();
	});

});

// ===== Scroll to Top ==== 
$(window).scroll(function() {
	if ($(this).scrollTop() >= 50) {        // If page is scrolled more than 50px
		$('#return-to-top').fadeIn(200);    // Fade in the arrow
		$('#return-to-top').css("display", "inherit");
	} else {
		$('#return-to-top').fadeOut(200);   // Else fade out the arrow
	}
});
$('#return-to-top').click(function() {      // When arrow is clicked
	$('body,html').animate({
		scrollTop : 0                       // Scroll to top of body
	}, 500);
});

function func_listItemClick()
{
	alert(1);
}
