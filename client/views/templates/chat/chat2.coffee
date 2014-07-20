Template.chat2.rendered= ->
  cleanId = this.data.toString()
  thisId = '#'+ cleanId
  thisId = thisId.toString()
  $target = $(thisId).find('.panel-body-style')
  $target.animate
    scrollTop: $target.height() * 10
  , 0

  link = [Meteor.user()._id, cleanId].sort()
  link = link[0].concat(link[1])
  # object = Chatrooms.find({link:link}).fetch()
  # console.log object[0].messages.length + " say hiiii"



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
  message = $(thisId).find('.chat_input').val()
  if message != ""
    link = [Meteor.user()._id, cleanId].sort()
    link = link[0].concat(link[1])
    object = Chatrooms.find({link: link}).fetch()
    updateInfoUnit =
      "owner": Meteor.user()._id
      "content": message
      "timestamp": "x"
      "read": false

    object[0].messages.push(updateInfoUnit)
    updateInfoUnit = object[0].messages
    updateInfo =
      "messages":
        updateInfoUnit
    currentTarget = object[0]._id
    Meteor.call 'updateChatrooms', updateInfo, currentTarget, (error, result) ->

    $target = $(thisId).find('.panel-body-style')
    $target.animate
      scrollTop: $target.height() * 10
    , 100
    $(thisId).find('.chat_input').val('')

Template.chat2.events "keydown .chat_input": (event) ->
  if event.which is 13
    cleanId = this.toString()
    thisId = '#'+ this
    thisId = thisId.toString()
    message = $(thisId).find('.chat_input').val()
    if message != ""
      link = [Meteor.user()._id, cleanId].sort()
      link = link[0].concat(link[1])
      object = Chatrooms.find({link: link}).fetch()
      updateInfoUnit =
        "owner": Meteor.user()._id
        "content": message
        "timestamp": "x"
        "read": false

      object[0].messages.push(updateInfoUnit)
      updateInfoUnit = object[0].messages
      updateInfo =
        "messages":
          updateInfoUnit
      currentTarget = object[0]._id
      Meteor.call 'updateChatrooms', updateInfo, currentTarget, (error, result) ->

      $target = $(thisId).find('.panel-body-style')
      $target.animate
        scrollTop: $target.height() * 10
      , 100
      $(thisId).find('.chat_input').val('')

Template.chat2.events "click .icon_minim": (e) ->
  cleanId = this.toString()
  thisId = '#'+ this
  thisId = thisId.toString()



  if $(thisId).hasClass("panel-collapsed")
    # $(".chatlisting").removeClass("panel-collapsed")
    # $("#chatlist-box").find(".glyphicon").removeClass("glyphicon-plus").addClass("glyphicon-minus")
    # $("#chatlist-box").find(".panel-body").slideDown()

  else
    console.log "this is lese"
    $(thisId).addClass("panel-collapsed")
    $(thisId).find(".glyphicon").removeClass("glyphicon-minus").addClass("glyphicon-plus")
    $(thisId).find(".panel-body").slideUp()
    $(thisId).find(".panel-footer2").addClass("hide")
