ready = undefined
set_positions = undefined

set_positions = ->
  $('.project-title').each (i) ->
    $(this).attr 'data-pos', i + 1
    return
  return

ready = ->
  set_positions()
  $('.project-sort').sortable()
  $('.project-sort').sortable().bind 'sortupdate', (e, ui) ->
    updated_order = []

    set_positions()
    $('.project-title').each (i) ->
      updated_order.push
        id: $(this).data('id')
        position: i + 1
      return

    $.ajax
      type: 'PUT'
      url: '/projects/sort'
      data: order: updated_order
    return
  return

$(document).ready ready

$(document).ready ->
  $(".image-upload").change ->
    readURL(this);

  readURL = (input) ->
    if (input.files && input.files[0])
      reader = new FileReader()

    reader.onload = (e) ->
      $('.img-prev').attr('src', e.target.result)

    reader.readAsDataURL(input.files[0])

    $(".current-img").remove()
  return
return
