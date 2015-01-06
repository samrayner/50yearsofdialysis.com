//= require_tree .
//= require bootstrap

class Viewport
  @getWidth: ->
    size = window
            .getComputedStyle(document.body,':after')
            .getPropertyValue('content')
    size.replace(/\"/g, '')

$ ->
  if Viewport.getWidth() == "wide"
    #link images in the same gallery together
    $(".gallery a").each ->
      offset = $(this).parent().offset()
      group = offset.top + offset.left
      $(this).attr("data-fancybox-group", group)

    $("a[data-fancybox-group]").fancybox()
