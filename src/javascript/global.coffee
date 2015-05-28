# Browserify entry point for the global.js bundle (yay CoffeeScript!)

$ = require 'jquery'
Duggarify = require './duggarify'

$('.name_form').on 'submit', ->
  name = $(@).find('input').val()
  $('input').blur()
  unless name != ''
    $('input').focus()
    return false
  name = Duggarify.name name
  $('.num').text name
  $('.big_j').addClass 'spin'
  setTimeout ->
    $('#content').addClass 'done'
  , 2000
  setTimeout ->
    $('.big_j').addClass 'done'
  , 2900
  $('.deets').show()
  false

$('.start_over').on 'click', ->
  $('.done').removeClass('done')
  $('.spin').removeClass('spin')
  $('input').val('').focus()

