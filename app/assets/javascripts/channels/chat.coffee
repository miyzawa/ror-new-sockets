$(document).on 'keypress', '[data-behavior~=chat_input]', (event) ->
  if event.keyCode is 13 # return = send
    App.chat.speak event.target.value
    event.target.value = ''
    event.preventDefault()
