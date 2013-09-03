# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

fontSize =  1
textWidth = 100

jQuery ->
  $('#button_font_size_increment').bind "click", ->
    if fontSize < 2
      fontSize = 1 * (fontSize + 0.1).toFixed(1)
      $('#reader_paper>p').css("font-size", (fontSize + 'em'))

  $('#button_font_size_decrement').bind "click", ->
    if fontSize > 0.8
      fontSize = 1 * (fontSize - 0.1).toFixed(1)
      $('#reader_paper>p').css("font-size", (fontSize + 'em'))

  $('#increase-text-width-button').bind "click", ->
    if textWidth < 100
      textWidth += 25
      $('#story-text').css("width", (textWidth + "%"))

  $('#decrease-text-width-button').bind "click", ->
    if textWidth > 25
      textWidth -= 25
      $('#story-text').css("width", (textWidth + "%"))