ready = ->

  keysdown = {}

  $('.stage').click (e) ->
    id =  e.target.id

  $(window).keydown (e) ->
    k = e.keyCode
    if keysdown[k]
      return false
    else
      keysdown[k] = true
    if k == 87
      $.ajax({
        type: 'GET',
        url: 'controls/forward'
      })
    else if k == 83
      $.ajax({
        type: 'GET',
        url: 'controls/backward'
      })
    else if k == 65
      $.ajax({
        type: 'GET',
        url: 'controls/left'
      })
    else if k == 68
      $.ajax({
        type: 'GET',
        url: 'controls/right'
      })
    else
      false

   $(window).keyup (e) ->
     k = e.keyCode
     keysdown[k] = false
     if k == 87 || k == 83
       $.ajax({
         type: 'GET',
         url: 'controls/kill_movement'
       })
     else if k == 65 || k == 68
       $.ajax({
         type: 'GET',
         url: 'controls/kill_turn'
       })
     else
       false


$(document).ready(ready)
$(document).on('page:load', ready)
