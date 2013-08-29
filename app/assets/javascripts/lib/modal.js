$(document).ready(function() {

  $('.open-modal').on('click', function(e) {
    e.preventDefault();
    $('section.modal').removeClass('active');
    $('section.modal').addClass('active');
  });

  $('section.modal div.window-editable').find('a.close-window').on('click', function(e) {
    e.preventDefault();
    $('section.modal').hide();
  })

  $('section.modal-editable').find('input.cancel').on('click', function() {
    $('section.modal').hide();
  })
})


