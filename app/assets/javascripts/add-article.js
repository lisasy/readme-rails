$(document).ready(function() {
  $('section.form').find('a.add-article').on('click', function(e) {
    $(this).toggleClass('active');
    $('form.add-article-form').toggleClass('active');
    e.preventDefault();
  });
});
