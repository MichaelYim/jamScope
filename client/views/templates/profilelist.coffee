Template.profilelist.helpers
  users: ->
    Meteor.users.find().fetch()


  # getInstruments: ->
  #   Instruments.find({owner:"#{this._id}"}).fetch()
  #   # console.log Session.get("selectedInstrument")

  filteredInstrument: ->
    Instruments.find({type: Session.get("selectedInstrument")}).fetch()