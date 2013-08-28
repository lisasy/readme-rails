$(document).ready(function() {
  $('section.form').find('a.add-article').on('click', function(e) {
    $(this).toggleClass('active');
    $('form.add-article-form').toggleClass('active');
    e.preventDefault();
  });

  

  // $('section.form').find('.submit-url').on('click', function() {
  //   $(this).parent().html('<i class="icon-spinner icon-spin"></i>');
  // });
});
