Template.chatlist.helpers
  existingChatList: ->
    idList = Meteor.user().profile.chatPartners
    nameList = []
    for i in [0...idList.length]
      nameList.push(Meteor.users.findOne(idList[i]))
    nameList

Template.chatlist.events "click .user-tab": (e) ->
  # console.log "clicking"
  link = this._id

  sessionArray = Session.get("chatBoxArray")
  # console.log sessionArray

  if _.contains(sessionArray, link) == false
    if sessionArray.length >= 3
      sessionArray.shift()
      sessionArray.push(link)
      # console.log "remove first and add " + sessionArray
      Session.set("chatBoxArray", sessionArray)
    else
      sessionArray.push(link)
      Session.set("chatBoxArray", sessionArray)
      # console.log "add " + sessionArray

  else
    # console.log "already exists"
    # console.log Session.get("chatBoxArray")
    # console.log sessionArray


