Template.edit_form.rendered = ->

  # console.log Meteor.user()
  # $("#e9").select2('data', Session.get("datastore"))
  $("#e9").select2()

  # @existingInstruments = Meteor.users.findOne(Meteor.user()._id).profile.instrumentsPlayed

  # console.log @existingInstruments


Template.edit_form.helpers

  instrumentSelection: ->
    InstrumentList.find().fetch()

Template.edit_form.events "submit form": (e) ->
  e.preventDefault()

  if !Meteor.user()
    throw new Meteor.Erorr("000", "You must be logged in");
  else

  $target = $(e.target)
  name = $target.find('[name=name]').val()
  current = Meteor.userId()

  updateInfo =
    "profile.name": $target.find("[name=name]").val()
    "profile.email": $target.find("[name=email]").val()
    "profile.aboutMe": $target.find("[name=aboutMe]").val()
    # "profile.instrumentsPlayed": $("#e9").val()


  Meteor.users.update current,
    $set: updateInfo

  console.log Meteor.user().profile.instrumentsPlayed

































