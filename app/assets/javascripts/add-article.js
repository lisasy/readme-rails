$(document).ready(function() {
  $('section.form').find('a.add-article').on('click', function(e) {
    $(this).toggleClass('active');
    $('form.add-article-form').toggleClass('active');
    e.preventDefault();
  });

  $('form.add-article-form .submit-url').on('click', function(e) {
    var articleUrl = $('input.url-value').val();
    console.log(articleUrl);
  });
});
