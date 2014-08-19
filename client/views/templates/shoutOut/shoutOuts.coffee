Template.shoutOuts.helpers

  messages: ->
    ShoutOuts.find({}, { sort: { timeStamp: -1 }})

  name: ->
    x = Meteor.users.findOne(this.owner)
    x.profile.name
  picture: ->
    x = Meteor.users.findOne(this.owner)
    x.profile.picturesquare

Template.shoutOuts.events "click .shout-out-button": (e) ->
  e.preventDefault()
  if Meteor.user()
    message = $(".shout-out-input").val()
    userId = Meteor.user()._id
    # console.log Date.now()
    actualDay = moment(new Date())._d
    actualDay = actualDay.toString()
    actualDay = actualDay.substring 4,15
    timeStamp = Date.now()
    insertInfo =
      "owner": userId
      "content": message
      "actualDay": actualDay
      "timeStamp": timeStamp

    Meteor.call 'insertShoutOut', insertInfo, (error, result) ->

    $(".shout-out-input").val('')

  else alert "please sign in first!"

Template.shoutOuts.events "keydown .shout-out-input": (e) ->
  if event.which is 13
    if Meteor.user()
      message = $(".shout-out-input").val()
      userId = Meteor.user()._id
      # console.log Date.now()
      actualDay = moment(new Date())._d
      actualDay = actualDay.toString()
      actualDay = actualDay.substring 4,15
      timeStamp = Date.now()
      insertInfo =
        "owner": userId
        "content": message
        "actualDay": actualDay
        "timeStamp": timeStamp

      Meteor.call 'insertShoutOut', insertInfo, (error, result) ->

      $(".shout-out-input").val('')

    else alert "please sign in first!"
