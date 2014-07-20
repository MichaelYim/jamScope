Template.chatlist.helpers
  existingChatList: ->
    idList = Meteor.user().profile.chatPartners
    nameList = []
    for i in [0...idList.length]
      nameList.push(Meteor.users.findOne(idList[i]))
    nameList



Template.chatlist.events "click .user-tab": (e) ->
  link = this._id

  sessionArray = Session.get("chatBoxArray")

  if _.contains(sessionArray, link) == false
    if sessionArray.length >= 3
      sessionArray.shift()
      sessionArray.push(link)
      Session.set("chatBoxArray", sessionArray)
    else
      sessionArray.push(link)
      Session.set("chatBoxArray", sessionArray)
  else


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






