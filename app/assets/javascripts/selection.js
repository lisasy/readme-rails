$(document).ready(function() {

  var highlightBox = $('section.highlight-box');
  var undoBox = $('section.undo-box');
  var article = $('article.article');
  var selection;

  highlightBox.css({
    display: 'block',
    left: '300px',
    top: '800px',
  });

  highlightBox.bind('click', 'a', function(e) {
    e.preventDefault();

    if (window.getSelection) {
      selection = window.getSelection();
      console.log(selection.toString());
    }

    var range = selection.getRangeAt(0);

    if (range && !selection.isCollapsed) {
      if (selection.anchorNode.parentNode == selection.focusNode.parentNode) {
        var span = document.createElement('span');
        span.className = 'highlight';
        range.surroundContents(span);

      }
    }
  })

  article.delegate('span.highlight', 'click', function() {
    var topPosition = $('span.highlight').offset().top + $('span.highlight').height();
    var leftPosition = $('span.highlight').width();

    undoBox.fadeIn().css({
      display: 'block',
      left: leftPosition,
      top: topPosition
    });

    $(this).on('click', function() {
      $(this).parent().find('span').contents().unwrap();
      undoBox.hide();
    });

    undoBox.on('click', 'a', function(e) {
      $('span.highlight').contents().unwrap();
      e.eventDefault();
    })

  });

})

