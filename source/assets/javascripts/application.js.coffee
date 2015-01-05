//= require_tree .
//= require bootstrap

$ ->
  $("[data-toggle=tooltip]").tooltip({ container: 'body' })

  $("a.fancybox").fancybox()

  #link images in the same gallery together
  $(".gallery a").each ->
    offset = $(this).parent().offset()
    group = offset.top + offset.left
    $(this).attr("data-fancybox-group", group)

  $("a[data-fancybox-group]").fancybox()
