Meteor.publish "users", ->
  Meteor.users.find()

Meteor.publish "user", (userId) ->
  Meteor.users.find
   _id: userId

Meteor.publish "instruments", ->
  Instruments.find()

Meteor.publish "instrumentList", ->
  InstrumentList.find()

Meteor.methods deleteInstrumentsInCollection: ->
  Instruments.remove({owner: Meteor.userId()})

