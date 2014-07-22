Meteor.methods insertInstrument: (insertInfo) ->
  Instruments.insert insertInfo


Meteor.methods updateThis: (updateInfo, currentTarget) ->
  Meteor.users.update currentTarget,
  $set:updateInfo


Meteor.methods deleteInstrumentsInCollection: ->
  Instruments.remove({owner: Meteor.userId()})

Meteor.methods updateChatrooms: (updateInfo, currentTarget) ->
  console.log "updateInfo", updateInfo
  console.log "currentTarget", currentTarget
  Chatrooms.update currentTarget, $set:updateInfo




Meteor.methods insertChatroom: (insertInfo) ->
  Chatrooms.insert insertInfo