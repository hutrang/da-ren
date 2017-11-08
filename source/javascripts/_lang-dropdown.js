DAREN.languagesDropdown = function() {
  var $lgDropdown = $('.languages-dropdown .dd-lang > a');

  function init() {
    $lgDropdown.on('click', function(e) {
      e.preventDefault();

      var $this = $(this);
      $this.parent().toggleClass('show');

      if ($this.parent().hasClass('show')) {
        $this.parent().find('.submenu').show();
        console.log($this);
      } else {
        $this.parent().find('.submenu').hide();
        console.log('hide');
      }
    });
  }

  if ($lgDropdown.length) {
    init();
  }

}(jQuery);
