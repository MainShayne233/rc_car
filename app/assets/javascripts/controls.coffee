ready = ->

  set_width()
  $(window).resize ->
    set_width()



set_width = ->

  width = $(window).width()
  margin_left = (width - 800) / 2
  $('#video').css('margin-left', margin_left)

  height = $(window).height()
  margin_top = (height - 600) / 2
  $('#video').css('margin-top', margin_top)

$(document).ready(ready)
$(document).on('page:load', ready)
