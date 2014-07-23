# @currentTarget = ""
# @updateInfo = ""
Template.profilelist.rendered = ->
  Crater.dismissOverlay('.crater-overlay')

  if !Meteor.user()
    $('.well').attr("title", "sign in to chat!")



Template.profilelist.helpers

  users: ->
    if Session.get("selectedInstrument") == "all"
      Meteor.users.find()
    else
      eachInstr = Instruments.find({type: Session.get("selectedInstrument")}).fetch()
      userIds = eachInstr.map (instrument) -> instrument.owner
      Meteor.users.find({_id: { $in: userIds}})

  getInstruments: ->
    Instruments.find({owner:"#{this._id}"})

  notMyself: ->
    if Meteor.user()
      this._id != Meteor.user()._id

Template.profilelist.events "click .profileListUnit": (e) ->
  thisData = Meteor.users.findOne(e.currentTarget.id.substring(2))
  if e.target.type != "button"
    Crater.overlay "profilepop",
      data:
        thisData

Template.profilelist.events "click .openChat": (e) ->
  thisId = this._id
  cutId = Meteor.user()._id
  myDoc = Meteor.users.findOne(cutId)
  myDocId = myDoc._id
  Partner = Meteor.users.findOne(thisId)
  link = [myDoc._id, thisId].sort()
  link = link[0].concat(link[1])
  if Chatrooms.find({link:link}).fetch().length == 0
    insertInfo =
      "user1": myDocId,
      "user2": thisId,
      "link": link,
      "messages": []
      "notification1":0
      "notification2":0
    Meteor.call 'insertChatroom' ,insertInfo, (error, result) ->
      if result
        sessionArray = Session.get("chatBoxArray")
        if _.contains(sessionArray, thisId) == false
          if sessionArray.length >= 3
            sessionArray.shift()
            sessionArray.push(thisId)
            Session.set("chatBoxArray", sessionArray)
          else
            sessionArray.push(thisId)
            Session.set("chatBoxArray", sessionArray)
        else
  else
    sessionArray = Session.get("chatBoxArray")
    if _.contains(sessionArray, thisId) == false
      if sessionArray.length >= 3
        sessionArray.shift()
        sessionArray.push(thisId)
        Session.set("chatBoxArray", sessionArray)
      else
        sessionArray.push(thisId)
        Session.set("chatBoxArray", sessionArray)
    else

    ##create in your own User Document first
  newChatPartnersList = myDoc.profile.chatPartners
  if _.contains(newChatPartnersList, thisId)

  else

    currentTarget = Meteor.user()
    currentTargetId = Meteor.user()._id
    updateInfo =
      "profile.chatPartners": thisId
    Meteor.users.update({_id: currentTargetId}, {$addToSet:{ "profile.chatPartners":thisId}})

  ##create in the other person's User Document
  otherChatPartnersList = Partner.profile.chatPartners
  if _.contains(otherChatPartnersList, myDoc._id)
    console.log "they have it already"
  else
    otherChatPartnersList.push(myDoc._id)
    x = otherChatPartnersList
    currentTarget = Meteor.users.findOne(thisId)
    updateInfo =
      "profile.chatPartners": otherChatPartnersList
    Meteor.call 'updateThisSecondary' ,updateInfo, currentTarget, (error, result) ->
      console.log "this is from other isde " + result












