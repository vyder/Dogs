# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  $('#packs').sortable( 
    axis: 'y'
    handle: '.handle'
    update: ->
      $.post($(this).data('update-url'), $(this).sortable('serialize'), location.reload())
  )
					

jQuery ->
  $('#packs').sortable({containment: 'parent'})

jQuery ->
  $("#packs").sortable({ appendTo: 'body' });