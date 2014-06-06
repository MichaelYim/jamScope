Template.profilelist.helpers
  users: ->
    Meteor.users.find().fetch()

  getInstruments: ->
    Instruments.find({owner:"#{this._id}"}).fetch()
    # console.log Session.get("selectedInstrument")

  filteredInstrument: ->
    Instruments.find({type: Session.get("selectedInstrument")}).fetch()

  other: ->
    # for each instrument (with type selectedInstrument), find its ownerID
    eachInstr = Instruments.find({type: Session.get("selectedInstrument")}).fetch()
    userIds = eachInstr.map (instrument) -> instrument.owner
    Meteor.users.find({_id: { $in: userIds}}).fetch()


    #match those ownerIDs with IDs in the Users Collection -> list the users
    # that play this instrument




    # console.log(eachInstr)


  #