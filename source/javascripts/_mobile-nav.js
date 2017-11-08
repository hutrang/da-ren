DAREN.mobileNav = function() {
  var $mobileNav = $('.mobile-nav > a');

  function init() {
    $('header').removeClass('pushed');
    $mobileNav.on('click', function(e) {
      e.preventDefault();
      $('header').toggleClass('pushed');
    });
  }

  if ($mobileNav.length) {
    init();
  }

}(jQuery);
