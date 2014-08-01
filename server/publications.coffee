Meteor.publish "users", ->
  Meteor.users.find({}, {fields:{'services':0}})

Meteor.publish "instruments", ->
  Instruments.find()

Meteor.publish "instrumentList", ->
  InstrumentList.find()


Meteor.publish "chatrooms", ->
  Chatrooms.find()