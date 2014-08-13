Meteor.methods insertInstrument: (insertInfo) ->
  Instruments.insert insertInfo


Meteor.methods updateThis: (updateInfo, currentTarget) ->
  Meteor.users.update currentTarget,
  $set:updateInfo


Meteor.methods updateThisSecondary: (updateInfo2, currentTarget2) ->
  Meteor.users.update currentTarget2,
  $set:updateInfo2

Meteor.methods updateThisAddToSet: (updateInfo, currentTarget) ->
  Meteor.users.update currentTarget,
  $addToSet:updateInfo

  Meteor.users.update currentTarget2,
  $set:updateInfo2

Meteor.methods messagePush2: (updateMessage, currentTarget, updateNotify2) ->
  Chatrooms.update currentTarget,
  $push:updateMessage

  Chatrooms.update currentTarget,
  $set:updateNotify2


Meteor.methods deleteInstrumentsInCollection: ->
  Instruments.remove({owner: Meteor.userId()})

Meteor.methods updateChatrooms: (updateInfo, currentTarget) ->
  Chatrooms.update currentTarget, $set:updateInfo

Meteor.methods insertChatroom: (insertInfo) ->
  Chatrooms.insert insertInfo