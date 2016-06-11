# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

sleep = (ms) ->
  start = new Date().getTime()
  continue while new Date().getTime() - start < ms

storePage = () ->
  if window.location.href.split("/")[4] == "home"
      if !sessionStorage.pages?
        sessionStorage.pages = "home"
      else
        sessionStorage.pages = sessionStorage.pages + " -> home"

  if window.location.href.split("/")[4] == "about"
    if !sessionStorage.pages?
      sessionStorage.pages = "about"
    else
      sessionStorage.pages = sessionStorage.pages + " -> about"
    document.getElementById("path").innerHTML = sessionStorage.pages

  if window.location.href.split("/")[4] == "contact"
    if !sessionStorage.pages?
      sessionStorage.pages = "contact"
    else
      sessionStorage.pages = sessionStorage.pages + " -> contact"

  if window.location.href.split("/")[4] == "price"
    if !sessionStorage.pages?
      sessionStorage.pages = "price"
    else
      sessionStorage.pages = sessionStorage.pages + " -> price"

window.onload = storePage

