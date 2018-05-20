# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $('.project-overlay').click ->
    $('.project-container').animate 'right': '17vw'
    $('.project-overlay').animate 'right': '17vw'
    $('.project-overlay').css 'z-index': '0'
    $('.profile-container').fadeOut()
    $('.about-click').fadeIn()
    return

  $('.about-click').click ->
    $('.project-container').animate 'right': '70vw'
    $('.project-overlay').animate 'right': '70vw'
    $('.project-overlay').css 'z-index': '1'
    $('.profile-container').fadeIn()
    $('.about-click').fadeOut()
    ga('send', 'event', 'About Click', 'viewed profile')
    return
  return
