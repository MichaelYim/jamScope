Template.chatlist.helpers
  existingChatList: ->
    idList = Meteor.user().profile.chatPartners
    nameList = []
    for i in [0...idList.length]
      nameList.push(Meteor.users.findOne(idList[i]))
    nameList

Template.chatlist.events "click .user-tab": (e) ->
  link = [Meteor.user()._id, this._id].sort()
  link = link[0].concat(link[1])
  sessionArray = Session.get("chatBoxArray")

  # if _.contains(sessionArray, link) == false
  if sessionArray.length >= 3
    sessionArray.splice(0,1)
    sessionArray.push(link)
    Session.set("chatBoxArray", sessionArray)
  else
    sessionArray.push(link)
    Session.set("chatBoxArray", sessionArray)
  # else
  #   console.log "already exists"
  console.log Session.get("chatBoxArray")


