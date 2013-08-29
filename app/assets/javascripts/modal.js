$('section.modal').find('a.close-window').on('click', function(e) {
  e.preventDefault();
  console.log('lcick');
  $('section.modal').hide();
})

$('section.modal-editable').find('button.cancel').on('click', function() {
  console.log('lcick');
  // $('section.modal').hide();
})
