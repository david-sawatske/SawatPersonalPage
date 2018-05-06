$(document).ready ->
  $(".image-upload").change ->
    readURL(this);

  readURL = (input) ->
    if (input.files && input.files[0])
      reader = new FileReader()

    reader.onload = (e) ->
      $('.img-prev').attr('src', e.target.result)

    reader.readAsDataURL(input.files[0]);
  return
return
