Meteor.methods insertInstrument: (insertInfo) ->
  Instruments.insert insertInfo


Meteor.methods updateThis: (updateInfo, currentTarget) ->
  console.log("This is the updateInfo:")
  console.log(updateInfo)
  console.log("This is the currentTarget:")
  console.log(currentTarget)
  Meteor.users.update currentTarget,
  $set:updateInfo
  console.log("This is the updated current user:")
  console.log(Meteor.user())

Meteor.methods updateThisSecondary: (updateInfo2, currentTarget2) ->
  Meteor.users.update currentTarget2,
  $set:updateInfo2

Meteor.methods updateThisAddToSet: (updateInfo, currentTarget) ->
  Meteor.users.update currentTarget,
  $addToSet:updateInfo

Meteor.methods updateBothUserPartners: (updateInfo, currentTarget, updateInfo2, currentTarget2) ->
  Meteor.users.update currentTarget,
  $set:updateInfo

  Meteor.users.update currentTarget2,
  $set:updateInfo2

Meteor.methods deleteInstrumentsInCollection: ->
  Instruments.remove({owner: Meteor.userId()})

Meteor.methods updateChatrooms: (updateInfo, currentTarget) ->
  console.log "updateInfo", updateInfo
  console.log "currentTarget", currentTarget
  Chatrooms.update currentTarget, $set:updateInfo




Meteor.methods insertChatroom: (insertInfo) ->
  Chatrooms.insert insertInfo