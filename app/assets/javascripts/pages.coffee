# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $('.project-container').click ->
    $('.project-container').animate 'right': '8.5vw'
    $('.profile-container').animate 'width': '50vw'
    $('.profile-click').fadeIn()
    return
  $('.profile-click').click ->
    $('.project-container').animate 'right': '60vw'
    $('.profile-click').fadeOut()
    return
  return

$(document).ready ->
  $('.project-title').click ->
      $('.project').toggle()
    return
  return
