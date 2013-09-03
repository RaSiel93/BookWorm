#= require jquery
#= require jquery_ujs
#= require twitter/bootstrap
#= require_tree .
#= require jquery.turbolinks
#= require markitup
#= require markitup/sets/markdown/set
#= require select2

jQuery ->
  $("textarea").markItUp markdownSettings
  $("#book_tag_list").select2({tags: $("#book_tag_list").data('autocomplete-source'), width: 240}  )
  $("#back-top").hide()
  $(() ->
    $(window).scroll(()->
      if ($(this).scrollTop() > 100)
        $('#back-top').fadeIn()
      else
        $('#back-top').fadeOut()

      $('#back-top a').click(()->
        $('body,html').animate( {
          scrollTop: 0
        }, 800)
        return false
      )
    )
  )
