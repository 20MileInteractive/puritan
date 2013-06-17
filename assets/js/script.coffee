$ ->
	$(document).foundation()
	# Write scripts here

	submitContactForm = ()->
		$form = $(@)

		$form.find('.error').removeClass('error')

		$.post $form.attr('action'), $form.serialize(), (data)->
			if data.success == false
				$.each data.errors, (elem, message)->
					$("[name=#{elem}]").addClass("error")
			else
				$form.addClass("hide").next().removeClass("hide")
				$form.remove()

		return false

	$("form#contact-form").on "submit", submitContactForm