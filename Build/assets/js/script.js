(function() {
  $(function() {
    var submitContactForm;

    $(document).foundation();
    submitContactForm = function() {
      $(this).addClass("hide").next().removeClass("hide");
      return false;
    };
    return $("form#contact-form").on("submit", submitContactForm);
  });

}).call(this);
