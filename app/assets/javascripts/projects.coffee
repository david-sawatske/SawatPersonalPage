ready = undefined

ready = ->
  $('.project-sort').sortable()
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
