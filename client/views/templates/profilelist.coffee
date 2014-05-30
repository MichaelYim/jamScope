Template.profilelist.helpers
  users: ->
    Meteor.users.find().fetch()
  # instrumentPrint: ->
  #   for profile
  #     console.log profile

  getInstruments: ->
    Instruments.find({owner:"#{this._id}"}).fetch()