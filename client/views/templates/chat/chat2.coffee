Template.chat2.rendered = ->
  # scroll to bottom after opening a chat box
  if (!this.rendered)
    cleanId = this.data.toString()
    thisId = '#'+ cleanId
    thisId = thisId.toString()
    $target = $(thisId).find('.panel-body-style')
    $target.animate
      scrollTop: $target.height() * 30000
    , 0

    link = [Meteor.user()._id, cleanId].sort()
    link = link[0].concat(link[1])
  # scroll to bottom every time the number of messages change
    Deps.autorun ->
      chatroom = Chatrooms.findOne({link:link})
      messageLength = chatroom.messages.length
      if messageLength
        $target.animate
          scrollTop: $target.height() * 30000
        , 0
        setTimeout (->
          $target.animate
            scrollTop: $target.height() * 30000
          , 0
        ), 100

Template.chat2.helpers
  thisUser: -> #target user ID
    x = this.toString()
    y = Meteor.users.find(x).fetch()
    y[0]

  thisChat: -> #target chat
    x = this.toString()
    link = [Meteor.user()._id, x].sort()
    link = link[0].concat(link[1])
    object = Chatrooms.find({link: link}).fetch()
    object[0]

  mine: -> #check if current user ID is equal to target user ID
    this.owner == Meteor.user()._id

  picture: -> #profile picture of target user ID
    x = this.owner.toString()
    user = Meteor.users.find(x).fetch()
    user[0].profile.picturesquare

Template.chat2.events "click .msg-btn": (e) -> #on click of user message button
  e.preventDefault()
  cleanId = this.toString()
  thisId = '#'+ this
  thisId = thisId.toString()
  userId = Meteor.user()._id
  message = $(thisId).find('.chat_input').val()
  link = [userId, cleanId].sort()
  link = link[0].concat(link[1])
  object = Chatrooms.find({link: link}).fetch()
  byId = object[0]._id
  if message != ""

    if userId == object[0].user1 #run this code if current user is identified as "user1" in chat database
      updateInfoUnit =
        "owner": userId
        "content": message
        "timestamp": "x"
        "read": false

      updateNotify2 = #toggle notification for user 2
        "notification2":1

      updateMessage = #add message to chat collection
        "messages": updateInfoUnit

      currentTarget = object[0]._id
      $target = $(thisId).find('.panel-body-style')
      #make actual server call to make above changes
      Meteor.call 'messagePush2', updateMessage, currentTarget, updateNotify2, (error, result) ->

      $(thisId).find('.chat_input').val('') #clear chatbox after send

    else if userId == object[0].user2 #run this code if current user identified as "user2" in chat database
      updateInfoUnit =
        "owner": userId
        "content": message
        "timestamp": "x"
        "read": false

      updateNotify2 = #toggle notification for user 1
        "notification1":1

      updateMessage = #add message to chat collection
        "messages": updateInfoUnit

      currentTarget = object[0]._id
      #make actual server call to make above changes
      Meteor.call 'messagePush2', updateMessage, currentTarget, updateNotify2, (error, result) ->

      $(thisId).find('.chat_input').val('') #clear chatbox after send

Template.chat2.events "keydown .chat_input": (event) ->
  if event.which is 13 #if enter key is pressed
    cleanId = this.toString()
    thisId = '#'+ this
    thisId = thisId.toString()
    userId = Meteor.user()._id
    message = $(thisId).find('.chat_input').val()
    link = [userId, cleanId].sort()
    link = link[0].concat(link[1])
    object = Chatrooms.find({link: link}).fetch()
    byId = object[0]._id
    if message != ""
      if userId == object[0].user1
        updateInfoUnit =
          "owner": userId
          "content": message
          "timestamp": "x"
          "read": false

        updateNotify2 =
          "notification2":1

        updateMessage =
          "messages": updateInfoUnit

        currentTarget = object[0]._id
        Meteor.call 'messagePush2', updateMessage, currentTarget, updateNotify2, (error, result) ->
        $(thisId).find('.chat_input').val('')

      else if userId == object[0].user2
        updateInfoUnit =
        "owner": userId
        "content": message
        "timestamp": "x"
        "read": false

        updateNotify2 =
          "notification1":1

        updateMessage =
          "messages": updateInfoUnit

        currentTarget = object[0]._id
        Meteor.call 'messagePush2', updateMessage, currentTarget, updateNotify2, (error, result) ->

        $(thisId).find('.chat_input').val('')
        $target = $(thisId).find('.panel-body-style')

Template.chat2.events "click .icon_minim": (e) -> #closing a chatbox
  cleanId = this.toString()
  thisId = '#'+ this
  thisId = thisId.toString()


  if $(thisId).hasClass("panel-collapsed")
    $(thisId).removeClass("panel-collapsed")
    $(thisId).find(".glyphicon").removeClass("glyphicon-plus").addClass("glyphicon-minus")
    $(thisId).find(".panel-body").show()
    $(thisId).find(".panel-footer2").show()
    $(thisId).find(".panel").css({"margin-top":"0"})


  else
    $(thisId).addClass("panel-collapsed")
    $(thisId).find(".glyphicon").removeClass("glyphicon-minus").addClass("glyphicon-plus")
    $(thisId).find(".panel-body").hide()
    $(thisId).find(".panel-footer2").hide()
    $(thisId).find(".panel").css({"margin-top":"80%"})

Template.chat2.events "click .icon_close": (e) ->
  cleanId = this.toString()

  sessionArray = Session.get("chatBoxArray") #gets rid of that chatbox's user ID in session array
  sessionArray = _.filter(sessionArray, (x) ->
        x != cleanId
      )
  Session.set("chatBoxArray", sessionArray)


