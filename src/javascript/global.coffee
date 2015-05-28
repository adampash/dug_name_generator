# Browserify entry point for the global.js bundle (yay CoffeeScript!)

$ = require 'jquery'
Duggarify = require './duggarify'

name = ""
post_url = "http://gawker.com/whats-your-duggar-name-1707464686"
$('.name_form').on 'submit', ->
  name = $(@).find('input').val()
  $('input').blur()
  unless name != ''
    $('input').focus()
    return false
  name = Duggarify.name name
  if name is "Josh" or name is "Joshua"
    $('.num').text("You should probably get")
    $('.last').text("a different name.")
    $('.name_container').addClass 'small'
  else
    $('.num').text name
    $('.last').text("Duggar")
    $('.name_container').removeClass 'small'
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

$('.facebook').on 'click', ->
  description = encodeURIComponent "Get your Duggar name before it's too late!"
  picture = encodeURIComponent "http://i.kinja-img.com/gawker-media/image/upload/s---kfRt6zT--/c_fit,fl_progressive,q_80,w_636/1270976878793119010.jpg"
  title = encodeURIComponent ""
  text = encodeURIComponent "My Duggar name is #{name} Duggar! What's yours?"
  app_id = "1619332488296427"
  url = "https://www.facebook.com/dialog/feed?description=#{description}&picture=#{picture}&name=#{text}&link=#{encodeURIComponent post_url}&app_id=#{app_id}&display=page&redirect_uri=#{encodeURIComponent post_url}"
  window.open url

$('.twitter').on 'click', ->
  text = "My Duggar name is #{name} Duggar! What's yours?!?!?!?!?!?!?!??!?!?!?!?!??!11 #MyDuggarName "
  link = "https://twitter.com/home?status=#{encodeURIComponent text}#{encodeURIComponent post_url}"
  window.open link
