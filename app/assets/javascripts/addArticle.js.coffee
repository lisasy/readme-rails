jQuery ($) ->
  $('section.form')
    .find('a.add-article')
    .click (e) ->
      $(this).toggleClass('active')
      $('form.add-article-form').toggleClass('active')
      e.preventDefault()

  showSpinner = -> $('#spinner').show()
  hideSpinner = -> $('#spinner').hide()

  $("#new_article")
    .on("ajax:success", (e, data, status, xhr) ->
      response = $.parseJSON(xhr.responseText)
      window.location.href = response.url
    )
    .bind("ajax:beforeSend", showSpinner)
    .bind("ajax:complete", hideSpinner)
