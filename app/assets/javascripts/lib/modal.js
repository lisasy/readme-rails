$(document).ready(function() {

  var modal = $('section.modal');

  var deleteArticle = {
    init: function() {
      $('ul.article-list li').on('click', 'a.open-modal', this.openModal);
      $('section.modal.active').on('click', 'a.close-window', this.closeModal);
      $('section.modal.active').on('click', 'a.cancel', this.closeModal);
    },
    
    openModal: function(e) {
      e.preventDefault();
      var id = $(this).parents('li').attr('id');
      var openModal = modal.addClass('active').attr('id', id);
      $('a.delete-article').attr('href', '/articles/' + id);
    },

    closeModal: function(e) {
      e.preventDefault();
      $(this).hide();
      $('a.delete-article').attr('href', '');
    },
  }

  deleteArticle.init();

});
