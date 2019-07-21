$(document).ready(function(){

	var topbar_selected_item = getCookie("topbar");
	var expertise_selected_item = getCookie("expertise");
	$('.primary-nav-container .primary-nav > li').removeClass("active");
	$('.primary-nav-container .primary-nav > li').each(function(index) {
		var item_text = $(this).find('a').first().text();
		item_text = item_text.trim();
		if(item_text == topbar_selected_item) {
			$(this).addClass("active");
		}
	});

	$('.primary-nav-container .primary-nav .three-column > li > ul > li').removeClass("active");
	$('.expertise .expertise-list > li').removeClass("active");
	$('.primary-nav-container .primary-nav .three-column > li > ul > li').each(function(index) {
		var item_text = $(this).find('a').first().text();
		item_text = item_text.trim();
		if(item_text == expertise_selected_item) {
			$(this).addClass("active");
		}
	});
	$('.expertise .expertise-list > li').each(function(index) {
		var item_text = $(this).find('a').first().text();
		item_text = item_text.trim();
		if(item_text == expertise_selected_item) {
			$(this).addClass("active");
		}
	});

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
		languages.slideToggle(200);
	});

	var file_from_selector = $("#file-from-selector"),
		file_from = $("#file-from");
	file_from_selector.on("click", function(event) {
		event.stopPropagation();
		file_from.slideToggle(200);
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
		languages.slideUp(200);
		file_from.slideUp(200);
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

	var count = Math.min(($(window).width() * 8 / 1500), 8);
	count = Math.ceil(count);
	$(".featured-partners-carousel").owlCarousel({
		items: count,
		margin: 25,
		loop: true,
		nav: true,
		dots: false,
		autoplay: true,
		autoplayTimeout: 5000, 
		navText: ["<ion-icon name='ios-arrow-dropleft-circle'></ion-icon>","<ion-icon name='ios-arrow-dropright-circle'></ion-icon>"]
	});

	$(".besetzung-carousel").owlCarousel({
		items: 1,
		loop: true,
		nav: false,
		dots: true,
		autoplay: true,
		autoplayTimeout: 8000,
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
		autoplay: false,
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

$('.primary-nav-container .primary-nav>li').click(function() {
	var item_text = $(this).find('a').first().text();
	item_text = item_text.trim();
	setCookie("topbar", item_text, 1);
	
	if(item_text != "Expertise") setCookie("expertise", '', 1);
	$('.primary-nav-container .primary-nav>li').removeClass("active");
	$(this).addClass("active");
});

$('.primary-nav-container .primary-nav .three-column > li > ul > li').click(function() {
	var item_text = $(this).find('a').first().text();
	item_text = item_text.trim();
	setCookie("expertise", item_text, 1);
	$('.primary-nav-container .primary-nav .three-column > li > ul > li').removeClass("active");
	$(this).addClass("active");
});

$('.expertise .expertise-list > li').click(function() {
	var item_text = $(this).find('a').first().text();
	item_text = item_text.trim();
	setCookie("expertise", item_text, 1);
	$('.expertise .expertise-list > li').removeClass("active");
	$(this).addClass("active");
});

$('.expertise .expertise-cards .expertise-card a').click(function() {
	var item_text = $(this).find('h6').first().text();
	item_text = item_text.trim();
	setCookie("expertise", item_text, 1);
	$('.expertise .expertise-list > li').removeClass("active");
	$(this).addClass("active");
});


function setCookie(cname, cvalue, hours) {
	var d = new Date();
	d.setTime(d.getTime() + (hours * 60 * 60 * 1000));
	var expires = "expires="+d.toUTCString();
	document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
}

function getCookie(cname) {
	var name = cname + "=";
	var decodedCookie = decodeURIComponent(document.cookie);
	var ca = decodedCookie.split(';');
	for(var i = 0; i <ca.length; i++) {
	  var c = ca[i];
	  while (c.charAt(0) == ' ') {
		c = c.substring(1);
	  }
	  if (c.indexOf(name) == 0) {
		return c.substring(name.length, c.length);
	  }
	}
	return "";
}

$.fn.serializeObject = function()
{
   var o = {};
   var a = this.serializeArray();
   $.each(a, function() {
       if (o[this.name]) {
           if (!o[this.name].push) {
               o[this.name] = [o[this.name]];
           }
           o[this.name].push(this.value || '');
       } else {
           o[this.name] = this.value || '';
       }
   });
   return o;
};

$("#contact-form").on('submit', function(e) {
	e.preventDefault();

	var form_data = $("#contact-form").serializeObject();
	var name = form_data["name"];
	var email = form_data["email"];
	var phone = form_data["phone"];
	var msg = form_data["message"];
	var message = "<html><body><p><b>From:</b></p><p>" + name + "</p>";
	message += "<p><b>E-mail:</b></p><p>" + email + "</p>";
	message += "<p><b>Phone:</b></p><p>" + phone + "</p>";
	message += "<p><b>Message:</b></p><p>" + msg + "</p>";
	message += "</body></html>";
	$.ajax({
		url: lang_url + "/send-mail/", 
		type: "POST", 
		data: { 
			content: message,  
			from: email, 
			sender: name, 
			sendTo: "contact@paltron.com"
		},
		contentType: 'application/x-www-form-urlencoded',
		success: function(response) {
			res = JSON.parse(response);
			if(res.status == true) {
				$('.contact #alert').addClass('alert alert-success');
				$('.contact #alert').empty();
				$('.contact #alert').append(res.alert_text);
				$("#contact-form")[0].reset();
			}
			else {
				$('.contact #alert').addClass('alert alert-danger');
				$('.contact #alert').empty();
				$('.contact #alert').append(res.alert_text);
			}
		}
	});
	$('html, body').animate({ scrollTop: $("#contact h3").offset().top }, 800);
	// $("#contact-form").find("input[type=text], input[type=number], input[type=email], textarea").val("");
});


$("#contact-form2").on('submit', function(e) {
	e.preventDefault();

	var form_data = $("#contact-form").serializeObject();
	var fname = form_data["first_given_name"];
	var surname = form_data["surname"];
	var email = form_data["email"];
	var phone = form_data["telephone_number"];
	var msg = form_data["message"];
	var message = "<html><body><p><b>From:</b></p><p>" + fname + " " + surname +"</p>";
	message += "<p><b>E-mail:</b></p><p>" + email + "</p>";
	message += "<p><b>Phone:</b></p><p>" + phone + "</p>";
	message += "<p><b>Message:</b></p><p>" + msg + "</p>";
	message += "</body></html>";
	$.ajax({
		url: lang_url + "/send-mail/", 
		type: "POST", 
		data: { 
			content: message,  
			from: email, 
			sender: fname + " " + surname, 
			sendTo: "contact@paltron.com"
		},
		contentType: 'application/x-www-form-urlencoded',
		success: function(response) {
			res = JSON.parse(response);
			if(res.status == true) {
				$('.contact #alert').addClass('alert alert-success');
				$('.contact #alert').empty();
				$('.contact #alert').append(res.alert_text);
				$("#contact-form2")[0].reset();
			}
			else {
				$('.contact #alert').addClass('alert alert-danger');
				$('.contact #alert').empty();
				$('.contact #alert').append(res.alert_text);
			}
		}
	});
	$('html, body').animate({ scrollTop: $("#contact h3").offset().top }, 800);
	// $("#contact-form2").find("input[type=text], input[type=number], input[type=email], textarea").val("");
});


$("#office_opening_registration_form").on('submit', function(e) {
	e.preventDefault();

	var form_data = $("#office_opening_registration_form").serializeObject();
	var name = form_data["name"];
	var company = form_data["company"];
	var email = form_data["email"];
	var recommendations = form_data["recommendations"];
	var message = "<html><body><p><b>From:</b></p><p>" + name + "</p>";
	message += "<p><b>Company:</b></p><p>" + company + "</p>";
	message += "<p><b>Recommendations:</b></p><p>" + recommendations + "</p>";
	message += "</body></html>";
	$.ajax({
		url: lang_url + "/send-mail/", 
		type: "POST", 
		data: { 
			content: message,
			from: email,
			sender: name, 
			sendTo: "contact@paltron.com"
		},
		contentType: 'application/x-www-form-urlencoded',
		success: function(response) {
			res = JSON.parse(response);
			if(res.status == true) {
				$('.registration #alert').addClass('alert alert-success');
				$('.registration #alert').empty();
				$('.registration #alert').append(res.alert_text);
			}
			else {
				$('.registration #alert').addClass('alert alert-danger');
				$('.registration #alert').empty();
				$('.registration #alert').append(res.alert_text);
			}
			window.scrollBy(0, -50);
		}
	});
});

$('#choose-files').on('click', function(e) {
	e.preventDefault();
	$('#cv-upload').click();
});


function handleFiles(files) {
	console.log(files);
	$fileList = $('#uploaded-files');
	var str = '';
	if (files.length) {
		$fileList.empty();
		for (let i = 0; i < files.length; i++) {
			str += files[i].name + "; ";
	    }
    }
  	$fileList.val(str);
  }
  