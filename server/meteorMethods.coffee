Meteor.methods insertInstrument: (insertInfo) ->
  Instruments.insert insertInfo


Meteor.methods updateThis: (updateInfo, currentTarget) ->
  Meteor.users.update currentTarget,
  $set:updateInfo


Meteor.methods deleteInstrumentsInCollection: ->
  Instruments.remove({owner: Meteor.userId()})

Meteor.methods updateFans: (updateFans,currentTarget) ->
    Meteor.users.update currentTarget,
    $set: updateFans

