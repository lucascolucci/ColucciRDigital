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
      saveIfNotReloaded "home"

  if window.location.href.split("/")[4] == "about"
    if !sessionStorage.pages?
      sessionStorage.pages = "about"
    else
      saveIfNotReloaded "about"

  if window.location.href.split("/")[4] == "contact"
    if !sessionStorage.pages?
      sessionStorage.pages = "contact"
    else
      saveIfNotReloaded "contact"

  if window.location.href.split("/")[4] == "price"
    if !sessionStorage.pages?
      sessionStorage.pages = "price"
    else
      saveIfNotReloaded "price"

  if window.location.href.split("/")[4] == "profile"
    if !sessionStorage.pages?
      sessionStorage.pages = "profile"
    else
      saveIfNotReloaded "profile"
    document.getElementById("path").innerHTML = sessionStorage.pages


saveIfNotReloaded = (string) ->
  array = sessionStorage.pages.split(" -> ")
  equal = array[array.length - 1] == string
  if !equal
    sessionStorage.pages = sessionStorage.pages + " -> " + string

showProfile = (email) ->
  profileButton =  document.getElementById("profile")
  profileButton.setAttribute("href", "/main/profile")
  profileButton.innerHTML = email


hideEmailInput = () ->
  document.getElementById("content").innerHTML = "<h1 style='text-align: center;'>Thank you for informing your contact!</h1>"


runFunctions = () ->
  storePage()
  if sessionStorage.email?
    showProfile(sessionStorage.email)
    if window.location.href.split("/")[4] == "contact"
      hideEmailInput()

window.onload = runFunctions

@validateEmail = (email) ->
  at = email.indexOf("@");
  dot = email.lastIndexOf(".");
  result = true
  if (at<1 || dot<at+2 || dot+2>=email.length)
    result = false
  result

@validate = () ->
  result = document.getElementById("result")
  result.innerHTML = ""
  email = document.getElementById("email").value
  if validateEmail(email)
    sessionStorage.email = email
    showProfile(email)
    hideEmailInput()
    window.location.href = "/main/profile";

  else
    result.innerHTML = email + " is not valid :("
    result.setAttribute("style", "color: red")
