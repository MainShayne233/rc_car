ready = ->

  $('.glyphicon-arrow-up').on 'touchstart', ->
    $.ajax({
      type: 'GET',
      url: '/controls/forward'
    })

  $('.glyphicon-arrow-down').on 'touchstart', ->
    $.ajax({
      type: 'GET',
      url: '/controls/backward'
    })

  $('.glyphicon-arrow-left').on 'touchstart', ->
    $.ajax({
      type: 'GET',
      url: '/controls/left'
    })

  $('.glyphicon-arrow-right').on 'touchstart', ->
    $.ajax({
      type: 'GET',
      url: '/controls/right'
    })

  $('.glyphicon-arrow-up').on 'touchend', ->
    $.ajax({
      type: 'GET',
      url: '/controls/kill_forward'
    })

  $('.glyphicon-arrow-down').on 'touchend', ->
    $.ajax({
      type: 'GET',
      url: '/controls/kill_backward'
    })

  $('.glyphicon-arrow-left').on 'touchend', ->
    $.ajax({
      type: 'GET',
      url: '/controls/kill_left'
    })

  $('.glyphicon-arrow-right').on 'touchend', ->
    $.ajax({
      type: 'GET',
      url: '/controls/kill_right'
    })

$(document).ready(ready)
$(document).on('page:load', ready)
