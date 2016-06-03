# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
masonry = ->
  $('#pins').imagesLoaded ->
    $('#pins').masonry
      itemSelector: '.panel-default',
      isFitWidth: true

$(document).ready(masonry);
$(document).on('page:load', masonry);