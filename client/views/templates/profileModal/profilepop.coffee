Template.profilepop.helpers

  getInstrumentsPop: ->
    Instruments.find({owner:"#{this._id}"})

  notMine: ->
    y = this._id
    y = y.toString()
    object = Meteor.users.findOne(y)
    object._id != Meteor.user()._id

  myProfile: ->
    y = this._id
    y = y.toString()
    object = Meteor.users.findOne(y)
    object._id == Meteor.user()._id

  fans: ->
    y = this._id
    y = y.toString()
    object = Meteor.users.find(y).fetch()
    object = object[0]
    fans = object.profile.fans.length

  hasSoundCloud: ->
    y = this._id
    y = y.toString()
    object = Meteor.users.find(y).fetch()
    object = object[0]
    console.log object.profile.soundCloud
    object.profile.soundCloud != null

  following: ->
    y = this._id
    y = y.toString()
    object = Meteor.users.find(y).fetch()
    object = object[0]
    following = object.profile.following.length

  followingAlready: ->
    y = this._id
    y = y.toString()
    object = Meteor.users.find(y).fetch()
    object = object[0]
    _.contains(object.profile.fans, Meteor.user()._id)

  video1Exists: ->
    y = this._id
    y = y.toString()
    object = Meteor.users.find(y).fetch()
    object = object[0]
    if object.profile.video1 != ""
      true
    else
      false

  video2Exists: ->
    y = this._id
    y = y.toString()
    object = Meteor.users.find(y).fetch()
    object = object[0]
    if object.profile.video2 != ""
      true
    else
      false

  eitherExists: ->
    y = this._id
    y = y.toString()
    object = Meteor.users.find(y).fetch()
    object = object[0]
    if object.profile.video1 == "" && object.profile.video2 ==""
      $(".videoList")
      false
    else
      true

  video1: ->
    y = this._id
    y = y.toString()
    object = Meteor.users.find(y).fetch()
    object = object[0]
    full = object.profile.video1
    full.substring(full.length-11)

  video2: ->
    y = this._id
    y = y.toString()
    object = Meteor.users.find(y).fetch()
    object = object[0]
    full = object.profile.video2
    full.substring(full.length-11)

Template.profilepop.events
  "click .follow-button": (e) ->
    e.preventDefault()
    currentUserId = Meteor.user()._id
    thisUser = Meteor.users.find(this._id).fetch()
    thisUser = thisUser[0]
    existingFans = thisUser.profile.fans
    if this._id != currentUserId
      if _.contains(existingFans, currentUserId) == false
        existingFans.push(currentUserId)
        updateInfo =
          "profile.fans": existingFans

        currentTarget = this._id
        Meteor.call 'updateThis', updateInfo, currentTarget, (error, result) ->

        existingFollowing = Meteor.user().profile.following
        existingFollowing.push(this._id)
        updateInfo =
          "profile.following": existingFollowing
        currentTarget = Meteor.user()._id
        Meteor.call 'updateThis', updateInfo, currentTarget, (error, result) ->

  "click #closeModalGlyph": (e) ->
    Crater.dismissOverlay('.crater-overlay')

  "click .modalEditButton": (e) ->
    Router.go("edit_form")

Template.profilepop.events
  "click .modalChatButton": (e) ->
    Crater.dismissOverlay('.crater-overlay')
    thisId = this._id
    myDoc = Meteor.user()
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
      console.log "you have their Id"
    else
      currentTarget = Meteor.user()
      currentTargetId = Meteor.user()._id
      updateInfo =
        "profile.chatPartners": thisId
      Meteor.users.update({_id: currentTargetId}, {$addToSet:{ "profile.chatPartners":thisId}})


    ##create in the other person's User Document
    otherChatPartnersList = Partner.profile.chatPartners
    if _.contains(otherChatPartnersList, myDoc._id)
      console.log "they have your Id"
    else
      console.log "trying to add to their Id"
      otherChatPartnersList.push(myDoc._id)
      currentTarget = Meteor.users.findOne(thisId)
      updateInfo =
        "profile.chatPartners": otherChatPartnersList
      Meteor.call 'updateThis' ,updateInfo, currentTarget, (error, result) ->
        console.log result + " this is the result from adding to their list"