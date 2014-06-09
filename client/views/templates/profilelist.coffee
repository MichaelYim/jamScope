Template.profilelist.helpers
  users: ->
    if Session.get("selectedInstrument") == "all"
      Meteor.users.find().fetch()
    else
      eachInstr = Instruments.find({type: Session.get("selectedInstrument")}).fetch()
      userIds = eachInstr.map (instrument) -> instrument.owner
      Meteor.users.find({_id: { $in: userIds}}).fetch()

  getInstruments: ->
    Instruments.find({owner:"#{this._id}"}).fetch()
