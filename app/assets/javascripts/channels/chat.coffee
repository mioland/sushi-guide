getParam = (name, url) ->
  if !url
    url = window.location.href
  name = name.replace(/[\[\]]/g, "\\$&")
  regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)")
  results = regex.exec(url);
  if !results 
    return null
  if !results[2]
    return ''
  return decodeURIComponent(results[2].replace(/\+/g, " "))

getLastDic = (url) ->
  if !url
    url = window.location.href
  result = url.split("/")
  return result[result.length - 1].split("&")[0]

App.chat = App.cable.subscriptions.create { channel: "chatChannel",room:getParam('room'), rec:getLastDic() },
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    console.log(data);
    appendStr = ""
    if(data['message']['pic'])
      appendStr = """
        <li class='chat-item'>
          <div class='table-row'>
            <div class="chat-sender-img">
              <img src="#{data['message']['sender_pic']}">
            </div>
            <div class="chat-container">
              #{data['message']['sender_name']}
              <br>
              <span class="chat-content">
                #{data['message']['chat']}
                <br>
                <span class="chat-img"><img src="#{data['message']['pic']}"></span>
              </span>
            </div>
          </div>
        </li>
      """
    else
      appendStr = """
        <li class='chat-item'>
          <div class='table-row'>
            <div class="chat-sender-img">
              <img src="#{data['message']['sender_pic']}">
            </div>
            <div class="chat-container">
              <span>#{data['message']['sender_name']}</span>
              <br>
              <span class="chat-content">#{data['message']['chat']}
            </div>
          </div>
        </li>
      """ 
    $('.chat-list').append appendStr
  speak:(message) ->
    @perform 'speak', message: message

$(document).on 'click','#chat-submit',(event) ->
    text = $.trim($(".chat").val())
    has_text = if text.length > 0 then true else false
    picture = $("#file_input")
    console.log("きてる？")
    console.log(picture)
    has_picture = if picture.get(0).files.length > 0 then true else false
    console.log(has_picture)
    if has_text or has_picture
      if has_picture
        console.log("mkoko")
        file_name = picture.get(0).files[0].name
        reader = new FileReader()
        reader.readAsDataURL picture.get(0).files[0]
        reader.addEventListener "loadend", ->
          message = {
            chat: text,
            pic: reader.result
          }
          console.log(message)
          console.log(App.chat)
          App.chat.speak message 
      else
        message = {
          chat: text
          pic: ""
        }
        console.log(message)
        console.log(App.chat)
        App.chat.speak message
    $(".chat").val('')
    $("#file_input").val('')
    event.preventDefault()