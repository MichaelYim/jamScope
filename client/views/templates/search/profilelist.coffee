Template.profilelist.rendered = ->
  Crater.dismissOverlay('.crater-overlay')

  if !Meteor.user()
    $('.well').attr("title", "sign in to chat!")

Template.profilelist.helpers

  users: ->
    if Session.get("selectedInstrument") == "all"
      Meteor.users.find()
    else
      eachInstr = Instruments.find({type: Session.get("selectedInstrument")}).fetch()
      userIds = eachInstr.map (instrument) -> instrument.owner
      Meteor.users.find({_id: { $in: userIds}})

  getInstruments: ->
    Instruments.find({owner:"#{this._id}"})

  notMyself: ->
    if Meteor.user()
      this._id != Meteor.user()._id

Template.profilelist.events "click .profileListUnit": (e) ->
  thisData = Meteor.users.findOne(e.currentTarget.id.substring(2))
  if e.target.type != "button"
    Crater.overlay "profilepop",
      data:
        thisData



  # console.log $("#e9").val()

  # current = Meteor.userId()
  # updateTemporary =
  #   if $("#e9").val() == null
  #     "profile.instrumentsPlayedTemporary":[]
  #   else
  #     "profile.instrumentsPlayedTemporary":$("#e9").val().sort()


  # Meteor.users.update current,
  #   $set:updateTemporary
