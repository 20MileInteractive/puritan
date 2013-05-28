$ ->
	$(document).foundation()
	# Write scripts here
	
	submitContactForm = ()->
		$(this).addClass("hide").next().removeClass("hide")

		return false

	$("form#contact-form").on "submit", submitContactForm