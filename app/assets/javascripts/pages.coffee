# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $('.project-overlay').click ->
    $('.project-container').animate 'right': '8.5vw'
    $('.project-overlay').animate 'right': '8.5vw'
    $('.project-overlay').css 'z-index': '0'
    $('.profile-container').animate 'width': '30vw'
    $('.profile-click').fadeIn()
    return
  $('.profile-click').click ->
    $('.project-container').animate 'right': '65vw'
    $('.project-overlay').animate 'right': '65vw'
    $('.project-overlay').css 'z-index': '1'
    $('.profile-container').css 'width': '60vw'
    $('.profile-click').fadeOut()
    return
  return

$(document).ready ->
  $('.project-title').click ->
      $('.project').toggle()
    return
  return
