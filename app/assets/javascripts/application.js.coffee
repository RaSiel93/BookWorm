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
  $("button[value='black']").on( "click", (event) ->
    $("button[value='white']").show()
    $("button[value='black']").hide()
    $('link[href="/assets/white_style.css?body=1"]').attr('href','/assets/black_style.css?body=1');
  );
  $("button[value='white']").on( "click", (event) ->
    $("button[value='black']").show()
    $("button[value='white']").hide()
    $('link[href="/assets/black_style.css?body=1"]').attr('href','/assets/white_style.css?body=1');

  );
  $("button[value='white']").hide()