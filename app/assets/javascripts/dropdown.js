$(document).ready(function() {
  $('span.dropdown-drawer').find('a').on('click', function(e) {
    e.preventDefault();
    $('div.header-content').find('nav').slideToggle();

    $(window).on('resize', function(e) {
      if ( $(window).width() > 480  ) {
        $('nav').show();
      }
    });
  })
});
