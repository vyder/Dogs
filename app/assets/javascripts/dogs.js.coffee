# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  $('#packs').sortable( 
    axis: 'y'
    handle: '.handle'
    update: ->
      $.post($(this).data('update-url'), $(this).sortable('serialize'), location.reload()); 
  )
					
  $('#packs').sortable({containment: 'parent'})
  $("#packs").sortable({ opacity: 0.6 });
  