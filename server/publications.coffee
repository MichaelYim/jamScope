Meteor.publish "users", ->
  Meteor.users.find()

Meteor.publish "instruments", ->
  Instruments.find()
