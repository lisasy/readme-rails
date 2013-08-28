function highlightSelection() {
  var selection;

  if (window.getSelection) {
    selection = window.getSelection();
    console.log(selection);
  }

  var range = selection.getRangeAt(0);

  if (range && !selection.isCollapsed) {
    if (selection.anchorNode.parentNode == selection.focusNode.parentNode) {
      var span = document.createElement('span');
      span.className = 'highlight';
      range.surroundContents(span);
    }
  }
}
