Template.chat2.rendered = ->
  if (!this.rendered)
    cleanId = this.data.toString()
    thisId = '#'+ cleanId
    thisId = thisId.toString()
    $target = $(thisId).find('.panel-body-style')
    $target.animate
      scrollTop: $target.height() * 3000
    , 0

    link = [Meteor.user()._id, cleanId].sort()
    link = link[0].concat(link[1])



    Deps.autorun ->
      chatroom = Chatrooms.findOne({link:link})
      messageLength = chatroom.messages.length
      if messageLength
        $target.animate
          scrollTop: $target.height() * 3000
        , 300

Template.chat2.helpers
  thisUser: ->
    x = this.toString()
    y = Meteor.users.find(x).fetch()
    y[0]

  thisChat: ->
    x = this.toString()
    link = [Meteor.user()._id, x].sort()
    link = link[0].concat(link[1])
    object = Chatrooms.find({link: link}).fetch()
    object[0]

  mine: ->
    this.owner == Meteor.user()._id

  picture: ->
    x = this.owner.toString()
    user = Meteor.users.find(x).fetch()
    user[0].profile.picturesquare

Template.chat2.events "change .panel-body-style": (e)->
  console.log this
  console.log "this changed"
  console.log e

Template.chat2.events "click .msg-btn": (e) ->
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

    if userId == object[0].user1
      updateInfoUnit =
        "owner": userId
        "content": message
        "timestamp": "x"
        "read": false


      object[0].messages.push(updateInfoUnit)
      updateInfoUnit = object[0].messages
      updateInfo =
        "messages": updateInfoUnit
        "notification2":1
      currentTarget = object[0]._id
      Meteor.call 'updateChatrooms', updateInfo, currentTarget, (error, result) ->

      $(thisId).find('.chat_input').val('')
      $target = $(thisId).find('.panel-body-style')
      $target.animate
        scrollTop: $target.height() * 3000
      , 300

      Deps.autorun ->
        chatroom = Chatrooms.findOne({link:link})
        messageLength = chatroom.messages.length
        if messageLength
          $target.animate
            scrollTop: $target.height() * 3000
          , 300

    else if userId == object[0].user2
      updateInfoUnit =
        "owner": userId
        "content": message
        "timestamp": "x"
        "read": false

      object[0].messages.push(updateInfoUnit)
      updateInfoUnit = object[0].messages
      updateInfo =
        "messages": updateInfoUnit
        "notification1":1
      currentTarget = object[0]._id
      Meteor.call 'updateChatrooms', updateInfo, currentTarget, (error, result) ->

      $(thisId).find('.chat_input').val('')
      $target = $(thisId).find('.panel-body-style')
      $target.animate
        scrollTop: $target.height() * 3000
      , 300

      Deps.autorun ->
        chatroom = Chatrooms.findOne({link:link})
        messageLength = chatroom.messages.length
        if messageLength
          $target.animate
            scrollTop: $target.height() * 3000
          , 300

Template.chat2.events "keydown .chat_input": (event) ->
  if event.which is 13
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


        object[0].messages.push(updateInfoUnit)
        updateInfoUnit = object[0].messages
        updateInfo =
          "messages": updateInfoUnit
          "notification2":1
        currentTarget = object[0]._id
        Meteor.call 'updateChatrooms', updateInfo, currentTarget, (error, result) ->

        $(thisId).find('.chat_input').val('')
        $target = $(thisId).find('.panel-body-style')
        $target.animate
          scrollTop: $target.height() * 3000
        , 300

        Deps.autorun ->
          chatroom = Chatrooms.findOne({link:link})
          messageLength = chatroom.messages.length
          if messageLength
            $target.animate
              scrollTop: $target.height() * 3000
            , 300

      else if userId == object[0].user2
        updateInfoUnit =
          "owner": userId
          "content": message
          "timestamp": "x"
          "read": false

        object[0].messages.push(updateInfoUnit)
        updateInfoUnit = object[0].messages
        updateInfo =
          "messages": updateInfoUnit
          "notification1":1
        currentTarget = object[0]._id
        Meteor.call 'updateChatrooms', updateInfo, currentTarget, (error, result) ->

        $(thisId).find('.chat_input').val('')
        $target = $(thisId).find('.panel-body-style')
        $target.animate
          scrollTop: $target.height() * 3000
        , 300

        Deps.autorun ->
          chatroom = Chatrooms.findOne({link:link})
          messageLength = chatroom.messages.length
          if messageLength
            $target.animate
              scrollTop: $target.height() * 3000
            , 300
          console.log $target.height()
          console.log "the one on top"


Template.chat2.events "click .icon_minim": (e) ->
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

  sessionArray = Session.get("chatBoxArray")
  sessionArray = _.filter(sessionArray, (x) ->
        x != cleanId
      )
  Session.set("chatBoxArray", sessionArray)


