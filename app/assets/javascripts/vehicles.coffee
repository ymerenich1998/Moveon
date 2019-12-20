# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'turbolinks:load', ->
  $('#mark').change ->
    console.log($('#mark').val())
    $.ajax
      url: "/mark/select"
      type: "GET"
      dataType: "script" #якщо виконуватий то script , якщо тільки данні то json
      data:
        id: $('#mark').val()
