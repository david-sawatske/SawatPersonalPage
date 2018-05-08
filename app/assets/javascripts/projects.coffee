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
  $(".edit_project").on 'change', "input:file", () ->
    readURL(this);

  readURL = (input) ->
    if (input.files && input.files[0])
      reader = new FileReader()

    reader.onload = (e) ->
      if $(input).prop('class') == 'image-upload'
        $('.img-prev').attr('src', e.target.result)
        $(".current-img").remove()
      else if $(input).prop('class') == 'icon-upload'
        input_id = "#" + $(input).prop('id')
        $(input_id).siblings('.current-icon').attr('src', e.target.result)

    reader.readAsDataURL(input.files[0])
  return
return
