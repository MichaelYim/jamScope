Template.profilepop.helpers

  getInstrumentsPop: ->
    Instruments.find({owner:"#{this._id}"})

Template.profilepop.events
  "click .follow-button": (e) ->
    e.preventDefault()

    updateFans =
      "profile.fans": this.profile.fans + 1

    currentTarget = this._id
    Meteor.call 'updateFans', updateFans, currentTarget, (error, result) ->

    $(".fan-number").text(this.profile.fans + 1)

    console.log this.profile.fans

  "click #closeModalGlyph": (e) ->
    Crater.dismissOverlay('.crater-overlay')


