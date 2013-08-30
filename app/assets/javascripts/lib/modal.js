$(document).ready(function() {

  var modal = $('section.modal');

  $('.open-modal').on('click', function(e) {
    e.preventDefault();
    var id = $(this).parents('li').attr('id');
    console.log(id);
    var openModal = modal.addClass('active').attr('id', id);
    console.log(openModal);

    openModal.find('a.close-window').on('click', function() {
      $(this).parents('section.modal#'+id).hide();
    });

    openModal.find('input.cancel').on('click', function() {
      $(this).parents('section.modal#'+id).hide();
    });
  })
})


