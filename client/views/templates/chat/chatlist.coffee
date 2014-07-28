Template.chatlist.helpers
  existingChatList: ->
    idList = Meteor.user().profile.chatPartners
    nameList = []
    for i in [0...idList.length]
      nameList.push(Meteor.users.findOne(idList[i]))
    nameList

  notify: ->
    thisId = this._id
    userId = Meteor.user()._id
    link = [userId,thisId].sort()
    link = link[0].concat(link[1])
    chatObject = Chatrooms.findOne({link:link})
    sessionArray = Session.get("chatBoxArray")
    if userId == chatObject.user1

      if _.contains(sessionArray, chatObject.user2)
        updateInfo =
          "notification1":0
        currentTarget = Chatrooms.findOne({link:link})
        Meteor.call 'updateChatrooms', updateInfo, currentTarget, (error, result) ->

      chatObject.notification1 == 1

    else if userId == chatObject.user2

      if _.contains(sessionArray, chatObject.user1)
        updateInfo =
          "notification2":0
        currentTarget = Chatrooms.findOne({link:link})
        Meteor.call 'updateChatrooms', updateInfo, currentTarget, (error, result) ->

      chatObject.notification2 == 1


Template.chatlist.events "click .user-tab": (e) ->

  if $(e.target).attr('class') == undefined || $(e.target).attr('class')[0]!= "g"
    thisId = this._id

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
    thisId = this._id
    console.log Meteor.user().profile.chatPartners
    newList = _.reject(Meteor.user().profile.chatPartners, (eachOne) ->
      eachOne == thisId)
    console.log newList

    currentTarget = Meteor.user()
    updateInfo =
      "profile.chatPartners": newList
    Meteor.users.update({_id: Meteor.user()._id}, {$set:{ "profile.chatPartners":newList}})




Template.chatlist.events "click .list-minimize-button": (e) ->
  if $(".chatlisting").hasClass("panel-collapsed")
    $(".chatlisting").removeClass("panel-collapsed")
    $("#chatlist-box").find(".glyphicon").removeClass("glyphicon-plus").addClass("glyphicon-minus")
    $("#chatlist-box").find(".panel-body").slideDown()
    $("#chatlist-box").find(".panel-heading").css({"margin-bottom":"9px"})
    $("#chatlist-box").find(".panel-heading").css({"margin-bottom":"0"})

  else
    $(".chatlisting").addClass("panel-collapsed")
    $("#chatlist-box").find(".glyphicon").removeClass("glyphicon-minus").addClass("glyphicon-plus")
    $("#chatlist-box").find(".panel-body").slideUp()
    $("#chatlist-box").find(".panel-heading").css({"margin-bottom":"9px"})

Template.chatlist.rendered = ->
  $(".user-tab").hover (->
    $(this).find(".close-x").removeClass("hide")
  ), ->
    $(this).find(".close-x").addClass("hide")




