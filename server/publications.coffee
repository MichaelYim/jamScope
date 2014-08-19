Meteor.publish "users", ->
  Meteor.users.find({}, {fields:{'services':0}})

Meteor.publish "instruments", ->
  Instruments.find()

Meteor.publish "instrumentList", ->
  InstrumentList.find()


Meteor.publish "chatrooms", ->
  return @ready() unless @userId
  Chatrooms.find
    $or: [
      {user1: @userId}
      {user2: @userId}
    ]

Meteor.publish "shoutouts", ->
  ShoutOuts.find()


